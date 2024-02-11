(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707657572)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234304_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240865 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234304_ __tmp240865))
           (let ()
             (declare (not safe))
             (table-set! _tbl234304_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234304_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234304_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234304_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl234304_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx234287_ . _args234289_)
        (let ((__tmp240867
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234289_)
                     (gxc#compile-e__0 _stx234287_)
                     (let ((_arg1234294_ (car _args234289_))
                           (_rest234296_ (cdr _args234289_)))
                       (if (null? _rest234296_)
                           (gxc#compile-e__1 _stx234287_ _arg1234294_)
                           (let ((_arg2234299_ (car _rest234296_))
                                 (_rest234301_ (cdr _rest234296_)))
                             (if (null? _rest234301_)
                                 (gxc#compile-e__2
                                  _stx234287_
                                  _arg1234294_
                                  _arg2234299_)
                                 (apply gxc#compile-e
                                        _stx234287_
                                        _arg1234294_
                                        _arg2234299_
                                        _rest234301_))))))))
              (__tmp240866 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp240867
           gxc#current-compile-methods
           __tmp240866))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl234284_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240868 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234284_ __tmp240868))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234284_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234284_ '%#call gxc#basic-expression-type-call%))
           _tbl234284_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx234267_ . _args234269_)
        (let ((__tmp240870
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234269_)
                     (gxc#compile-e__0 _stx234267_)
                     (let ((_arg1234274_ (car _args234269_))
                           (_rest234276_ (cdr _args234269_)))
                       (if (null? _rest234276_)
                           (gxc#compile-e__1 _stx234267_ _arg1234274_)
                           (let ((_arg2234279_ (car _rest234276_))
                                 (_rest234281_ (cdr _rest234276_)))
                             (if (null? _rest234281_)
                                 (gxc#compile-e__2
                                  _stx234267_
                                  _arg1234274_
                                  _arg2234279_)
                                 (apply gxc#compile-e
                                        _stx234267_
                                        _arg1234274_
                                        _arg2234279_
                                        _rest234281_))))))))
              (__tmp240869 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp240870
           gxc#current-compile-methods
           __tmp240869))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234264_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240871 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234264_ __tmp240871))
           (let ()
             (declare (not safe))
             (table-set! _tbl234264_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234264_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234264_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234264_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234264_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234264_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234264_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234264_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234264_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234264_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234264_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234264_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl234264_ '%#set! gxc#collect-body-setq%))
           _tbl234264_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx234247_ . _args234249_)
        (let ((__tmp240873
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234249_)
                     (gxc#compile-e__0 _stx234247_)
                     (let ((_arg1234254_ (car _args234249_))
                           (_rest234256_ (cdr _args234249_)))
                       (if (null? _rest234256_)
                           (gxc#compile-e__1 _stx234247_ _arg1234254_)
                           (let ((_arg2234259_ (car _rest234256_))
                                 (_rest234261_ (cdr _rest234256_)))
                             (if (null? _rest234261_)
                                 (gxc#compile-e__2
                                  _stx234247_
                                  _arg1234254_
                                  _arg2234259_)
                                 (apply gxc#compile-e
                                        _stx234247_
                                        _arg1234254_
                                        _arg2234259_
                                        _rest234261_))))))))
              (__tmp240872 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp240873
           gxc#current-compile-methods
           __tmp240872))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl234244_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240874 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234244_ __tmp240874))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234244_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234244_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234244_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234244_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234244_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234244_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234244_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234244_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234244_ '%#ref gxc#basic-expression-type-ref%))
           _tbl234244_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx234227_ . _args234229_)
        (let ((__tmp240876
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234229_)
                     (gxc#compile-e__0 _stx234227_)
                     (let ((_arg1234234_ (car _args234229_))
                           (_rest234236_ (cdr _args234229_)))
                       (if (null? _rest234236_)
                           (gxc#compile-e__1 _stx234227_ _arg1234234_)
                           (let ((_arg2234239_ (car _rest234236_))
                                 (_rest234241_ (cdr _rest234236_)))
                             (if (null? _rest234241_)
                                 (gxc#compile-e__2
                                  _stx234227_
                                  _arg1234234_
                                  _arg2234239_)
                                 (apply gxc#compile-e
                                        _stx234227_
                                        _arg1234234_
                                        _arg2234239_
                                        _rest234241_))))))))
              (__tmp240875 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp240876
           gxc#current-compile-methods
           __tmp240875))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl234224_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp240877 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl234224_ __tmp240877))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234224_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234224_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234224_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234224_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl234224_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx234207_ . _args234209_)
        (let ((__tmp240879
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234209_)
                     (gxc#compile-e__0 _stx234207_)
                     (let ((_arg1234214_ (car _args234209_))
                           (_rest234216_ (cdr _args234209_)))
                       (if (null? _rest234216_)
                           (gxc#compile-e__1 _stx234207_ _arg1234214_)
                           (let ((_arg2234219_ (car _rest234216_))
                                 (_rest234221_ (cdr _rest234216_)))
                             (if (null? _rest234221_)
                                 (gxc#compile-e__2
                                  _stx234207_
                                  _arg1234214_
                                  _arg2234219_)
                                 (apply gxc#compile-e
                                        _stx234207_
                                        _arg1234214_
                                        _arg2234219_
                                        _rest234221_))))))))
              (__tmp240878 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp240879
           gxc#current-compile-methods
           __tmp240878))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx234110_)
        (let* ((___stx238785238786_ _stx234110_)
               (_g234113234133_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238785238786_)))))
          (let ((___kont238787238788_
                 (lambda (_L234177_ _L234178_)
                   (let ((_sym234196_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234178_))))
                     (if (let ((__tmp240880 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp240880 _sym234196_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234196_))
                         (let ((_type234197234199_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L234177_))))
                           (if _type234197234199_
                               (let ((_type234202_ _type234197234199_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym234196_
                                  _type234202_))
                               '#f))))))
                (___kont238789238790_ (lambda () '#!void)))
            (let ((___match238818238819_
                   (lambda (_e234119234145_
                            _hd234118234148_
                            _tl234117234150_
                            _e234122234153_
                            _hd234121234156_
                            _tl234120234158_
                            _e234125234161_
                            _hd234124234164_
                            _tl234123234166_
                            _e234128234169_
                            _hd234127234172_
                            _tl234126234174_)
                     (let ((_L234177_ _hd234127234172_)
                           (_L234178_ _hd234124234164_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234178_))
                           (___kont238787238788_ _L234177_ _L234178_)
                           (___kont238789238790_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238785238786_))
                  (let ((_e234119234145_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238785238786_))))
                    (let ((_tl234117234150_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234119234145_)))
                          (_hd234118234148_
                           (let ()
                             (declare (not safe))
                             (##car _e234119234145_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234117234150_))
                          (let ((_e234122234153_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234117234150_))))
                            (let ((_tl234120234158_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234122234153_)))
                                  (_hd234121234156_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234122234153_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234121234156_))
                                  (let ((_e234125234161_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234121234156_))))
                                    (let ((_tl234123234166_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234125234161_)))
                                          (_hd234124234164_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234125234161_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234123234166_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234120234158_))
                                              (let ((_e234128234169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234120234158_))))
                                                (let ((_tl234126234174_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234128234169_)))
                                                      (_hd234127234172_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234128234169_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234126234174_))
                                                      (___match238818238819_
                                                       _e234119234145_
                                                       _hd234118234148_
                                                       _tl234117234150_
                                                       _e234122234153_
                                                       _hd234121234156_
                                                       _tl234120234158_
                                                       _e234125234161_
                                                       _hd234124234164_
                                                       _tl234123234166_
                                                       _e234128234169_
                                                       _hd234127234172_
                                                       _tl234126234174_)
                                                      (___kont238789238790_))))
                                              (___kont238789238790_))
                                          (___kont238789238790_))))
                                  (___kont238789238790_))))
                          (___kont238789238790_))))
                  (___kont238789238790_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx233966_)
        (let* ((___stx238821238822_ _stx233966_)
               (_g233969234000_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238821238822_)))))
          (let ((___kont238823238824_
                 (lambda (_L234082_ _L234083_)
                   (let ((_sym234099_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234083_))))
                     (if (let ((__tmp240881 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp240881 _sym234099_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234099_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym234099_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym234099_))
                             (let ((_type234100234102_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L234082_))))
                               (if _type234100234102_
                                   (let ((_type234105_ _type234100234102_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym234099_
                                      _type234105_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L234082_)))))
                (___kont238825238826_
                 (lambda (_L234029_ _L234030_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L234029_)))))
            (let ((___match238854238855_
                   (lambda (_e233975234050_
                            _hd233974234053_
                            _tl233973234055_
                            _e233978234058_
                            _hd233977234061_
                            _tl233976234063_
                            _e233981234066_
                            _hd233980234069_
                            _tl233979234071_
                            _e233984234074_
                            _hd233983234077_
                            _tl233982234079_)
                     (let ((_L234082_ _hd233983234077_)
                           (_L234083_ _hd233980234069_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234083_))
                           (___kont238823238824_ _L234082_ _L234083_)
                           (___kont238825238826_
                            _hd233983234077_
                            _hd233977234061_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238821238822_))
                  (let ((_e233975234050_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238821238822_))))
                    (let ((_tl233973234055_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233975234050_)))
                          (_hd233974234053_
                           (let ()
                             (declare (not safe))
                             (##car _e233975234050_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233973234055_))
                          (let ((_e233978234058_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233973234055_))))
                            (let ((_tl233976234063_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233978234058_)))
                                  (_hd233977234061_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233978234058_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233977234061_))
                                  (let ((_e233981234066_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233977234061_))))
                                    (let ((_tl233979234071_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233981234066_)))
                                          (_hd233980234069_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233981234066_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233979234071_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233976234063_))
                                              (let ((_e233984234074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233976234063_))))
                                                (let ((_tl233982234079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233984234074_)))
                                                      (_hd233983234077_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233984234074_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233982234079_))
                                                      (___match238854238855_
                                                       _e233975234050_
                                                       _hd233974234053_
                                                       _tl233973234055_
                                                       _e233978234058_
                                                       _hd233977234061_
                                                       _tl233976234063_
                                                       _e233981234066_
                                                       _hd233980234069_
                                                       _tl233979234071_
                                                       _e233984234074_
                                                       _hd233983234077_
                                                       _tl233982234079_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233969234000_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233969234000_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233976234063_))
                                              (let ((_e233995234021_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233976234063_))))
                                                (let ((_tl233993234026_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233995234021_)))
                                                      (_hd233994234024_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233995234021_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233993234026_))
                                                      (___kont238825238826_
                                                       _hd233994234024_
                                                       _hd233977234061_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233969234000_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233969234000_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233976234063_))
                                      (let ((_e233995234021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233976234063_))))
                                        (let ((_tl233993234026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233995234021_)))
                                              (_hd233994234024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233995234021_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233993234026_))
                                              (___kont238825238826_
                                               _hd233994234024_
                                               _hd233977234061_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233969234000_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233969234000_))))))
                          (let () (declare (not safe)) (_g233969234000_)))))
                  (let () (declare (not safe)) (_g233969234000_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx233751_)
        (letrec ((_collect-e233753_
                  (lambda (_hd233910_ _expr233911_)
                    (let* ((___stx238877238878_ _hd233910_)
                           (_g233914233924_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx238877238878_)))))
                      (let ((___kont238879238880_
                             (lambda (_L233944_)
                               (let ((_sym233955_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L233944_))))
                                 (if (let ((__tmp240882
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp240882 _sym233955_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym233955_))
                                     (let ((_type233956233958_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr233911_))))
                                       (if _type233956233958_
                                           (let ((_type233961_
                                                  _type233956233958_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym233955_
                                              _type233961_
                                              '#t))
                                           '#f))))))
                            (___kont238881238882_ (lambda () '#!void)))
                        (let ((___match238890238891_
                               (lambda (_e233919233936_
                                        _hd233918233939_
                                        _tl233917233941_)
                                 (let ((_L233944_ _hd233918233939_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L233944_))
                                       (___kont238879238880_ _L233944_)
                                       (___kont238881238882_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx238877238878_))
                              (let ((_e233919233936_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx238877238878_))))
                                (let ((_tl233917233941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233919233936_)))
                                      (_hd233918233939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233919233936_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233917233941_))
                                      (___match238890238891_
                                       _e233919233936_
                                       _hd233918233939_
                                       _tl233917233941_)
                                      (___kont238881238882_))))
                              (___kont238881238882_))))))))
          (let* ((_g233755233790_
                  (lambda (_g233756233787_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g233756233787_))))
                 (_g233754233907_
                  (lambda (_g233756233793_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g233756233793_))
                        (let ((_e233762233795_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g233756233793_))))
                          (let ((_hd233761233798_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233762233795_)))
                                (_tl233760233800_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233762233795_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233760233800_))
                                (let ((_e233765233803_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233760233800_))))
                                  (let ((_hd233764233806_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233765233803_)))
                                        (_tl233763233808_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233765233803_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd233764233806_))
                                        (let ((_g240883_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd233764233806_
                                                  '0))))
                                          (begin
                                            (let ((_g240884_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g240883_)
                                                         (##vector-length
                                                          _g240883_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g240884_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g240884_)))
                                            (let ((_target233766233811_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g240883_
                                                      0)))
                                                  (_tl233768233813_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g240883_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233768233813_))
                                                  (letrec ((_loop233769233816_
                                                            (lambda (_hd233767233819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr233773233821_
                             _hd233774233823_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233767233819_))
                          (let ((_e233770233826_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233767233819_))))
                            (let ((_lp-hd233771233829_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233770233826_)))
                                  (_lp-tl233772233831_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233770233826_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd233771233829_))
                                  (let ((_e233779233834_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd233771233829_))))
                                    (let ((_hd233778233837_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233779233834_)))
                                          (_tl233777233839_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233779233834_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233777233839_))
                                          (let ((_e233782233842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233777233839_))))
                                            (let ((_hd233781233845_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233782233842_)))
                                                  (_tl233780233847_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233782233842_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233780233847_))
                                                  (let ((__tmp240889
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd233781233845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr233773233821_)))
                (__tmp240888
                 (let ()
                   (declare (not safe))
                   (cons _hd233778233837_ _hd233774233823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop233769233816_
                                                     _lp-tl233772233831_
                                                     __tmp240889
                                                     __tmp240888))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233755233790_
                                                     _g233756233793_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233755233790_
                                             _g233756233793_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233755233790_ _g233756233793_)))))
                          (let ((_expr233775233850_
                                 (reverse _expr233773233821_))
                                (_hd233776233852_ (reverse _hd233774233823_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233763233808_))
                                (let ((_e233785233855_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233763233808_))))
                                  (let ((_hd233784233858_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233785233855_)))
                                        (_tl233783233860_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233785233855_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233783233860_))
                                        ((lambda (_L233863_
                                                  _L233864_
                                                  _L233865_)
                                           (for-each
                                            _collect-e233753_
                                            (let ((__tmp240885
                                                   (lambda (_g233885233888_
                                                            _g233886233890_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g233885233888_
                                                             _g233886233890_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp240885
                                                      '()
                                                      _L233865_))
                                            (let ((__tmp240886
                                                   (lambda (_g233892233895_
                                                            _g233893233897_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g233892233895_
                                                             _g233893233897_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp240886
                                                      '()
                                                      _L233864_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp240887
                                                   (lambda (_g233899233902_
                                                            _g233900233904_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g233899233902_
                                                             _g233900233904_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp240887
                                                      '()
                                                      _L233864_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L233863_)))
                                         _hd233784233858_
                                         _expr233775233850_
                                         _hd233776233852_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233755233790_ _g233756233793_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233755233790_ _g233756233793_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop233769233816_
                                                       _target233766233811_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233755233790_
                                                     _g233756233793_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g233755233790_ _g233756233793_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233755233790_ _g233756233793_)))))
                        (let ()
                          (declare (not safe))
                          (_g233755233790_ _g233756233793_))))))
            (declare (not safe))
            (_g233754233907_ _stx233751_)))))
    (define gxc#collect-type-call%
      (lambda (_stx233243_)
        (let* ((___stx238893238894_ _stx233243_)
               (_g233247233362_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx238893238894_)))))
          (let ((___kont238895238896_
                 (lambda (_L233701_ _L233702_ _L233703_ _L233704_ _L233705_)
                   (let ((__tmp240893
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233704_)))
                         (__tmp240892
                          (let () (declare (not safe)) (gx#stx-e _L233703_)))
                         (__tmp240891
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233702_)))
                         (__tmp240890
                          (let () (declare (not safe)) (gx#stx-e _L233701_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp240893
                      __tmp240892
                      __tmp240891
                      __tmp240890))))
                (___kont238897238898_
                 (lambda (_L233529_ _L233530_ _L233531_ _L233532_)
                   (let ((__tmp240896
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233531_)))
                         (__tmp240895
                          (let () (declare (not safe)) (gx#stx-e _L233530_)))
                         (__tmp240894
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233529_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp240896
                      __tmp240895
                      __tmp240894
                      '#f))))
                (___kont238899238900_
                 (lambda (_L233399_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp240897
                           (lambda (_g233412233415_ _g233413233417_)
                             (let ()
                               (declare (not safe))
                               (cons _g233412233415_ _g233413233417_)))))
                      (declare (not safe))
                      (foldr1 __tmp240897 '() _L233399_))))))
            (let* ((___match239150239151_
                    (lambda (_e233348233367_
                             _hd233347233370_
                             _tl233346233372_
                             ___splice238901238902_
                             _target233349233375_
                             _tl233351233377_)
                      (letrec ((_loop233352233380_
                                (lambda (_hd233350233383_ _expr233356233385_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233350233383_))
                                      (let ((_e233353233388_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233350233383_))))
                                        (let ((_lp-tl233355233393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233353233388_)))
                                              (_lp-hd233354233391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233353233388_))))
                                          (let ((__tmp240898
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233354233391_
                                                         _expr233356233385_))))
                                            (declare (not safe))
                                            (_loop233352233380_
                                             _lp-tl233355233393_
                                             __tmp240898))))
                                      (let ((_expr233357233396_
                                             (reverse _expr233356233385_)))
                                        (___kont238899238900_
                                         _expr233357233396_))))))
                        (let ()
                          (declare (not safe))
                          (_loop233352233380_ _target233349233375_ '())))))
                   (___match239030239031_
                    (lambda (_e233256233573_
                             _hd233255233576_
                             _tl233254233578_
                             _e233259233581_
                             _hd233258233584_
                             _tl233257233586_
                             _e233262233589_
                             _hd233261233592_
                             _tl233260233594_
                             _e233265233597_
                             _hd233264233600_
                             _tl233263233602_
                             _e233268233605_
                             _hd233267233608_
                             _tl233266233610_
                             _e233271233613_
                             _hd233270233616_
                             _tl233269233618_
                             _e233274233621_
                             _hd233273233624_
                             _tl233272233626_
                             _e233277233629_
                             _hd233276233632_
                             _tl233275233634_
                             _e233280233637_
                             _hd233279233640_
                             _tl233278233642_
                             _e233283233645_
                             _hd233282233648_
                             _tl233281233650_
                             _e233286233653_
                             _hd233285233656_
                             _tl233284233658_
                             _e233289233661_
                             _hd233288233664_
                             _tl233287233666_
                             _e233292233669_
                             _hd233291233672_
                             _tl233290233674_
                             _e233295233677_
                             _hd233294233680_
                             _tl233293233682_
                             _e233298233685_
                             _hd233297233688_
                             _tl233296233690_
                             _e233301233693_
                             _hd233300233696_
                             _tl233299233698_)
                      (let ((_L233701_ _hd233300233696_)
                            (_L233702_ _hd233291233672_)
                            (_L233703_ _hd233282233648_)
                            (_L233704_ _hd233273233624_)
                            (_L233705_ _hd233264233600_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L233705_
                               'bind-method!))
                            (___kont238895238896_
                             _L233701_
                             _L233702_
                             _L233703_
                             _L233704_
                             _L233705_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl233254233578_))
                                (let ((___splice238901238902_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl233254233578_
                                          '0))))
                                  (let ((_tl233351233377_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice238901238902_
                                            '1)))
                                        (_target233349233375_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice238901238902_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233351233377_))
                                        (___match239150239151_
                                         _e233256233573_
                                         _hd233255233576_
                                         _tl233254233578_
                                         ___splice238901238902_
                                         _target233349233375_
                                         _tl233351233377_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233247233362_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233247233362_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx238893238894_))
                  (let ((_e233256233573_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx238893238894_))))
                    (let ((_tl233254233578_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233256233573_)))
                          (_hd233255233576_
                           (let ()
                             (declare (not safe))
                             (##car _e233256233573_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233254233578_))
                          (let ((_e233259233581_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233254233578_))))
                            (let ((_tl233257233586_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233259233581_)))
                                  (_hd233258233584_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233259233581_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233258233584_))
                                  (let ((_e233262233589_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233258233584_))))
                                    (let ((_tl233260233594_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233262233589_)))
                                          (_hd233261233592_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233262233589_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233261233592_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233261233592_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233260233594_))
                                                  (let ((_e233265233597_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233260233594_))))
                                                    (let ((_tl233263233602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233265233597_)))
                                                          (_hd233264233600_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233265233597_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233263233602_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl233257233586_))
                      (let ((_e233268233605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233257233586_))))
                        (let ((_tl233266233610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233268233605_)))
                              (_hd233267233608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233268233605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd233267233608_))
                              (let ((_e233271233613_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd233267233608_))))
                                (let ((_tl233269233618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233271233613_)))
                                      (_hd233270233616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233271233613_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd233270233616_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd233270233616_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233269233618_))
                                              (let ((_e233274233621_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233269233618_))))
                                                (let ((_tl233272233626_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233274233621_)))
                                                      (_hd233273233624_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233274233621_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233272233626_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233266233610_))
                                                          (let ((_e233277233629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233266233610_))))
                    (let ((_tl233275233634_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233277233629_)))
                          (_hd233276233632_
                           (let ()
                             (declare (not safe))
                             (##car _e233277233629_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233276233632_))
                          (let ((_e233280233637_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233276233632_))))
                            (let ((_tl233278233642_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233280233637_)))
                                  (_hd233279233640_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233280233637_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233279233640_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd233279233640_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233278233642_))
                                          (let ((_e233283233645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233278233642_))))
                                            (let ((_tl233281233650_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233283233645_)))
                                                  (_hd233282233648_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233283233645_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233281233650_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233275233634_))
                                                      (let ((_e233286233653_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233275233634_))))
                (let ((_tl233284233658_
                       (let () (declare (not safe)) (##cdr _e233286233653_)))
                      (_hd233285233656_
                       (let () (declare (not safe)) (##car _e233286233653_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233285233656_))
                      (let ((_e233289233661_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233285233656_))))
                        (let ((_tl233287233666_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233289233661_)))
                              (_hd233288233664_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233289233661_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233288233664_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233288233664_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233287233666_))
                                      (let ((_e233292233669_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233287233666_))))
                                        (let ((_tl233290233674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233292233669_)))
                                              (_hd233291233672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233292233669_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233290233674_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233284233658_))
                                                  (let ((_e233295233677_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233284233658_))))
                                                    (let ((_tl233293233682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233295233677_)))
                                                          (_hd233294233680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233295233677_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233294233680_))
                                                          (let ((_e233298233685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233294233680_))))
                    (let ((_tl233296233690_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233298233685_)))
                          (_hd233297233688_
                           (let ()
                             (declare (not safe))
                             (##car _e233298233685_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233297233688_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd233297233688_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233296233690_))
                                  (let ((_e233301233693_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233296233690_))))
                                    (let ((_tl233299233698_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233301233693_)))
                                          (_hd233300233696_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233301233693_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233299233698_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233293233682_))
                                              (___match239030239031_
                                               _e233256233573_
                                               _hd233255233576_
                                               _tl233254233578_
                                               _e233259233581_
                                               _hd233258233584_
                                               _tl233257233586_
                                               _e233262233589_
                                               _hd233261233592_
                                               _tl233260233594_
                                               _e233265233597_
                                               _hd233264233600_
                                               _tl233263233602_
                                               _e233268233605_
                                               _hd233267233608_
                                               _tl233266233610_
                                               _e233271233613_
                                               _hd233270233616_
                                               _tl233269233618_
                                               _e233274233621_
                                               _hd233273233624_
                                               _tl233272233626_
                                               _e233277233629_
                                               _hd233276233632_
                                               _tl233275233634_
                                               _e233280233637_
                                               _hd233279233640_
                                               _tl233278233642_
                                               _e233283233645_
                                               _hd233282233648_
                                               _tl233281233650_
                                               _e233286233653_
                                               _hd233285233656_
                                               _tl233284233658_
                                               _e233289233661_
                                               _hd233288233664_
                                               _tl233287233666_
                                               _e233292233669_
                                               _hd233291233672_
                                               _tl233290233674_
                                               _e233295233677_
                                               _hd233294233680_
                                               _tl233293233682_
                                               _e233298233685_
                                               _hd233297233688_
                                               _tl233296233690_
                                               _e233301233693_
                                               _hd233300233696_
                                               _tl233299233698_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233254233578_))
                                                  (let ((___splice238901238902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233254233578_
                                                            '0))))
                                                    (let ((_tl233351233377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238901238902_
                                                              '1)))
                                                          (_target233349233375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238901238902_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233351233377_))
                                                          (___match239150239151_
                                                           _e233256233573_
                                                           _hd233255233576_
                                                           _tl233254233578_
                                                           ___splice238901238902_
                                                           _target233349233375_
                                                           _tl233351233377_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233247233362_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233247233362_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233254233578_))
                                              (let ((___splice238901238902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233254233578_
                                                        '0))))
                                                (let ((_tl233351233377_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238901238902_
                                                          '1)))
                                                      (_target233349233375_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238901238902_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233351233377_))
                                                      (___match239150239151_
                                                       _e233256233573_
                                                       _hd233255233576_
                                                       _tl233254233578_
                                                       ___splice238901238902_
                                                       _target233349233375_
                                                       _tl233351233377_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233247233362_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233247233362_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233254233578_))
                                      (let ((___splice238901238902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233254233578_
                                                '0))))
                                        (let ((_tl233351233377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238901238902_
                                                  '1)))
                                              (_target233349233375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238901238902_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233351233377_))
                                              (___match239150239151_
                                               _e233256233573_
                                               _hd233255233576_
                                               _tl233254233578_
                                               ___splice238901238902_
                                               _target233349233375_
                                               _tl233351233377_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233247233362_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233247233362_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233254233578_))
                                  (let ((___splice238901238902_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233254233578_
                                            '0))))
                                    (let ((_tl233351233377_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238901238902_
                                              '1)))
                                          (_target233349233375_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238901238902_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233351233377_))
                                          (___match239150239151_
                                           _e233256233573_
                                           _hd233255233576_
                                           _tl233254233578_
                                           ___splice238901238902_
                                           _target233349233375_
                                           _tl233351233377_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233247233362_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233247233362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233254233578_))
                              (let ((___splice238901238902_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233254233578_
                                        '0))))
                                (let ((_tl233351233377_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238901238902_
                                          '1)))
                                      (_target233349233375_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238901238902_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233351233377_))
                                      (___match239150239151_
                                       _e233256233573_
                                       _hd233255233576_
                                       _tl233254233578_
                                       ___splice238901238902_
                                       _target233349233375_
                                       _tl233351233377_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233247233362_)))))
                              (let ()
                                (declare (not safe))
                                (_g233247233362_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233254233578_))
                      (let ((___splice238901238902_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233254233578_ '0))))
                        (let ((_tl233351233377_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238901238902_ '1)))
                              (_target233349233375_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238901238902_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233351233377_))
                              (___match239150239151_
                               _e233256233573_
                               _hd233255233576_
                               _tl233254233578_
                               ___splice238901238902_
                               _target233349233375_
                               _tl233351233377_)
                              (let ()
                                (declare (not safe))
                                (_g233247233362_)))))
                      (let () (declare (not safe)) (_g233247233362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233284233658_))
                                                      (if (let ((__tmp240899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp240899 'bind-method!))
                  (let ((_L233529_ _hd233291233672_)
                        (_L233530_ _hd233282233648_)
                        (_L233531_ _hd233273233624_)
                        (_L233532_ _hd233264233600_))
                    (___kont238897238898_
                     _L233529_
                     _L233530_
                     _L233531_
                     _L233532_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233254233578_))
                      (let ((___splice238901238902_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233254233578_ '0))))
                        (let ((_tl233351233377_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238901238902_ '1)))
                              (_target233349233375_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238901238902_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233351233377_))
                              (___match239150239151_
                               _e233256233573_
                               _hd233255233576_
                               _tl233254233578_
                               ___splice238901238902_
                               _target233349233375_
                               _tl233351233377_)
                              (let ()
                                (declare (not safe))
                                (_g233247233362_)))))
                      (let () (declare (not safe)) (_g233247233362_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233254233578_))
                  (let ((___splice238901238902_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233254233578_ '0))))
                    (let ((_tl233351233377_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238901238902_ '1)))
                          (_target233349233375_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238901238902_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233351233377_))
                          (___match239150239151_
                           _e233256233573_
                           _hd233255233576_
                           _tl233254233578_
                           ___splice238901238902_
                           _target233349233375_
                           _tl233351233377_)
                          (let () (declare (not safe)) (_g233247233362_)))))
                  (let () (declare (not safe)) (_g233247233362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233254233578_))
                                                  (let ((___splice238901238902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233254233578_
                                                            '0))))
                                                    (let ((_tl233351233377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238901238902_
                                                              '1)))
                                                          (_target233349233375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238901238902_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233351233377_))
                                                          (___match239150239151_
                                                           _e233256233573_
                                                           _hd233255233576_
                                                           _tl233254233578_
                                                           ___splice238901238902_
                                                           _target233349233375_
                                                           _tl233351233377_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233247233362_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233247233362_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233254233578_))
                                          (let ((___splice238901238902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233254233578_
                                                    '0))))
                                            (let ((_tl233351233377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238901238902_
                                                      '1)))
                                                  (_target233349233375_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238901238902_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233351233377_))
                                                  (___match239150239151_
                                                   _e233256233573_
                                                   _hd233255233576_
                                                   _tl233254233578_
                                                   ___splice238901238902_
                                                   _target233349233375_
                                                   _tl233351233377_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233247233362_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233247233362_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233254233578_))
                                      (let ((___splice238901238902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233254233578_
                                                '0))))
                                        (let ((_tl233351233377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238901238902_
                                                  '1)))
                                              (_target233349233375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238901238902_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233351233377_))
                                              (___match239150239151_
                                               _e233256233573_
                                               _hd233255233576_
                                               _tl233254233578_
                                               ___splice238901238902_
                                               _target233349233375_
                                               _tl233351233377_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233247233362_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233247233362_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233254233578_))
                                  (let ((___splice238901238902_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233254233578_
                                            '0))))
                                    (let ((_tl233351233377_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238901238902_
                                              '1)))
                                          (_target233349233375_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238901238902_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233351233377_))
                                          (___match239150239151_
                                           _e233256233573_
                                           _hd233255233576_
                                           _tl233254233578_
                                           ___splice238901238902_
                                           _target233349233375_
                                           _tl233351233377_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233247233362_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233247233362_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233254233578_))
                          (let ((___splice238901238902_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233254233578_
                                    '0))))
                            (let ((_tl233351233377_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice238901238902_ '1)))
                                  (_target233349233375_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice238901238902_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233351233377_))
                                  (___match239150239151_
                                   _e233256233573_
                                   _hd233255233576_
                                   _tl233254233578_
                                   ___splice238901238902_
                                   _target233349233375_
                                   _tl233351233377_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233247233362_)))))
                          (let () (declare (not safe)) (_g233247233362_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233254233578_))
                  (let ((___splice238901238902_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233254233578_ '0))))
                    (let ((_tl233351233377_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238901238902_ '1)))
                          (_target233349233375_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238901238902_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233351233377_))
                          (___match239150239151_
                           _e233256233573_
                           _hd233255233576_
                           _tl233254233578_
                           ___splice238901238902_
                           _target233349233375_
                           _tl233351233377_)
                          (let () (declare (not safe)) (_g233247233362_)))))
                  (let () (declare (not safe)) (_g233247233362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233254233578_))
                                                      (let ((___splice238901238902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233254233578_ '0))))
                (let ((_tl233351233377_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice238901238902_ '1)))
                      (_target233349233375_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice238901238902_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233351233377_))
                      (___match239150239151_
                       _e233256233573_
                       _hd233255233576_
                       _tl233254233578_
                       ___splice238901238902_
                       _target233349233375_
                       _tl233351233377_)
                      (let () (declare (not safe)) (_g233247233362_)))))
              (let () (declare (not safe)) (_g233247233362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233254233578_))
                                              (let ((___splice238901238902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233254233578_
                                                        '0))))
                                                (let ((_tl233351233377_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238901238902_
                                                          '1)))
                                                      (_target233349233375_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238901238902_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233351233377_))
                                                      (___match239150239151_
                                                       _e233256233573_
                                                       _hd233255233576_
                                                       _tl233254233578_
                                                       ___splice238901238902_
                                                       _target233349233375_
                                                       _tl233351233377_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233247233362_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233247233362_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233254233578_))
                                          (let ((___splice238901238902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233254233578_
                                                    '0))))
                                            (let ((_tl233351233377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238901238902_
                                                      '1)))
                                                  (_target233349233375_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238901238902_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233351233377_))
                                                  (___match239150239151_
                                                   _e233256233573_
                                                   _hd233255233576_
                                                   _tl233254233578_
                                                   ___splice238901238902_
                                                   _target233349233375_
                                                   _tl233351233377_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233247233362_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233247233362_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233254233578_))
                                      (let ((___splice238901238902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233254233578_
                                                '0))))
                                        (let ((_tl233351233377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238901238902_
                                                  '1)))
                                              (_target233349233375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238901238902_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233351233377_))
                                              (___match239150239151_
                                               _e233256233573_
                                               _hd233255233576_
                                               _tl233254233578_
                                               ___splice238901238902_
                                               _target233349233375_
                                               _tl233351233377_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233247233362_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233247233362_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233254233578_))
                              (let ((___splice238901238902_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233254233578_
                                        '0))))
                                (let ((_tl233351233377_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238901238902_
                                          '1)))
                                      (_target233349233375_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238901238902_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233351233377_))
                                      (___match239150239151_
                                       _e233256233573_
                                       _hd233255233576_
                                       _tl233254233578_
                                       ___splice238901238902_
                                       _target233349233375_
                                       _tl233351233377_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233247233362_)))))
                              (let ()
                                (declare (not safe))
                                (_g233247233362_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233254233578_))
                      (let ((___splice238901238902_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233254233578_ '0))))
                        (let ((_tl233351233377_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238901238902_ '1)))
                              (_target233349233375_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238901238902_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233351233377_))
                              (___match239150239151_
                               _e233256233573_
                               _hd233255233576_
                               _tl233254233578_
                               ___splice238901238902_
                               _target233349233375_
                               _tl233351233377_)
                              (let ()
                                (declare (not safe))
                                (_g233247233362_)))))
                      (let () (declare (not safe)) (_g233247233362_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233254233578_))
                  (let ((___splice238901238902_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233254233578_ '0))))
                    (let ((_tl233351233377_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238901238902_ '1)))
                          (_target233349233375_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice238901238902_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233351233377_))
                          (___match239150239151_
                           _e233256233573_
                           _hd233255233576_
                           _tl233254233578_
                           ___splice238901238902_
                           _target233349233375_
                           _tl233351233377_)
                          (let () (declare (not safe)) (_g233247233362_)))))
                  (let () (declare (not safe)) (_g233247233362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233254233578_))
                                                  (let ((___splice238901238902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233254233578_
                                                            '0))))
                                                    (let ((_tl233351233377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238901238902_
                                                              '1)))
                                                          (_target233349233375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238901238902_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233351233377_))
                                                          (___match239150239151_
                                                           _e233256233573_
                                                           _hd233255233576_
                                                           _tl233254233578_
                                                           ___splice238901238902_
                                                           _target233349233375_
                                                           _tl233351233377_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233247233362_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233247233362_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233254233578_))
                                              (let ((___splice238901238902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233254233578_
                                                        '0))))
                                                (let ((_tl233351233377_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238901238902_
                                                          '1)))
                                                      (_target233349233375_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238901238902_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233351233377_))
                                                      (___match239150239151_
                                                       _e233256233573_
                                                       _hd233255233576_
                                                       _tl233254233578_
                                                       ___splice238901238902_
                                                       _target233349233375_
                                                       _tl233351233377_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233247233362_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233247233362_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233254233578_))
                                          (let ((___splice238901238902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233254233578_
                                                    '0))))
                                            (let ((_tl233351233377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238901238902_
                                                      '1)))
                                                  (_target233349233375_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice238901238902_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233351233377_))
                                                  (___match239150239151_
                                                   _e233256233573_
                                                   _hd233255233576_
                                                   _tl233254233578_
                                                   ___splice238901238902_
                                                   _target233349233375_
                                                   _tl233351233377_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233247233362_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233247233362_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233254233578_))
                                  (let ((___splice238901238902_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233254233578_
                                            '0))))
                                    (let ((_tl233351233377_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238901238902_
                                              '1)))
                                          (_target233349233375_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice238901238902_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233351233377_))
                                          (___match239150239151_
                                           _e233256233573_
                                           _hd233255233576_
                                           _tl233254233578_
                                           ___splice238901238902_
                                           _target233349233375_
                                           _tl233351233377_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233247233362_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233247233362_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233254233578_))
                          (let ((___splice238901238902_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233254233578_
                                    '0))))
                            (let ((_tl233351233377_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice238901238902_ '1)))
                                  (_target233349233375_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice238901238902_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233351233377_))
                                  (___match239150239151_
                                   _e233256233573_
                                   _hd233255233576_
                                   _tl233254233578_
                                   ___splice238901238902_
                                   _target233349233375_
                                   _tl233351233377_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233247233362_)))))
                          (let () (declare (not safe)) (_g233247233362_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233254233578_))
                      (let ((___splice238901238902_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233254233578_ '0))))
                        (let ((_tl233351233377_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238901238902_ '1)))
                              (_target233349233375_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice238901238902_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233351233377_))
                              (___match239150239151_
                               _e233256233573_
                               _hd233255233576_
                               _tl233254233578_
                               ___splice238901238902_
                               _target233349233375_
                               _tl233351233377_)
                              (let ()
                                (declare (not safe))
                                (_g233247233362_)))))
                      (let () (declare (not safe)) (_g233247233362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233254233578_))
                                                      (let ((___splice238901238902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233254233578_ '0))))
                (let ((_tl233351233377_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice238901238902_ '1)))
                      (_target233349233375_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice238901238902_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233351233377_))
                      (___match239150239151_
                       _e233256233573_
                       _hd233255233576_
                       _tl233254233578_
                       ___splice238901238902_
                       _target233349233375_
                       _tl233351233377_)
                      (let () (declare (not safe)) (_g233247233362_)))))
              (let () (declare (not safe)) (_g233247233362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233254233578_))
                                                  (let ((___splice238901238902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233254233578_
                                                            '0))))
                                                    (let ((_tl233351233377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238901238902_
                                                              '1)))
                                                          (_target233349233375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice238901238902_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233351233377_))
                                                          (___match239150239151_
                                                           _e233256233573_
                                                           _hd233255233576_
                                                           _tl233254233578_
                                                           ___splice238901238902_
                                                           _target233349233375_
                                                           _tl233351233377_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233247233362_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233247233362_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233254233578_))
                                              (let ((___splice238901238902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233254233578_
                                                        '0))))
                                                (let ((_tl233351233377_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238901238902_
                                                          '1)))
                                                      (_target233349233375_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice238901238902_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233351233377_))
                                                      (___match239150239151_
                                                       _e233256233573_
                                                       _hd233255233576_
                                                       _tl233254233578_
                                                       ___splice238901238902_
                                                       _target233349233375_
                                                       _tl233351233377_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233247233362_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233247233362_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233254233578_))
                                      (let ((___splice238901238902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233254233578_
                                                '0))))
                                        (let ((_tl233351233377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238901238902_
                                                  '1)))
                                              (_target233349233375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice238901238902_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233351233377_))
                                              (___match239150239151_
                                               _e233256233573_
                                               _hd233255233576_
                                               _tl233254233578_
                                               ___splice238901238902_
                                               _target233349233375_
                                               _tl233351233377_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233247233362_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233247233362_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233254233578_))
                              (let ((___splice238901238902_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233254233578_
                                        '0))))
                                (let ((_tl233351233377_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238901238902_
                                          '1)))
                                      (_target233349233375_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice238901238902_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233351233377_))
                                      (___match239150239151_
                                       _e233256233573_
                                       _hd233255233576_
                                       _tl233254233578_
                                       ___splice238901238902_
                                       _target233349233375_
                                       _tl233351233377_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233247233362_)))))
                              (let ()
                                (declare (not safe))
                                (_g233247233362_))))))
                  (let () (declare (not safe)) (_g233247233362_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx233183_)
        (let* ((___stx239153239154_ _stx233183_)
               (_g233186233199_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239153239154_)))))
          (let ((___kont239155239156_
                 (lambda (_L233227_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L233227_))))
                (___kont239157239158_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239153239154_))
                (let ((_e233191233211_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239153239154_))))
                  (let ((_tl233189233216_
                         (let () (declare (not safe)) (##cdr _e233191233211_)))
                        (_hd233190233214_
                         (let ()
                           (declare (not safe))
                           (##car _e233191233211_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233189233216_))
                        (let ((_e233194233219_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233189233216_))))
                          (let ((_tl233192233224_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233194233219_)))
                                (_hd233193233222_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233194233219_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233192233224_))
                                (___kont239155239156_ _hd233193233222_)
                                (___kont239157239158_))))
                        (___kont239157239158_))))
                (___kont239157239158_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx233063_)
        (let* ((_g233065233082_
                (lambda (_g233066233079_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233066233079_))))
               (_g233064233180_
                (lambda (_g233066233085_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233066233085_))
                      (let ((_e233071233087_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233066233085_))))
                        (let ((_hd233070233090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233071233087_)))
                              (_tl233069233092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233071233087_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233069233092_))
                              (let ((_e233074233095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233069233092_))))
                                (let ((_hd233073233098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233074233095_)))
                                      (_tl233072233100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233074233095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233072233100_))
                                      (let ((_e233077233103_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233072233100_))))
                                        (let ((_hd233076233106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233077233103_)))
                                              (_tl233075233108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233077233103_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233075233108_))
                                              ((lambda (_L233111_ _L233112_)
                                                 (let* ((___stx239175239176_
                                                         _L233112_)
                                                        (_g233128233139_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx239175239176_)))))
                                                   (let ((___kont239177239178_
                                                          (lambda (_L233159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L233160_)
                    (let ((_$e233172_
                           (let ((__tmp240900
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L233160_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp240900
                              '#f))))
                      (if _$e233172_
                          ((lambda (_type-e233175_)
                             (_type-e233175_ _stx233063_ _L233112_))
                           _$e233172_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L233111_))))))
                 (___kont239179239180_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L233111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match239186239187_
                                                            (lambda (_e233134233151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd233133233154_
                             _tl233132233156_)
                      (let ((_L233159_ _tl233132233156_)
                            (_L233160_ _hd233133233154_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L233160_))
                            (___kont239177239178_ _L233159_ _L233160_)
                            (___kont239179239180_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx239175239176_))
                   (let ((_e233134233151_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx239175239176_))))
                     (let ((_tl233132233156_
                            (let ()
                              (declare (not safe))
                              (##cdr _e233134233151_)))
                           (_hd233133233154_
                            (let ()
                              (declare (not safe))
                              (##car _e233134233151_))))
                       (___match239186239187_
                        _e233134233151_
                        _hd233133233154_
                        _tl233132233156_)))
                   (___kont239179239180_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd233076233106_
                                               _hd233073233098_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233065233082_
                                                 _g233066233085_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233065233082_ _g233066233085_)))))
                              (let ()
                                (declare (not safe))
                                (_g233065233082_ _g233066233085_)))))
                      (let ()
                        (declare (not safe))
                        (_g233065233082_ _g233066233085_))))))
          (declare (not safe))
          (_g233064233180_ _stx233063_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx232924_ _ann232925_)
        (let* ((_g232927232960_
                (lambda (_g232928232957_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232928232957_))))
               (_g232926233060_
                (lambda (_g232928232963_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232928232963_))
                      (let ((_e232937232965_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232928232963_))))
                        (let ((_hd232936232968_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232937232965_)))
                              (_tl232935232970_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232937232965_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232935232970_))
                              (let ((_e232940232973_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232935232970_))))
                                (let ((_hd232939232976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232940232973_)))
                                      (_tl232938232978_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232940232973_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232938232978_))
                                      (let ((_e232943232981_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232938232978_))))
                                        (let ((_hd232942232984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232943232981_)))
                                              (_tl232941232986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232943232981_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232941232986_))
                                              (let ((_e232946232989_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232941232986_))))
                                                (let ((_hd232945232992_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232946232989_)))
                                                      (_tl232944232994_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232946232989_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232944232994_))
                                                      (let ((_e232949232997_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232944232994_))))
                (let ((_hd232948233000_
                       (let () (declare (not safe)) (##car _e232949232997_)))
                      (_tl232947233002_
                       (let () (declare (not safe)) (##cdr _e232949232997_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl232947233002_))
                      (let ((_e232952233005_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl232947233002_))))
                        (let ((_hd232951233008_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232952233005_)))
                              (_tl232950233010_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232952233005_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232950233010_))
                              (let ((_e232955233013_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232950233010_))))
                                (let ((_hd232954233016_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232955233013_)))
                                      (_tl232953233018_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232955233013_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232953233018_))
                                      ((lambda (_L233021_
                                                _L233022_
                                                _L233023_
                                                _L233024_
                                                _L233025_
                                                _L233026_)
                                         (let ((_type-id233053_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233026_)))
                                               (_super233054_
                                                (map gxc#identifier-symbol
                                                     _L233025_))
                                               (_slots233055_
                                                (map gx#stx-e _L233024_))
                                               (_ctor-method233056_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233023_)))
                                               (_struct?233057_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233022_)))
                                               (_final?233058_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233021_))))
                                           (let ((__obj240858
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
                                              __obj240858
                                              _type-id233053_
                                              _super233054_
                                              _slots233055_
                                              _ctor-method233056_
                                              _struct?233057_
                                              _final?233058_)
                                             __obj240858)))
                                       _hd232954233016_
                                       _hd232951233008_
                                       _hd232948233000_
                                       _hd232945232992_
                                       _hd232942232984_
                                       _hd232939232976_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232927232960_ _g232928232963_)))))
                              (let ()
                                (declare (not safe))
                                (_g232927232960_ _g232928232963_)))))
                      (let ()
                        (declare (not safe))
                        (_g232927232960_ _g232928232963_)))))
              (let ()
                (declare (not safe))
                (_g232927232960_ _g232928232963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232927232960_
                                                 _g232928232963_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232927232960_ _g232928232963_)))))
                              (let ()
                                (declare (not safe))
                                (_g232927232960_ _g232928232963_)))))
                      (let ()
                        (declare (not safe))
                        (_g232927232960_ _g232928232963_))))))
          (declare (not safe))
          (_g232926233060_ _ann232925_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx232872_ _ann232873_)
        (let* ((_g232875232888_
                (lambda (_g232876232885_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232876232885_))))
               (_g232874232921_
                (lambda (_g232876232891_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232876232891_))
                      (let ((_e232880232893_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232876232891_))))
                        (let ((_hd232879232896_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232880232893_)))
                              (_tl232878232898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232880232893_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232878232898_))
                              (let ((_e232883232901_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232878232898_))))
                                (let ((_hd232882232904_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232883232901_)))
                                      (_tl232881232906_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232883232901_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232881232906_))
                                      ((lambda (_L232909_)
                                         (let ((__tmp240901
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L232909_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp240901)))
                                       _hd232882232904_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232875232888_ _g232876232891_)))))
                              (let ()
                                (declare (not safe))
                                (_g232875232888_ _g232876232891_)))))
                      (let ()
                        (declare (not safe))
                        (_g232875232888_ _g232876232891_))))))
          (declare (not safe))
          (_g232874232921_ _ann232873_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx232820_ _ann232821_)
        (let* ((_g232823232836_
                (lambda (_g232824232833_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232824232833_))))
               (_g232822232869_
                (lambda (_g232824232839_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232824232839_))
                      (let ((_e232828232841_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232824232839_))))
                        (let ((_hd232827232844_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232828232841_)))
                              (_tl232826232846_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232828232841_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232826232846_))
                              (let ((_e232831232849_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232826232846_))))
                                (let ((_hd232830232852_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232831232849_)))
                                      (_tl232829232854_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232831232849_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232829232854_))
                                      ((lambda (_L232857_)
                                         (let ((__tmp240902
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L232857_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp240902)))
                                       _hd232830232852_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232823232836_ _g232824232839_)))))
                              (let ()
                                (declare (not safe))
                                (_g232823232836_ _g232824232839_)))))
                      (let ()
                        (declare (not safe))
                        (_g232823232836_ _g232824232839_))))))
          (declare (not safe))
          (_g232822232869_ _ann232821_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx232736_ _ann232737_)
        (let* ((_g232739232760_
                (lambda (_g232740232757_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232740232757_))))
               (_g232738232817_
                (lambda (_g232740232763_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232740232763_))
                      (let ((_e232746232765_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232740232763_))))
                        (let ((_hd232745232768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232746232765_)))
                              (_tl232744232770_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232746232765_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232744232770_))
                              (let ((_e232749232773_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232744232770_))))
                                (let ((_hd232748232776_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232749232773_)))
                                      (_tl232747232778_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232749232773_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232747232778_))
                                      (let ((_e232752232781_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232747232778_))))
                                        (let ((_hd232751232784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232752232781_)))
                                              (_tl232750232786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232752232781_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232750232786_))
                                              (let ((_e232755232789_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232750232786_))))
                                                (let ((_hd232754232792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232755232789_)))
                                                      (_tl232753232794_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232755232789_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232753232794_))
                                                      ((lambda (_L232797_
                                                                _L232798_
                                                                _L232799_)
                                                         (let ((__tmp240905
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L232799_)))
                       (__tmp240904
                        (let () (declare (not safe)) (gx#stx-e _L232798_)))
                       (__tmp240903
                        (let () (declare (not safe)) (gx#stx-e _L232797_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp240905
                    __tmp240904
                    __tmp240903)))
               _hd232754232792_
               _hd232751232784_
               _hd232748232776_)
              (let ()
                (declare (not safe))
                (_g232739232760_ _g232740232763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232739232760_
                                                 _g232740232763_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232739232760_ _g232740232763_)))))
                              (let ()
                                (declare (not safe))
                                (_g232739232760_ _g232740232763_)))))
                      (let ()
                        (declare (not safe))
                        (_g232739232760_ _g232740232763_))))))
          (declare (not safe))
          (_g232738232817_ _ann232737_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx232652_ _ann232653_)
        (let* ((_g232655232676_
                (lambda (_g232656232673_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232656232673_))))
               (_g232654232733_
                (lambda (_g232656232679_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232656232679_))
                      (let ((_e232662232681_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232656232679_))))
                        (let ((_hd232661232684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232662232681_)))
                              (_tl232660232686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232662232681_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232660232686_))
                              (let ((_e232665232689_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232660232686_))))
                                (let ((_hd232664232692_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232665232689_)))
                                      (_tl232663232694_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232665232689_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232663232694_))
                                      (let ((_e232668232697_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232663232694_))))
                                        (let ((_hd232667232700_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232668232697_)))
                                              (_tl232666232702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232668232697_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232666232702_))
                                              (let ((_e232671232705_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232666232702_))))
                                                (let ((_hd232670232708_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232671232705_)))
                                                      (_tl232669232710_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232671232705_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232669232710_))
                                                      ((lambda (_L232713_
                                                                _L232714_
                                                                _L232715_)
                                                         (let ((__tmp240908
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L232715_)))
                       (__tmp240907
                        (let () (declare (not safe)) (gx#stx-e _L232714_)))
                       (__tmp240906
                        (let () (declare (not safe)) (gx#stx-e _L232713_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp240908
                    __tmp240907
                    __tmp240906)))
               _hd232670232708_
               _hd232667232700_
               _hd232664232692_)
              (let ()
                (declare (not safe))
                (_g232655232676_ _g232656232679_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g232655232676_
                                                 _g232656232679_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232655232676_ _g232656232679_)))))
                              (let ()
                                (declare (not safe))
                                (_g232655232676_ _g232656232679_)))))
                      (let ()
                        (declare (not safe))
                        (_g232655232676_ _g232656232679_))))))
          (declare (not safe))
          (_g232654232733_ _ann232653_))))
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
      (lambda (_stx231772_)
        (let* ((___stx239189239190_ _stx231772_)
               (_g231778231974_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239189239190_)))))
          (let ((___kont239191239192_
                 (lambda (_L232640_)
                   (let ((__obj240859
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj240859
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232640_))
                      '#f)
                     __obj240859)))
                (___kont239193239194_
                 (lambda (_L232567_
                          _L232568_
                          _L232569_
                          _L232570_
                          _L232571_
                          _L232572_)
                   (let* ((_tab232622_
                           (let () (declare (not safe)) (gx#stx-e _L232569_)))
                          (_keys232624_
                           (if _tab232622_
                               (let ((__tmp240909 (vector->list _tab232622_)))
                                 (declare (not safe))
                                 (filter values __tmp240909))
                               '#f)))
                     (let ((__tmp240910
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L232568_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys232624_
                        __tmp240910)))))
                (___kont239195239196_
                 (lambda (_L232300_
                          _L232301_
                          _L232302_
                          _L232303_
                          _L232304_
                          _L232305_
                          _L232306_
                          _L232307_
                          _L232308_
                          _L232309_)
                   (let ((__tmp240912
                          (map gx#stx-e
                               (let ((__tmp240913
                                      (lambda (_g232402232405_ _g232403232407_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g232402232405_
                                                _g232403232407_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp240913 '() _L232302_))))
                         (__tmp240911
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L232306_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp240912
                      __tmp240911))))
                (___kont239199239200_
                 (lambda (_L232010_)
                   (let ((__obj240860
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj240860
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232010_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L232010_)))
                     __obj240860)))
                (___kont239201239202_
                 (lambda (_L231987_)
                   (let ((__obj240861
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj240861
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L231987_))
                      '#f)
                     __obj240861))))
            (let* ((___match239508239509_
                    (lambda (_e231965232002_ _hd231964232005_ _tl231963232007_)
                      (let ((_L232010_ _tl231963232007_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L232010_))
                            (___kont239199239200_ _L232010_)
                            (___kont239201239202_ _tl231963232007_)))))
                   (___match239502239503_
                    (lambda (_e231859232024_
                             _hd231858232027_
                             _tl231857232029_
                             _e231862232032_
                             _hd231861232035_
                             _tl231860232037_
                             _e231865232040_
                             _hd231864232043_
                             _tl231863232045_
                             _e231868232048_
                             _hd231867232051_
                             _tl231866232053_
                             _e231871232056_
                             _hd231870232059_
                             _tl231869232061_
                             _e231874232064_
                             _hd231873232067_
                             _tl231872232069_
                             _e231877232072_
                             _hd231876232075_
                             _tl231875232077_
                             _e231880232080_
                             _hd231879232083_
                             _tl231878232085_
                             _e231883232088_
                             _hd231882232091_
                             _tl231881232093_
                             _e231886232096_
                             _hd231885232099_
                             _tl231884232101_
                             _e231889232104_
                             _hd231888232107_
                             _tl231887232109_
                             _e231892232112_
                             _hd231891232115_
                             _tl231890232117_
                             _e231895232120_
                             _hd231894232123_
                             _tl231893232125_
                             _e231898232128_
                             _hd231897232131_
                             _tl231896232133_
                             ___splice239197239198_
                             _target231899232136_
                             _tl231901232138_
                             _e231916232141_
                             _hd231915232144_
                             _tl231914232146_
                             _e231919232149_
                             _hd231918232152_
                             _tl231917232154_
                             _e231922232157_
                             _hd231921232160_
                             _tl231920232162_)
                      (letrec ((_loop231902232165_
                                (lambda (_hd231900232168_
                                         _-absent-value231906232170_
                                         _key231907232172_
                                         _-xkwvar231908232174_
                                         _-hash-ref231909232176_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231900232168_))
                                      (let ((_e231903232179_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231900232168_))))
                                        (let ((_lp-tl231905232184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231903232179_)))
                                              (_lp-hd231904232182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231903232179_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd231904232182_))
                                              (let ((_e231925232187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd231904232182_))))
                                                (let ((_tl231923232192_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231925232187_)))
                                                      (_hd231924232190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231925232187_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd231924232190_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd231924232190_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231923232192_))
                      (let ((_e231928232195_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231923232192_))))
                        (let ((_tl231926232200_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231928232195_)))
                              (_hd231927232198_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231928232195_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd231927232198_))
                              (let ((_e231931232203_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd231927232198_))))
                                (let ((_tl231929232208_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231931232203_)))
                                      (_hd231930232206_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231931232203_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd231930232206_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd231930232206_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231929232208_))
                                              (let ((_e231934232211_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231929232208_))))
                                                (let ((_tl231932232216_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231934232211_)))
                                                      (_hd231933232214_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231934232211_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl231932232216_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231926232200_))
                                                          (let ((_e231937232219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231926232200_))))
                    (let ((_tl231935232224_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231937232219_)))
                          (_hd231936232222_
                           (let ()
                             (declare (not safe))
                             (##car _e231937232219_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231936232222_))
                          (let ((_e231940232227_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231936232222_))))
                            (let ((_tl231938232232_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231940232227_)))
                                  (_hd231939232230_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231940232227_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231939232230_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231939232230_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231938232232_))
                                          (let ((_e231943232235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231938232232_))))
                                            (let ((_tl231941232240_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231943232235_)))
                                                  (_hd231942232238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231943232235_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231941232240_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231935232224_))
                                                      (let ((_e231946232243_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231935232224_))))
                (let ((_tl231944232248_
                       (let () (declare (not safe)) (##cdr _e231946232243_)))
                      (_hd231945232246_
                       (let () (declare (not safe)) (##car _e231946232243_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231945232246_))
                      (let ((_e231949232251_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231945232246_))))
                        (let ((_tl231947232256_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231949232251_)))
                              (_hd231948232254_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231949232251_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231948232254_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd231948232254_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231947232256_))
                                      (let ((_e231952232259_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231947232256_))))
                                        (let ((_tl231950232264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231952232259_)))
                                              (_hd231951232262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231952232259_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231950232264_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231944232248_))
                                                  (let ((_e231955232267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231944232248_))))
                                                    (let ((_tl231953232272_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231955232267_)))
                                                          (_hd231954232270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231955232267_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231954232270_))
                                                          (let ((_e231958232275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231954232270_))))
                    (let ((_tl231956232280_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231958232275_)))
                          (_hd231957232278_
                           (let ()
                             (declare (not safe))
                             (##car _e231958232275_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231957232278_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd231957232278_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231956232280_))
                                  (let ((_e231961232283_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231956232280_))))
                                    (let ((_tl231959232288_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231961232283_)))
                                          (_hd231960232286_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231961232283_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231959232288_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231953232272_))
                                              (let ((__tmp240928
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd231960232286_
                                                             _-absent-value231906232170_)))
                                                    (__tmp240927
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd231951232262_
                                                             _key231907232172_)))
                                                    (__tmp240926
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd231942232238_
                                                             _-xkwvar231908232174_)))
                                                    (__tmp240925
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd231933232214_
                                                             _-hash-ref231909232176_))))
                                                (declare (not safe))
                                                (_loop231902232165_
                                                 _lp-tl231905232184_
                                                 __tmp240928
                                                 __tmp240927
                                                 __tmp240926
                                                 __tmp240925))
                                              (___match239508239509_
                                               _e231859232024_
                                               _hd231858232027_
                                               _tl231857232029_))
                                          (___match239508239509_
                                           _e231859232024_
                                           _hd231858232027_
                                           _tl231857232029_))))
                                  (___match239508239509_
                                   _e231859232024_
                                   _hd231858232027_
                                   _tl231857232029_))
                              (___match239508239509_
                               _e231859232024_
                               _hd231858232027_
                               _tl231857232029_))
                          (___match239508239509_
                           _e231859232024_
                           _hd231858232027_
                           _tl231857232029_))))
                  (___match239508239509_
                   _e231859232024_
                   _hd231858232027_
                   _tl231857232029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239508239509_
                                                   _e231859232024_
                                                   _hd231858232027_
                                                   _tl231857232029_))
                                              (___match239508239509_
                                               _e231859232024_
                                               _hd231858232027_
                                               _tl231857232029_))))
                                      (___match239508239509_
                                       _e231859232024_
                                       _hd231858232027_
                                       _tl231857232029_))
                                  (___match239508239509_
                                   _e231859232024_
                                   _hd231858232027_
                                   _tl231857232029_))
                              (___match239508239509_
                               _e231859232024_
                               _hd231858232027_
                               _tl231857232029_))))
                      (___match239508239509_
                       _e231859232024_
                       _hd231858232027_
                       _tl231857232029_))))
              (___match239508239509_
               _e231859232024_
               _hd231858232027_
               _tl231857232029_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239508239509_
                                                   _e231859232024_
                                                   _hd231858232027_
                                                   _tl231857232029_))))
                                          (___match239508239509_
                                           _e231859232024_
                                           _hd231858232027_
                                           _tl231857232029_))
                                      (___match239508239509_
                                       _e231859232024_
                                       _hd231858232027_
                                       _tl231857232029_))
                                  (___match239508239509_
                                   _e231859232024_
                                   _hd231858232027_
                                   _tl231857232029_))))
                          (___match239508239509_
                           _e231859232024_
                           _hd231858232027_
                           _tl231857232029_))))
                  (___match239508239509_
                   _e231859232024_
                   _hd231858232027_
                   _tl231857232029_))
              (___match239508239509_
               _e231859232024_
               _hd231858232027_
               _tl231857232029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239508239509_
                                               _e231859232024_
                                               _hd231858232027_
                                               _tl231857232029_))
                                          (___match239508239509_
                                           _e231859232024_
                                           _hd231858232027_
                                           _tl231857232029_))
                                      (___match239508239509_
                                       _e231859232024_
                                       _hd231858232027_
                                       _tl231857232029_))))
                              (___match239508239509_
                               _e231859232024_
                               _hd231858232027_
                               _tl231857232029_))))
                      (___match239508239509_
                       _e231859232024_
                       _hd231858232027_
                       _tl231857232029_))
                  (___match239508239509_
                   _e231859232024_
                   _hd231858232027_
                   _tl231857232029_))
              (___match239508239509_
               _e231859232024_
               _hd231858232027_
               _tl231857232029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239508239509_
                                               _e231859232024_
                                               _hd231858232027_
                                               _tl231857232029_))))
                                      (let ((_-hash-ref231913232297_
                                             (reverse _-hash-ref231909232176_))
                                            (_-xkwvar231912232295_
                                             (reverse _-xkwvar231908232174_))
                                            (_key231911232293_
                                             (reverse _key231907232172_))
                                            (_-absent-value231910232291_
                                             (reverse _-absent-value231906232170_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231866232053_))
                                            (let ((_L232300_ _hd231921232160_)
                                                  (_L232301_
                                                   _-absent-value231910232291_)
                                                  (_L232302_ _key231911232293_)
                                                  (_L232303_
                                                   _-xkwvar231912232295_)
                                                  (_L232304_
                                                   _-hash-ref231913232297_)
                                                  (_L232305_ _hd231897232131_)
                                                  (_L232306_ _hd231888232107_)
                                                  (_L232307_ _hd231879232083_)
                                                  (_L232308_ _tl231863232045_)
                                                  (_L232309_ _hd231864232043_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232309_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232308_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L232307_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L232309_
                                                          _L232305_))
                                                       (let ((__tmp240923
                                                              (let ((__tmp240924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g232362232365_ _g232363232367_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232362232365_ _g232363232367_)))))
                        (declare (not safe))
                        (foldr1 __tmp240924 '() _L232302_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp240923))
               (let ((__tmp240922
                      (lambda (_g232369232371_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232369232371_
                           'hash-ref))))
                     (__tmp240920
                      (let ((__tmp240921
                             (lambda (_g232373232376_ _g232374232378_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232373232376_ _g232374232378_)))))
                        (declare (not safe))
                        (foldr1 __tmp240921 '() _L232304_))))
                 (declare (not safe))
                 (andmap1 __tmp240922 __tmp240920))
               (let ((__tmp240919
                      (lambda (_g232380232382_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232380232382_
                           'absent-value))))
                     (__tmp240917
                      (let ((__tmp240918
                             (lambda (_g232384232387_ _g232385232389_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232384232387_ _g232385232389_)))))
                        (declare (not safe))
                        (foldr1 __tmp240918 '() _L232301_))))
                 (declare (not safe))
                 (andmap1 __tmp240919 __tmp240917))
               (let ((__tmp240916
                      (lambda (_g232391232393_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g232391232393_ _L232309_))))
                     (__tmp240914
                      (let ((__tmp240915
                             (lambda (_g232395232398_ _g232396232400_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232395232398_ _g232396232400_)))))
                        (declare (not safe))
                        (foldr1 __tmp240915 '() _L232303_))))
                 (declare (not safe))
                 (andmap1 __tmp240916 __tmp240914)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239195239196_
                                                   _L232300_
                                                   _L232301_
                                                   _L232302_
                                                   _L232303_
                                                   _L232304_
                                                   _L232305_
                                                   _L232306_
                                                   _L232307_
                                                   _L232308_
                                                   _L232309_)
                                                  (___match239508239509_
                                                   _e231859232024_
                                                   _hd231858232027_
                                                   _tl231857232029_)))
                                            (___match239508239509_
                                             _e231859232024_
                                             _hd231858232027_
                                             _tl231857232029_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop231902232165_
                           _target231899232136_
                           '()
                           '()
                           '()
                           '())))))
                   (___match239374239375_
                    (lambda (_e231859232024_
                             _hd231858232027_
                             _tl231857232029_
                             _e231862232032_
                             _hd231861232035_
                             _tl231860232037_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231861232035_))
                          (let ((_e231865232040_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231861232035_))))
                            (let ((_tl231863232045_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231865232040_)))
                                  (_hd231864232043_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231865232040_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231860232037_))
                                  (let ((_e231868232048_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231860232037_))))
                                    (let ((_tl231866232053_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231868232048_)))
                                          (_hd231867232051_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231868232048_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231867232051_))
                                          (let ((_e231871232056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231867232051_))))
                                            (let ((_tl231869232061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231871232056_)))
                                                  (_hd231870232059_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231871232056_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd231870232059_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd231870232059_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231869232061_))
                                                          (let ((_e231874232064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231869232061_))))
                    (let ((_tl231872232069_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231874232064_)))
                          (_hd231873232067_
                           (let ()
                             (declare (not safe))
                             (##car _e231874232064_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231873232067_))
                          (let ((_e231877232072_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231873232067_))))
                            (let ((_tl231875232077_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231877232072_)))
                                  (_hd231876232075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231877232072_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231876232075_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231876232075_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231875232077_))
                                          (let ((_e231880232080_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231875232077_))))
                                            (let ((_tl231878232085_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231880232080_)))
                                                  (_hd231879232083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231880232080_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231878232085_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231872232069_))
                                                      (let ((_e231883232088_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231872232069_))))
                (let ((_tl231881232093_
                       (let () (declare (not safe)) (##cdr _e231883232088_)))
                      (_hd231882232091_
                       (let () (declare (not safe)) (##car _e231883232088_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231882232091_))
                      (let ((_e231886232096_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231882232091_))))
                        (let ((_tl231884232101_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231886232096_)))
                              (_hd231885232099_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231886232096_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231885232099_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231885232099_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231884232101_))
                                      (let ((_e231889232104_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231884232101_))))
                                        (let ((_tl231887232109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231889232104_)))
                                              (_hd231888232107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231889232104_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231887232109_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231881232093_))
                                                  (let ((_e231892232112_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231881232093_))))
                                                    (let ((_tl231890232117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231892232112_)))
                                                          (_hd231891232115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231892232112_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231891232115_))
                                                          (let ((_e231895232120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231891232115_))))
                    (let ((_tl231893232125_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231895232120_)))
                          (_hd231894232123_
                           (let ()
                             (declare (not safe))
                             (##car _e231895232120_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231894232123_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd231894232123_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231893232125_))
                                  (let ((_e231898232128_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231893232125_))))
                                    (let ((_tl231896232133_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231898232128_)))
                                          (_hd231897232131_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231898232128_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231896232133_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl231890232117_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl231890232117_))
                                                        '1)
                                                  (let ((___splice239197239198_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl231890232117_
                                                            '1))))
                                                    (let ((_tl231901232138_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239197239198_
                                                              '1)))
                                                          (_target231899232136_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239197239198_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231901232138_))
                                                          (let ((_e231916232141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231901232138_))))
                    (let ((_tl231914232146_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231916232141_)))
                          (_hd231915232144_
                           (let ()
                             (declare (not safe))
                             (##car _e231916232141_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231915232144_))
                          (let ((_e231919232149_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231915232144_))))
                            (let ((_tl231917232154_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231919232149_)))
                                  (_hd231918232152_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231919232149_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231918232152_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231918232152_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231917232154_))
                                          (let ((_e231922232157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231917232154_))))
                                            (let ((_tl231920232162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231922232157_)))
                                                  (_hd231921232160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231922232157_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231920232162_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl231914232146_))
                                                      (___match239502239503_
                                                       _e231859232024_
                                                       _hd231858232027_
                                                       _tl231857232029_
                                                       _e231862232032_
                                                       _hd231861232035_
                                                       _tl231860232037_
                                                       _e231865232040_
                                                       _hd231864232043_
                                                       _tl231863232045_
                                                       _e231868232048_
                                                       _hd231867232051_
                                                       _tl231866232053_
                                                       _e231871232056_
                                                       _hd231870232059_
                                                       _tl231869232061_
                                                       _e231874232064_
                                                       _hd231873232067_
                                                       _tl231872232069_
                                                       _e231877232072_
                                                       _hd231876232075_
                                                       _tl231875232077_
                                                       _e231880232080_
                                                       _hd231879232083_
                                                       _tl231878232085_
                                                       _e231883232088_
                                                       _hd231882232091_
                                                       _tl231881232093_
                                                       _e231886232096_
                                                       _hd231885232099_
                                                       _tl231884232101_
                                                       _e231889232104_
                                                       _hd231888232107_
                                                       _tl231887232109_
                                                       _e231892232112_
                                                       _hd231891232115_
                                                       _tl231890232117_
                                                       _e231895232120_
                                                       _hd231894232123_
                                                       _tl231893232125_
                                                       _e231898232128_
                                                       _hd231897232131_
                                                       _tl231896232133_
                                                       ___splice239197239198_
                                                       _target231899232136_
                                                       _tl231901232138_
                                                       _e231916232141_
                                                       _hd231915232144_
                                                       _tl231914232146_
                                                       _e231919232149_
                                                       _hd231918232152_
                                                       _tl231917232154_
                                                       _e231922232157_
                                                       _hd231921232160_
                                                       _tl231920232162_)
                                                      (___match239508239509_
                                                       _e231859232024_
                                                       _hd231858232027_
                                                       _tl231857232029_))
                                                  (___match239508239509_
                                                   _e231859232024_
                                                   _hd231858232027_
                                                   _tl231857232029_))))
                                          (___match239508239509_
                                           _e231859232024_
                                           _hd231858232027_
                                           _tl231857232029_))
                                      (___match239508239509_
                                       _e231859232024_
                                       _hd231858232027_
                                       _tl231857232029_))
                                  (___match239508239509_
                                   _e231859232024_
                                   _hd231858232027_
                                   _tl231857232029_))))
                          (___match239508239509_
                           _e231859232024_
                           _hd231858232027_
                           _tl231857232029_))))
                  (___match239508239509_
                   _e231859232024_
                   _hd231858232027_
                   _tl231857232029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239508239509_
                                                   _e231859232024_
                                                   _hd231858232027_
                                                   _tl231857232029_))
                                              (___match239508239509_
                                               _e231859232024_
                                               _hd231858232027_
                                               _tl231857232029_))
                                          (___match239508239509_
                                           _e231859232024_
                                           _hd231858232027_
                                           _tl231857232029_))))
                                  (___match239508239509_
                                   _e231859232024_
                                   _hd231858232027_
                                   _tl231857232029_))
                              (___match239508239509_
                               _e231859232024_
                               _hd231858232027_
                               _tl231857232029_))
                          (___match239508239509_
                           _e231859232024_
                           _hd231858232027_
                           _tl231857232029_))))
                  (___match239508239509_
                   _e231859232024_
                   _hd231858232027_
                   _tl231857232029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239508239509_
                                                   _e231859232024_
                                                   _hd231858232027_
                                                   _tl231857232029_))
                                              (___match239508239509_
                                               _e231859232024_
                                               _hd231858232027_
                                               _tl231857232029_))))
                                      (___match239508239509_
                                       _e231859232024_
                                       _hd231858232027_
                                       _tl231857232029_))
                                  (___match239508239509_
                                   _e231859232024_
                                   _hd231858232027_
                                   _tl231857232029_))
                              (___match239508239509_
                               _e231859232024_
                               _hd231858232027_
                               _tl231857232029_))))
                      (___match239508239509_
                       _e231859232024_
                       _hd231858232027_
                       _tl231857232029_))))
              (___match239508239509_
               _e231859232024_
               _hd231858232027_
               _tl231857232029_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239508239509_
                                                   _e231859232024_
                                                   _hd231858232027_
                                                   _tl231857232029_))))
                                          (___match239508239509_
                                           _e231859232024_
                                           _hd231858232027_
                                           _tl231857232029_))
                                      (___match239508239509_
                                       _e231859232024_
                                       _hd231858232027_
                                       _tl231857232029_))
                                  (___match239508239509_
                                   _e231859232024_
                                   _hd231858232027_
                                   _tl231857232029_))))
                          (___match239508239509_
                           _e231859232024_
                           _hd231858232027_
                           _tl231857232029_))))
                  (___match239508239509_
                   _e231859232024_
                   _hd231858232027_
                   _tl231857232029_))
              (___match239508239509_
               _e231859232024_
               _hd231858232027_
               _tl231857232029_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239508239509_
                                                   _e231859232024_
                                                   _hd231858232027_
                                                   _tl231857232029_))))
                                          (___match239508239509_
                                           _e231859232024_
                                           _hd231858232027_
                                           _tl231857232029_))))
                                  (___match239508239509_
                                   _e231859232024_
                                   _hd231858232027_
                                   _tl231857232029_))))
                          (___match239508239509_
                           _e231859232024_
                           _hd231858232027_
                           _tl231857232029_))))
                   (___match239362239363_
                    (lambda (_e231792232415_
                             _hd231791232418_
                             _tl231790232420_
                             _e231795232423_
                             _hd231794232426_
                             _tl231793232428_
                             _e231798232431_
                             _hd231797232434_
                             _tl231796232436_
                             _e231801232439_
                             _hd231800232442_
                             _tl231799232444_
                             _e231804232447_
                             _hd231803232450_
                             _tl231802232452_
                             _e231807232455_
                             _hd231806232458_
                             _tl231805232460_
                             _e231810232463_
                             _hd231809232466_
                             _tl231808232468_
                             _e231813232471_
                             _hd231812232474_
                             _tl231811232476_
                             _e231816232479_
                             _hd231815232482_
                             _tl231814232484_
                             _e231819232487_
                             _hd231818232490_
                             _tl231817232492_
                             _e231822232495_
                             _hd231821232498_
                             _tl231820232500_
                             _e231825232503_
                             _hd231824232506_
                             _tl231823232508_
                             _e231828232511_
                             _hd231827232514_
                             _tl231826232516_
                             _e231831232519_
                             _hd231830232522_
                             _tl231829232524_
                             _e231834232527_
                             _hd231833232530_
                             _tl231832232532_
                             _e231837232535_
                             _hd231836232538_
                             _tl231835232540_
                             _e231840232543_
                             _hd231839232546_
                             _tl231838232548_
                             _e231843232551_
                             _hd231842232554_
                             _tl231841232556_
                             _e231846232559_
                             _hd231845232562_
                             _tl231844232564_)
                      (let ((_L232567_ _hd231845232562_)
                            (_L232568_ _hd231836232538_)
                            (_L232569_ _hd231827232514_)
                            (_L232570_ _hd231818232490_)
                            (_L232571_ _hd231809232466_)
                            (_L232572_ _hd231794232426_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L232572_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L232571_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L232570_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L232572_ _L232567_)))
                            (___kont239193239194_
                             _L232567_
                             _L232568_
                             _L232569_
                             _L232570_
                             _L232571_
                             _L232572_)
                            (___match239374239375_
                             _e231792232415_
                             _hd231791232418_
                             _tl231790232420_
                             _e231795232423_
                             _hd231794232426_
                             _tl231793232428_)))))
                   (___match239216239217_
                    (lambda (_e231792232415_ _hd231791232418_ _tl231790232420_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231790232420_))
                          (let ((_e231795232423_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231790232420_))))
                            (let ((_tl231793232428_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231795232423_)))
                                  (_hd231794232426_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231795232423_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231793232428_))
                                  (let ((_e231798232431_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231793232428_))))
                                    (let ((_tl231796232436_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231798232431_)))
                                          (_hd231797232434_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231798232431_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231797232434_))
                                          (let ((_e231801232439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231797232434_))))
                                            (let ((_tl231799232444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231801232439_)))
                                                  (_hd231800232442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231801232439_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd231800232442_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd231800232442_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl231799232444_))
                                                          (let ((_e231804232447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl231799232444_))))
                    (let ((_tl231802232452_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231804232447_)))
                          (_hd231803232450_
                           (let ()
                             (declare (not safe))
                             (##car _e231804232447_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd231803232450_))
                          (let ((_e231807232455_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd231803232450_))))
                            (let ((_tl231805232460_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231807232455_)))
                                  (_hd231806232458_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231807232455_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd231806232458_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd231806232458_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231805232460_))
                                          (let ((_e231810232463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231805232460_))))
                                            (let ((_tl231808232468_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231810232463_)))
                                                  (_hd231809232466_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231810232463_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231808232468_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231802232452_))
                                                      (let ((_e231813232471_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231802232452_))))
                (let ((_tl231811232476_
                       (let () (declare (not safe)) (##cdr _e231813232471_)))
                      (_hd231812232474_
                       (let () (declare (not safe)) (##car _e231813232471_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231812232474_))
                      (let ((_e231816232479_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231812232474_))))
                        (let ((_tl231814232484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231816232479_)))
                              (_hd231815232482_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231816232479_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231815232482_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231815232482_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231814232484_))
                                      (let ((_e231819232487_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231814232484_))))
                                        (let ((_tl231817232492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231819232487_)))
                                              (_hd231818232490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231819232487_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231817232492_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231811232476_))
                                                  (let ((_e231822232495_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231811232476_))))
                                                    (let ((_tl231820232500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231822232495_)))
                                                          (_hd231821232498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231822232495_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231821232498_))
                                                          (let ((_e231825232503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231821232498_))))
                    (let ((_tl231823232508_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231825232503_)))
                          (_hd231824232506_
                           (let ()
                             (declare (not safe))
                             (##car _e231825232503_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231824232506_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd231824232506_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231823232508_))
                                  (let ((_e231828232511_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231823232508_))))
                                    (let ((_tl231826232516_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231828232511_)))
                                          (_hd231827232514_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231828232511_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231826232516_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231820232500_))
                                              (let ((_e231831232519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231820232500_))))
                                                (let ((_tl231829232524_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231831232519_)))
                                                      (_hd231830232522_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231831232519_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231830232522_))
                                                      (let ((_e231834232527_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231830232522_))))
                (let ((_tl231832232532_
                       (let () (declare (not safe)) (##cdr _e231834232527_)))
                      (_hd231833232530_
                       (let () (declare (not safe)) (##car _e231834232527_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd231833232530_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd231833232530_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231832232532_))
                              (let ((_e231837232535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231832232532_))))
                                (let ((_tl231835232540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231837232535_)))
                                      (_hd231836232538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231837232535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231835232540_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl231829232524_))
                                          (let ((_e231840232543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl231829232524_))))
                                            (let ((_tl231838232548_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231840232543_)))
                                                  (_hd231839232546_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231840232543_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231839232546_))
                                                  (let ((_e231843232551_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231839232546_))))
                                                    (let ((_tl231841232556_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231843232551_)))
                                                          (_hd231842232554_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231843232551_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd231842232554_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd231842232554_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231841232556_))
                          (let ((_e231846232559_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231841232556_))))
                            (let ((_tl231844232564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231846232559_)))
                                  (_hd231845232562_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231846232559_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231844232564_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231838232548_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231796232436_))
                                          (___match239362239363_
                                           _e231792232415_
                                           _hd231791232418_
                                           _tl231790232420_
                                           _e231795232423_
                                           _hd231794232426_
                                           _tl231793232428_
                                           _e231798232431_
                                           _hd231797232434_
                                           _tl231796232436_
                                           _e231801232439_
                                           _hd231800232442_
                                           _tl231799232444_
                                           _e231804232447_
                                           _hd231803232450_
                                           _tl231802232452_
                                           _e231807232455_
                                           _hd231806232458_
                                           _tl231805232460_
                                           _e231810232463_
                                           _hd231809232466_
                                           _tl231808232468_
                                           _e231813232471_
                                           _hd231812232474_
                                           _tl231811232476_
                                           _e231816232479_
                                           _hd231815232482_
                                           _tl231814232484_
                                           _e231819232487_
                                           _hd231818232490_
                                           _tl231817232492_
                                           _e231822232495_
                                           _hd231821232498_
                                           _tl231820232500_
                                           _e231825232503_
                                           _hd231824232506_
                                           _tl231823232508_
                                           _e231828232511_
                                           _hd231827232514_
                                           _tl231826232516_
                                           _e231831232519_
                                           _hd231830232522_
                                           _tl231829232524_
                                           _e231834232527_
                                           _hd231833232530_
                                           _tl231832232532_
                                           _e231837232535_
                                           _hd231836232538_
                                           _tl231835232540_
                                           _e231840232543_
                                           _hd231839232546_
                                           _tl231838232548_
                                           _e231843232551_
                                           _hd231842232554_
                                           _tl231841232556_
                                           _e231846232559_
                                           _hd231845232562_
                                           _tl231844232564_)
                                          (___match239374239375_
                                           _e231792232415_
                                           _hd231791232418_
                                           _tl231790232420_
                                           _e231795232423_
                                           _hd231794232426_
                                           _tl231793232428_))
                                      (___match239374239375_
                                       _e231792232415_
                                       _hd231791232418_
                                       _tl231790232420_
                                       _e231795232423_
                                       _hd231794232426_
                                       _tl231793232428_))
                                  (___match239374239375_
                                   _e231792232415_
                                   _hd231791232418_
                                   _tl231790232420_
                                   _e231795232423_
                                   _hd231794232426_
                                   _tl231793232428_))))
                          (___match239374239375_
                           _e231792232415_
                           _hd231791232418_
                           _tl231790232420_
                           _e231795232423_
                           _hd231794232426_
                           _tl231793232428_))
                      (___match239374239375_
                       _e231792232415_
                       _hd231791232418_
                       _tl231790232420_
                       _e231795232423_
                       _hd231794232426_
                       _tl231793232428_))
                  (___match239374239375_
                   _e231792232415_
                   _hd231791232418_
                   _tl231790232420_
                   _e231795232423_
                   _hd231794232426_
                   _tl231793232428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239374239375_
                                                   _e231792232415_
                                                   _hd231791232418_
                                                   _tl231790232420_
                                                   _e231795232423_
                                                   _hd231794232426_
                                                   _tl231793232428_))))
                                          (___match239374239375_
                                           _e231792232415_
                                           _hd231791232418_
                                           _tl231790232420_
                                           _e231795232423_
                                           _hd231794232426_
                                           _tl231793232428_))
                                      (___match239374239375_
                                       _e231792232415_
                                       _hd231791232418_
                                       _tl231790232420_
                                       _e231795232423_
                                       _hd231794232426_
                                       _tl231793232428_))))
                              (___match239374239375_
                               _e231792232415_
                               _hd231791232418_
                               _tl231790232420_
                               _e231795232423_
                               _hd231794232426_
                               _tl231793232428_))
                          (___match239374239375_
                           _e231792232415_
                           _hd231791232418_
                           _tl231790232420_
                           _e231795232423_
                           _hd231794232426_
                           _tl231793232428_))
                      (___match239374239375_
                       _e231792232415_
                       _hd231791232418_
                       _tl231790232420_
                       _e231795232423_
                       _hd231794232426_
                       _tl231793232428_))))
              (___match239374239375_
               _e231792232415_
               _hd231791232418_
               _tl231790232420_
               _e231795232423_
               _hd231794232426_
               _tl231793232428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239374239375_
                                               _e231792232415_
                                               _hd231791232418_
                                               _tl231790232420_
                                               _e231795232423_
                                               _hd231794232426_
                                               _tl231793232428_))
                                          (___match239374239375_
                                           _e231792232415_
                                           _hd231791232418_
                                           _tl231790232420_
                                           _e231795232423_
                                           _hd231794232426_
                                           _tl231793232428_))))
                                  (___match239374239375_
                                   _e231792232415_
                                   _hd231791232418_
                                   _tl231790232420_
                                   _e231795232423_
                                   _hd231794232426_
                                   _tl231793232428_))
                              (___match239374239375_
                               _e231792232415_
                               _hd231791232418_
                               _tl231790232420_
                               _e231795232423_
                               _hd231794232426_
                               _tl231793232428_))
                          (___match239374239375_
                           _e231792232415_
                           _hd231791232418_
                           _tl231790232420_
                           _e231795232423_
                           _hd231794232426_
                           _tl231793232428_))))
                  (___match239374239375_
                   _e231792232415_
                   _hd231791232418_
                   _tl231790232420_
                   _e231795232423_
                   _hd231794232426_
                   _tl231793232428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239374239375_
                                                   _e231792232415_
                                                   _hd231791232418_
                                                   _tl231790232420_
                                                   _e231795232423_
                                                   _hd231794232426_
                                                   _tl231793232428_))
                                              (___match239374239375_
                                               _e231792232415_
                                               _hd231791232418_
                                               _tl231790232420_
                                               _e231795232423_
                                               _hd231794232426_
                                               _tl231793232428_))))
                                      (___match239374239375_
                                       _e231792232415_
                                       _hd231791232418_
                                       _tl231790232420_
                                       _e231795232423_
                                       _hd231794232426_
                                       _tl231793232428_))
                                  (___match239374239375_
                                   _e231792232415_
                                   _hd231791232418_
                                   _tl231790232420_
                                   _e231795232423_
                                   _hd231794232426_
                                   _tl231793232428_))
                              (___match239374239375_
                               _e231792232415_
                               _hd231791232418_
                               _tl231790232420_
                               _e231795232423_
                               _hd231794232426_
                               _tl231793232428_))))
                      (___match239374239375_
                       _e231792232415_
                       _hd231791232418_
                       _tl231790232420_
                       _e231795232423_
                       _hd231794232426_
                       _tl231793232428_))))
              (___match239374239375_
               _e231792232415_
               _hd231791232418_
               _tl231790232420_
               _e231795232423_
               _hd231794232426_
               _tl231793232428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239374239375_
                                                   _e231792232415_
                                                   _hd231791232418_
                                                   _tl231790232420_
                                                   _e231795232423_
                                                   _hd231794232426_
                                                   _tl231793232428_))))
                                          (___match239374239375_
                                           _e231792232415_
                                           _hd231791232418_
                                           _tl231790232420_
                                           _e231795232423_
                                           _hd231794232426_
                                           _tl231793232428_))
                                      (___match239374239375_
                                       _e231792232415_
                                       _hd231791232418_
                                       _tl231790232420_
                                       _e231795232423_
                                       _hd231794232426_
                                       _tl231793232428_))
                                  (___match239374239375_
                                   _e231792232415_
                                   _hd231791232418_
                                   _tl231790232420_
                                   _e231795232423_
                                   _hd231794232426_
                                   _tl231793232428_))))
                          (___match239374239375_
                           _e231792232415_
                           _hd231791232418_
                           _tl231790232420_
                           _e231795232423_
                           _hd231794232426_
                           _tl231793232428_))))
                  (___match239374239375_
                   _e231792232415_
                   _hd231791232418_
                   _tl231790232420_
                   _e231795232423_
                   _hd231794232426_
                   _tl231793232428_))
              (___match239374239375_
               _e231792232415_
               _hd231791232418_
               _tl231790232420_
               _e231795232423_
               _hd231794232426_
               _tl231793232428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239374239375_
                                                   _e231792232415_
                                                   _hd231791232418_
                                                   _tl231790232420_
                                                   _e231795232423_
                                                   _hd231794232426_
                                                   _tl231793232428_))))
                                          (___match239374239375_
                                           _e231792232415_
                                           _hd231791232418_
                                           _tl231790232420_
                                           _e231795232423_
                                           _hd231794232426_
                                           _tl231793232428_))))
                                  (___match239374239375_
                                   _e231792232415_
                                   _hd231791232418_
                                   _tl231790232420_
                                   _e231795232423_
                                   _hd231794232426_
                                   _tl231793232428_))))
                          (___match239508239509_
                           _e231792232415_
                           _hd231791232418_
                           _tl231790232420_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239189239190_))
                  (let ((_e231783232632_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239189239190_))))
                    (let ((_tl231781232637_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231783232632_)))
                          (_hd231782232635_
                           (let ()
                             (declare (not safe))
                             (##car _e231783232632_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L232640_ _tl231781232637_))
                            (___kont239191239192_ _L232640_))
                          (___match239216239217_
                           _e231783232632_
                           _hd231782232635_
                           _tl231781232637_))))
                  (let () (declare (not safe)) (_g231778231974_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx231727_)
        (letrec ((_clause-e231729_
                  (lambda (_form231770_)
                    (let ((__obj240862
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
                       __obj240862
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form231770_))
                       (if (let ((__tmp240929
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp240929))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form231770_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form231770_))
                               '#f)
                           '#f))
                      __obj240862))))
          (let* ((_g231731231741_
                  (lambda (_g231732231738_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g231732231738_))))
                 (_g231730231767_
                  (lambda (_g231732231744_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g231732231744_))
                        (let ((_e231736231746_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g231732231744_))))
                          (let ((_hd231735231749_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231736231746_)))
                                (_tl231734231751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231736231746_))))
                            ((lambda (_L231754_)
                               (let ((_clauses231765_
                                      (map _clause-e231729_ _L231754_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses231765_)))
                             _tl231734231751_)))
                        (let ()
                          (declare (not safe))
                          (_g231731231741_ _g231732231744_))))))
            (declare (not safe))
            (_g231730231767_ _stx231727_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx231659_)
        (let* ((_g231661231678_
                (lambda (_g231662231675_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231662231675_))))
               (_g231660231724_
                (lambda (_g231662231681_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231662231681_))
                      (let ((_e231667231683_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231662231681_))))
                        (let ((_hd231666231686_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231667231683_)))
                              (_tl231665231688_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231667231683_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231665231688_))
                              (let ((_e231670231691_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231665231688_))))
                                (let ((_hd231669231694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231670231691_)))
                                      (_tl231668231696_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231670231691_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231668231696_))
                                      (let ((_e231673231699_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231668231696_))))
                                        (let ((_hd231672231702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231673231699_)))
                                              (_tl231671231704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231673231699_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231671231704_))
                                              ((lambda (_L231707_ _L231708_)
                                                 (let ((__tmp240930
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L231707_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp240930
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd231672231702_
                                               _hd231669231694_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231661231678_
                                                 _g231662231681_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231661231678_ _g231662231681_)))))
                              (let ()
                                (declare (not safe))
                                (_g231661231678_ _g231662231681_)))))
                      (let ()
                        (declare (not safe))
                        (_g231661231678_ _g231662231681_))))))
          (declare (not safe))
          (_g231660231724_ _stx231659_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx231564_)
        (let* ((___stx239517239518_ _stx231564_)
               (_g231567231587_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239517239518_)))))
          (let ((___kont239519239520_
                 (lambda (_L231631_ _L231632_)
                   (let ((_type-e231649231651_
                          (let ((__tmp240931
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L231632_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp240931
                             '#f))))
                     (if _type-e231649231651_
                         (let ((_type-e231654_ _type-e231649231651_))
                           (_type-e231654_ _stx231564_ _L231631_))
                         '#f))))
                (___kont239521239522_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239517239518_))
                (let ((_e231573231599_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239517239518_))))
                  (let ((_tl231571231604_
                         (let () (declare (not safe)) (##cdr _e231573231599_)))
                        (_hd231572231602_
                         (let ()
                           (declare (not safe))
                           (##car _e231573231599_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231571231604_))
                        (let ((_e231576231607_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231571231604_))))
                          (let ((_tl231574231612_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231576231607_)))
                                (_hd231575231610_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231576231607_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231575231610_))
                                (let ((_e231579231615_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231575231610_))))
                                  (let ((_tl231577231620_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231579231615_)))
                                        (_hd231578231618_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231579231615_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231578231618_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231578231618_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231577231620_))
                                                (let ((_e231582231623_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231577231620_))))
                                                  (let ((_tl231580231628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231582231623_)))
                                                        (_hd231581231626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231582231623_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231580231628_))
                                                        (___kont239519239520_
                                                         _tl231574231612_
                                                         _hd231581231626_)
                                                        (___kont239521239522_))))
                                                (___kont239521239522_))
                                            (___kont239521239522_))
                                        (___kont239521239522_))))
                                (___kont239521239522_))))
                        (___kont239521239522_))))
                (___kont239521239522_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx231513_)
        (let* ((_g231515231528_
                (lambda (_g231516231525_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231516231525_))))
               (_g231514231561_
                (lambda (_g231516231531_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231516231531_))
                      (let ((_e231520231533_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231516231531_))))
                        (let ((_hd231519231536_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231520231533_)))
                              (_tl231518231538_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231520231533_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231518231538_))
                              (let ((_e231523231541_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231518231538_))))
                                (let ((_hd231522231544_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231523231541_)))
                                      (_tl231521231546_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231523231541_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231521231546_))
                                      ((lambda (_L231549_)
                                         (let ((__tmp240932
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L231549_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp240932)))
                                       _hd231522231544_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231515231528_ _g231516231531_)))))
                              (let ()
                                (declare (not safe))
                                (_g231515231528_ _g231516231531_)))))
                      (let ()
                        (declare (not safe))
                        (_g231515231528_ _g231516231531_))))))
          (declare (not safe))
          (_g231514231561_ _stx231513_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form230747_)
        (let* ((___stx239555239556_ _form230747_)
               (_g230752230909_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239555239556_)))))
          (let ((___kont239557239558_
                 (lambda (_L231433_ _L231434_ _L231435_) '#t))
                (___kont239563239564_
                 (lambda (_L231221_
                          _L231222_
                          _L231223_
                          _L231224_
                          _L231225_
                          _L231226_)
                   '#t))
                (___kont239569239570_
                 (lambda (_L231017_ _L231018_ _L231019_ _L231020_) '#t))
                (___kont239571239572_ (lambda () '#f)))
            (let* ((___match239696239697_
                    (lambda (_e230871230921_
                             _hd230870230924_
                             _tl230869230926_
                             _e230874230929_
                             _hd230873230932_
                             _tl230872230934_
                             _e230877230937_
                             _hd230876230940_
                             _tl230875230942_
                             _e230880230945_
                             _hd230879230948_
                             _tl230878230950_
                             _e230883230953_
                             _hd230882230956_
                             _tl230881230958_
                             _e230886230961_
                             _hd230885230964_
                             _tl230884230966_
                             _e230889230969_
                             _hd230888230972_
                             _tl230887230974_
                             _e230892230977_
                             _hd230891230980_
                             _tl230890230982_
                             _e230895230985_
                             _hd230894230988_
                             _tl230893230990_
                             _e230898230993_
                             _hd230897230996_
                             _tl230896230998_
                             _e230901231001_
                             _hd230900231004_
                             _tl230899231006_
                             _e230904231009_
                             _hd230903231012_
                             _tl230902231014_)
                      (let ((_L231017_ _hd230903231012_)
                            (_L231018_ _hd230894230988_)
                            (_L231019_ _hd230885230964_)
                            (_L231020_ _hd230870230924_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L231020_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L231019_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L231020_ _L231017_))
                                 (let ((__tmp240933
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L231018_
                                           _L231020_))))
                                   (declare (not safe))
                                   (not __tmp240933)))
                            (___kont239569239570_
                             _L231017_
                             _L231018_
                             _L231019_
                             _L231020_)
                            (___kont239571239572_)))))
                   (___match239668239669_
                    (lambda (_e230871230921_
                             _hd230870230924_
                             _tl230869230926_
                             _e230874230929_
                             _hd230873230932_
                             _tl230872230934_
                             _e230877230937_
                             _hd230876230940_
                             _tl230875230942_
                             _e230880230945_
                             _hd230879230948_
                             _tl230878230950_
                             _e230883230953_
                             _hd230882230956_
                             _tl230881230958_
                             _e230886230961_
                             _hd230885230964_
                             _tl230884230966_
                             _e230889230969_
                             _hd230888230972_
                             _tl230887230974_
                             _e230892230977_
                             _hd230891230980_
                             _tl230890230982_
                             _e230895230985_
                             _hd230894230988_
                             _tl230893230990_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230887230974_))
                          (let ((_e230898230993_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230887230974_))))
                            (let ((_tl230896230998_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230898230993_)))
                                  (_hd230897230996_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230898230993_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230897230996_))
                                  (let ((_e230901231001_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230897230996_))))
                                    (let ((_tl230899231006_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230901231001_)))
                                          (_hd230900231004_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230901231001_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd230900231004_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd230900231004_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230899231006_))
                                                  (let ((_e230904231009_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230899231006_))))
                                                    (let ((_tl230902231014_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230904231009_)))
                                                          (_hd230903231012_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230904231009_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230902231014_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230896230998_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230872230934_))
                          (___match239696239697_
                           _e230871230921_
                           _hd230870230924_
                           _tl230869230926_
                           _e230874230929_
                           _hd230873230932_
                           _tl230872230934_
                           _e230877230937_
                           _hd230876230940_
                           _tl230875230942_
                           _e230880230945_
                           _hd230879230948_
                           _tl230878230950_
                           _e230883230953_
                           _hd230882230956_
                           _tl230881230958_
                           _e230886230961_
                           _hd230885230964_
                           _tl230884230966_
                           _e230889230969_
                           _hd230888230972_
                           _tl230887230974_
                           _e230892230977_
                           _hd230891230980_
                           _tl230890230982_
                           _e230895230985_
                           _hd230894230988_
                           _tl230893230990_
                           _e230898230993_
                           _hd230897230996_
                           _tl230896230998_
                           _e230901231001_
                           _hd230900231004_
                           _tl230899231006_
                           _e230904231009_
                           _hd230903231012_
                           _tl230902231014_)
                          (___kont239571239572_))
                      (___kont239571239572_))
                  (___kont239571239572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239571239572_))
                                              (___kont239571239572_))
                                          (___kont239571239572_))))
                                  (___kont239571239572_))))
                          (___kont239571239572_))))
                   (___match239598239599_
                    (lambda (_e230807231061_
                             _hd230806231064_
                             _tl230805231066_
                             ___splice239565239566_
                             _target230808231069_
                             _tl230810231071_)
                      (letrec ((_loop230811231074_
                                (lambda (_hd230809231077_ _arg230815231079_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230809231077_))
                                      (let ((_e230812231082_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230809231077_))))
                                        (let ((_lp-tl230814231087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230812231082_)))
                                              (_lp-hd230813231085_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230812231082_))))
                                          (let ((__tmp240948
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230813231085_
                                                         _arg230815231079_))))
                                            (declare (not safe))
                                            (_loop230811231074_
                                             _lp-tl230814231087_
                                             __tmp240948))))
                                      (let ((_arg230816231090_
                                             (reverse _arg230815231079_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230805231066_))
                                            (let ((_e230819231093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230805231066_))))
                                              (let ((_tl230817231098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230819231093_)))
                                                    (_hd230818231096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230819231093_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230818231096_))
                                                    (let ((_e230822231101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230818231096_))))
                                                      (let ((_tl230820231106_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230822231101_)))
                    (_hd230821231104_
                     (let () (declare (not safe)) (##car _e230822231101_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230821231104_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230821231104_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230820231106_))
                            (let ((_e230825231109_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230820231106_))))
                              (let ((_tl230823231114_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230825231109_)))
                                    (_hd230824231112_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230825231109_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230824231112_))
                                    (let ((_e230828231117_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230824231112_))))
                                      (let ((_tl230826231122_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230828231117_)))
                                            (_hd230827231120_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230828231117_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230827231120_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230827231120_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230826231122_))
                                                    (let ((_e230831231125_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230826231122_))))
                                                      (let ((_tl230829231130_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230831231125_)))
                    (_hd230830231128_
                     (let () (declare (not safe)) (##car _e230831231125_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230829231130_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230823231114_))
                        (let ((_e230834231133_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230823231114_))))
                          (let ((_tl230832231138_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230834231133_)))
                                (_hd230833231136_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230834231133_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230833231136_))
                                (let ((_e230837231141_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230833231136_))))
                                  (let ((_tl230835231146_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230837231141_)))
                                        (_hd230836231144_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230837231141_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230836231144_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230836231144_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230835231146_))
                                                (let ((_e230840231149_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230835231146_))))
                                                  (let ((_tl230838231154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230840231149_)))
                                                        (_hd230839231152_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230840231149_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230838231154_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl230832231138_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl230832231138_))
                              '1)
                        (let ((___splice239567239568_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230832231138_
                                  '1))))
                          (let ((_tl230843231159_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239567239568_ '1)))
                                (_target230841231157_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239567239568_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230843231159_))
                                (let ((_e230852231162_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230843231159_))))
                                  (let ((_tl230850231167_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230852231162_)))
                                        (_hd230851231165_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230852231162_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd230851231165_))
                                        (let ((_e230855231170_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd230851231165_))))
                                          (let ((_tl230853231175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230855231170_)))
                                                (_hd230854231173_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230855231170_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd230854231173_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd230854231173_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl230853231175_))
                                                        (let ((_e230858231178_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl230853231175_))))
                  (let ((_tl230856231183_
                         (let () (declare (not safe)) (##cdr _e230858231178_)))
                        (_hd230857231181_
                         (let ()
                           (declare (not safe))
                           (##car _e230858231178_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl230856231183_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl230850231167_))
                            (letrec ((_loop230844231186_
                                      (lambda (_hd230842231189_
                                               _xarg230848231191_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd230842231189_))
                                            (let ((_e230845231194_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd230842231189_))))
                                              (let ((_lp-tl230847231199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230845231194_)))
                                                    (_lp-hd230846231197_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230845231194_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd230846231197_))
                                                    (let ((_e230861231202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd230846231197_))))
                                                      (let ((_tl230859231207_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230861231202_)))
                    (_hd230860231205_
                     (let () (declare (not safe)) (##car _e230861231202_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230860231205_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd230860231205_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230859231207_))
                            (let ((_e230864231210_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230859231207_))))
                              (let ((_tl230862231215_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230864231210_)))
                                    (_hd230863231213_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230864231210_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl230862231215_))
                                    (let ((__tmp240947
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd230863231213_
                                                   _xarg230848231191_))))
                                      (declare (not safe))
                                      (_loop230844231186_
                                       _lp-tl230847231199_
                                       __tmp240947))
                                    (___match239668239669_
                                     _e230807231061_
                                     _hd230806231064_
                                     _tl230805231066_
                                     _e230819231093_
                                     _hd230818231096_
                                     _tl230817231098_
                                     _e230822231101_
                                     _hd230821231104_
                                     _tl230820231106_
                                     _e230825231109_
                                     _hd230824231112_
                                     _tl230823231114_
                                     _e230828231117_
                                     _hd230827231120_
                                     _tl230826231122_
                                     _e230831231125_
                                     _hd230830231128_
                                     _tl230829231130_
                                     _e230834231133_
                                     _hd230833231136_
                                     _tl230832231138_
                                     _e230837231141_
                                     _hd230836231144_
                                     _tl230835231146_
                                     _e230840231149_
                                     _hd230839231152_
                                     _tl230838231154_))))
                            (___match239668239669_
                             _e230807231061_
                             _hd230806231064_
                             _tl230805231066_
                             _e230819231093_
                             _hd230818231096_
                             _tl230817231098_
                             _e230822231101_
                             _hd230821231104_
                             _tl230820231106_
                             _e230825231109_
                             _hd230824231112_
                             _tl230823231114_
                             _e230828231117_
                             _hd230827231120_
                             _tl230826231122_
                             _e230831231125_
                             _hd230830231128_
                             _tl230829231130_
                             _e230834231133_
                             _hd230833231136_
                             _tl230832231138_
                             _e230837231141_
                             _hd230836231144_
                             _tl230835231146_
                             _e230840231149_
                             _hd230839231152_
                             _tl230838231154_))
                        (___match239668239669_
                         _e230807231061_
                         _hd230806231064_
                         _tl230805231066_
                         _e230819231093_
                         _hd230818231096_
                         _tl230817231098_
                         _e230822231101_
                         _hd230821231104_
                         _tl230820231106_
                         _e230825231109_
                         _hd230824231112_
                         _tl230823231114_
                         _e230828231117_
                         _hd230827231120_
                         _tl230826231122_
                         _e230831231125_
                         _hd230830231128_
                         _tl230829231130_
                         _e230834231133_
                         _hd230833231136_
                         _tl230832231138_
                         _e230837231141_
                         _hd230836231144_
                         _tl230835231146_
                         _e230840231149_
                         _hd230839231152_
                         _tl230838231154_))
                    (___match239668239669_
                     _e230807231061_
                     _hd230806231064_
                     _tl230805231066_
                     _e230819231093_
                     _hd230818231096_
                     _tl230817231098_
                     _e230822231101_
                     _hd230821231104_
                     _tl230820231106_
                     _e230825231109_
                     _hd230824231112_
                     _tl230823231114_
                     _e230828231117_
                     _hd230827231120_
                     _tl230826231122_
                     _e230831231125_
                     _hd230830231128_
                     _tl230829231130_
                     _e230834231133_
                     _hd230833231136_
                     _tl230832231138_
                     _e230837231141_
                     _hd230836231144_
                     _tl230835231146_
                     _e230840231149_
                     _hd230839231152_
                     _tl230838231154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239668239669_
                                                     _e230807231061_
                                                     _hd230806231064_
                                                     _tl230805231066_
                                                     _e230819231093_
                                                     _hd230818231096_
                                                     _tl230817231098_
                                                     _e230822231101_
                                                     _hd230821231104_
                                                     _tl230820231106_
                                                     _e230825231109_
                                                     _hd230824231112_
                                                     _tl230823231114_
                                                     _e230828231117_
                                                     _hd230827231120_
                                                     _tl230826231122_
                                                     _e230831231125_
                                                     _hd230830231128_
                                                     _tl230829231130_
                                                     _e230834231133_
                                                     _hd230833231136_
                                                     _tl230832231138_
                                                     _e230837231141_
                                                     _hd230836231144_
                                                     _tl230835231146_
                                                     _e230840231149_
                                                     _hd230839231152_
                                                     _tl230838231154_))))
                                            (let ((_xarg230849231218_
                                                   (reverse _xarg230848231191_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230817231098_))
                                                  (let ((_L231221_
                                                         _hd230857231181_)
                                                        (_L231222_
                                                         _xarg230849231218_)
                                                        (_L231223_
                                                         _hd230839231152_)
                                                        (_L231224_
                                                         _hd230830231128_)
                                                        (_L231225_
                                                         _tl230810231071_)
                                                        (_L231226_
                                                         _arg230816231090_))
                                                    (if (and (let ((__tmp240945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp240946
                                   (lambda (_g231269231272_ _g231270231274_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231269231272_
                                             _g231270231274_)))))
                              (declare (not safe))
                              (foldr1 __tmp240946 '() _L231226_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp240945))
                     (let () (declare (not safe)) (gx#identifier? _L231225_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L231224_ 'apply))
                     (fx= (length (let ((__tmp240943
                                         (lambda (_g231276231279_
                                                  _g231277231281_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231276231279_
                                                   _g231277231281_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp240943 '() _L231226_)))
                          (length (let ((__tmp240944
                                         (lambda (_g231283231286_
                                                  _g231284231288_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231283231286_
                                                   _g231284231288_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp240944 '() _L231222_))))
                     (let ((__tmp240941
                            (let ((__tmp240942
                                   (lambda (_g231290231293_ _g231291231295_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231290231293_
                                             _g231291231295_)))))
                              (declare (not safe))
                              (foldr1 __tmp240942 '() _L231226_)))
                           (__tmp240939
                            (let ((__tmp240940
                                   (lambda (_g231297231300_ _g231298231302_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231297231300_
                                             _g231298231302_)))))
                              (declare (not safe))
                              (foldr1 __tmp240940 '() _L231222_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp240941 __tmp240939))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L231225_ _L231221_))
                     (let ((__tmp240934
                            (let ((__tmp240938
                                   (lambda (_g231304231306_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g231304231306_
                                        _L231223_))))
                                  (__tmp240935
                                   (let ((__tmp240937
                                          (lambda (_g231308231311_
                                                   _g231309231313_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g231308231311_
                                                    _g231309231313_))))
                                         (__tmp240936
                                          (let ()
                                            (declare (not safe))
                                            (cons _L231225_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp240937
                                             __tmp240936
                                             _L231226_))))
                              (declare (not safe))
                              (find __tmp240938 __tmp240935))))
                       (declare (not safe))
                       (not __tmp240934)))
                (___kont239563239564_
                 _L231221_
                 _L231222_
                 _L231223_
                 _L231224_
                 _L231225_
                 _L231226_)
                (___match239668239669_
                 _e230807231061_
                 _hd230806231064_
                 _tl230805231066_
                 _e230819231093_
                 _hd230818231096_
                 _tl230817231098_
                 _e230822231101_
                 _hd230821231104_
                 _tl230820231106_
                 _e230825231109_
                 _hd230824231112_
                 _tl230823231114_
                 _e230828231117_
                 _hd230827231120_
                 _tl230826231122_
                 _e230831231125_
                 _hd230830231128_
                 _tl230829231130_
                 _e230834231133_
                 _hd230833231136_
                 _tl230832231138_
                 _e230837231141_
                 _hd230836231144_
                 _tl230835231146_
                 _e230840231149_
                 _hd230839231152_
                 _tl230838231154_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239668239669_
                                                   _e230807231061_
                                                   _hd230806231064_
                                                   _tl230805231066_
                                                   _e230819231093_
                                                   _hd230818231096_
                                                   _tl230817231098_
                                                   _e230822231101_
                                                   _hd230821231104_
                                                   _tl230820231106_
                                                   _e230825231109_
                                                   _hd230824231112_
                                                   _tl230823231114_
                                                   _e230828231117_
                                                   _hd230827231120_
                                                   _tl230826231122_
                                                   _e230831231125_
                                                   _hd230830231128_
                                                   _tl230829231130_
                                                   _e230834231133_
                                                   _hd230833231136_
                                                   _tl230832231138_
                                                   _e230837231141_
                                                   _hd230836231144_
                                                   _tl230835231146_
                                                   _e230840231149_
                                                   _hd230839231152_
                                                   _tl230838231154_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop230844231186_ _target230841231157_ '())))
                            (___match239668239669_
                             _e230807231061_
                             _hd230806231064_
                             _tl230805231066_
                             _e230819231093_
                             _hd230818231096_
                             _tl230817231098_
                             _e230822231101_
                             _hd230821231104_
                             _tl230820231106_
                             _e230825231109_
                             _hd230824231112_
                             _tl230823231114_
                             _e230828231117_
                             _hd230827231120_
                             _tl230826231122_
                             _e230831231125_
                             _hd230830231128_
                             _tl230829231130_
                             _e230834231133_
                             _hd230833231136_
                             _tl230832231138_
                             _e230837231141_
                             _hd230836231144_
                             _tl230835231146_
                             _e230840231149_
                             _hd230839231152_
                             _tl230838231154_))
                        (___match239668239669_
                         _e230807231061_
                         _hd230806231064_
                         _tl230805231066_
                         _e230819231093_
                         _hd230818231096_
                         _tl230817231098_
                         _e230822231101_
                         _hd230821231104_
                         _tl230820231106_
                         _e230825231109_
                         _hd230824231112_
                         _tl230823231114_
                         _e230828231117_
                         _hd230827231120_
                         _tl230826231122_
                         _e230831231125_
                         _hd230830231128_
                         _tl230829231130_
                         _e230834231133_
                         _hd230833231136_
                         _tl230832231138_
                         _e230837231141_
                         _hd230836231144_
                         _tl230835231146_
                         _e230840231149_
                         _hd230839231152_
                         _tl230838231154_))))
                (___match239668239669_
                 _e230807231061_
                 _hd230806231064_
                 _tl230805231066_
                 _e230819231093_
                 _hd230818231096_
                 _tl230817231098_
                 _e230822231101_
                 _hd230821231104_
                 _tl230820231106_
                 _e230825231109_
                 _hd230824231112_
                 _tl230823231114_
                 _e230828231117_
                 _hd230827231120_
                 _tl230826231122_
                 _e230831231125_
                 _hd230830231128_
                 _tl230829231130_
                 _e230834231133_
                 _hd230833231136_
                 _tl230832231138_
                 _e230837231141_
                 _hd230836231144_
                 _tl230835231146_
                 _e230840231149_
                 _hd230839231152_
                 _tl230838231154_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239668239669_
                                                     _e230807231061_
                                                     _hd230806231064_
                                                     _tl230805231066_
                                                     _e230819231093_
                                                     _hd230818231096_
                                                     _tl230817231098_
                                                     _e230822231101_
                                                     _hd230821231104_
                                                     _tl230820231106_
                                                     _e230825231109_
                                                     _hd230824231112_
                                                     _tl230823231114_
                                                     _e230828231117_
                                                     _hd230827231120_
                                                     _tl230826231122_
                                                     _e230831231125_
                                                     _hd230830231128_
                                                     _tl230829231130_
                                                     _e230834231133_
                                                     _hd230833231136_
                                                     _tl230832231138_
                                                     _e230837231141_
                                                     _hd230836231144_
                                                     _tl230835231146_
                                                     _e230840231149_
                                                     _hd230839231152_
                                                     _tl230838231154_))
                                                (___match239668239669_
                                                 _e230807231061_
                                                 _hd230806231064_
                                                 _tl230805231066_
                                                 _e230819231093_
                                                 _hd230818231096_
                                                 _tl230817231098_
                                                 _e230822231101_
                                                 _hd230821231104_
                                                 _tl230820231106_
                                                 _e230825231109_
                                                 _hd230824231112_
                                                 _tl230823231114_
                                                 _e230828231117_
                                                 _hd230827231120_
                                                 _tl230826231122_
                                                 _e230831231125_
                                                 _hd230830231128_
                                                 _tl230829231130_
                                                 _e230834231133_
                                                 _hd230833231136_
                                                 _tl230832231138_
                                                 _e230837231141_
                                                 _hd230836231144_
                                                 _tl230835231146_
                                                 _e230840231149_
                                                 _hd230839231152_
                                                 _tl230838231154_))))
                                        (___match239668239669_
                                         _e230807231061_
                                         _hd230806231064_
                                         _tl230805231066_
                                         _e230819231093_
                                         _hd230818231096_
                                         _tl230817231098_
                                         _e230822231101_
                                         _hd230821231104_
                                         _tl230820231106_
                                         _e230825231109_
                                         _hd230824231112_
                                         _tl230823231114_
                                         _e230828231117_
                                         _hd230827231120_
                                         _tl230826231122_
                                         _e230831231125_
                                         _hd230830231128_
                                         _tl230829231130_
                                         _e230834231133_
                                         _hd230833231136_
                                         _tl230832231138_
                                         _e230837231141_
                                         _hd230836231144_
                                         _tl230835231146_
                                         _e230840231149_
                                         _hd230839231152_
                                         _tl230838231154_))))
                                (___match239668239669_
                                 _e230807231061_
                                 _hd230806231064_
                                 _tl230805231066_
                                 _e230819231093_
                                 _hd230818231096_
                                 _tl230817231098_
                                 _e230822231101_
                                 _hd230821231104_
                                 _tl230820231106_
                                 _e230825231109_
                                 _hd230824231112_
                                 _tl230823231114_
                                 _e230828231117_
                                 _hd230827231120_
                                 _tl230826231122_
                                 _e230831231125_
                                 _hd230830231128_
                                 _tl230829231130_
                                 _e230834231133_
                                 _hd230833231136_
                                 _tl230832231138_
                                 _e230837231141_
                                 _hd230836231144_
                                 _tl230835231146_
                                 _e230840231149_
                                 _hd230839231152_
                                 _tl230838231154_))))
                        (___match239668239669_
                         _e230807231061_
                         _hd230806231064_
                         _tl230805231066_
                         _e230819231093_
                         _hd230818231096_
                         _tl230817231098_
                         _e230822231101_
                         _hd230821231104_
                         _tl230820231106_
                         _e230825231109_
                         _hd230824231112_
                         _tl230823231114_
                         _e230828231117_
                         _hd230827231120_
                         _tl230826231122_
                         _e230831231125_
                         _hd230830231128_
                         _tl230829231130_
                         _e230834231133_
                         _hd230833231136_
                         _tl230832231138_
                         _e230837231141_
                         _hd230836231144_
                         _tl230835231146_
                         _e230840231149_
                         _hd230839231152_
                         _tl230838231154_))
                    (___match239668239669_
                     _e230807231061_
                     _hd230806231064_
                     _tl230805231066_
                     _e230819231093_
                     _hd230818231096_
                     _tl230817231098_
                     _e230822231101_
                     _hd230821231104_
                     _tl230820231106_
                     _e230825231109_
                     _hd230824231112_
                     _tl230823231114_
                     _e230828231117_
                     _hd230827231120_
                     _tl230826231122_
                     _e230831231125_
                     _hd230830231128_
                     _tl230829231130_
                     _e230834231133_
                     _hd230833231136_
                     _tl230832231138_
                     _e230837231141_
                     _hd230836231144_
                     _tl230835231146_
                     _e230840231149_
                     _hd230839231152_
                     _tl230838231154_))
                (___kont239571239572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239571239572_))
                                            (___kont239571239572_))
                                        (___kont239571239572_))))
                                (___kont239571239572_))))
                        (___kont239571239572_))
                    (___kont239571239572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239571239572_))
                                                (___kont239571239572_))
                                            (___kont239571239572_))))
                                    (___kont239571239572_))))
                            (___kont239571239572_))
                        (___kont239571239572_))
                    (___kont239571239572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239571239572_))))
                                            (___kont239571239572_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230811231074_ _target230808231069_ '())))))
                   (___match239586239587_
                    (lambda (_e230759231321_
                             _hd230758231324_
                             _tl230757231326_
                             ___splice239559239560_
                             _target230760231329_
                             _tl230762231331_)
                      (letrec ((_loop230763231334_
                                (lambda (_hd230761231337_ _arg230767231339_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230761231337_))
                                      (let ((_e230764231342_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230761231337_))))
                                        (let ((_lp-tl230766231347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230764231342_)))
                                              (_lp-hd230765231345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230764231342_))))
                                          (let ((__tmp240962
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230765231345_
                                                         _arg230767231339_))))
                                            (declare (not safe))
                                            (_loop230763231334_
                                             _lp-tl230766231347_
                                             __tmp240962))))
                                      (let ((_arg230768231350_
                                             (reverse _arg230767231339_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230757231326_))
                                            (let ((_e230771231353_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230757231326_))))
                                              (let ((_tl230769231358_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230771231353_)))
                                                    (_hd230770231356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230771231353_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230770231356_))
                                                    (let ((_e230774231361_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230770231356_))))
                                                      (let ((_tl230772231366_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230774231361_)))
                    (_hd230773231364_
                     (let () (declare (not safe)) (##car _e230774231361_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230773231364_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230773231364_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230772231366_))
                            (let ((_e230777231369_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230772231366_))))
                              (let ((_tl230775231374_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230777231369_)))
                                    (_hd230776231372_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230777231369_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230776231372_))
                                    (let ((_e230780231377_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230776231372_))))
                                      (let ((_tl230778231382_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230780231377_)))
                                            (_hd230779231380_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230780231377_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230779231380_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230779231380_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230778231382_))
                                                    (let ((_e230783231385_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230778231382_))))
                                                      (let ((_tl230781231390_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230783231385_)))
                    (_hd230782231388_
                     (let () (declare (not safe)) (##car _e230783231385_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230781231390_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230775231374_))
                        (let ((___splice239561239562_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230775231374_
                                  '0))))
                          (let ((_tl230786231395_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239561239562_ '1)))
                                (_target230784231393_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239561239562_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230786231395_))
                                (letrec ((_loop230787231398_
                                          (lambda (_hd230785231401_
                                                   _xarg230791231403_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230785231401_))
                                                (let ((_e230788231406_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230785231401_))))
                                                  (let ((_lp-tl230790231411_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230788231406_)))
                                                        (_lp-hd230789231409_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230788231406_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230789231409_))
                                                        (let ((_e230795231414_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230789231409_))))
                  (let ((_tl230793231419_
                         (let () (declare (not safe)) (##cdr _e230795231414_)))
                        (_hd230794231417_
                         (let ()
                           (declare (not safe))
                           (##car _e230795231414_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230794231417_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230794231417_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230793231419_))
                                (let ((_e230798231422_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230793231419_))))
                                  (let ((_tl230796231427_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230798231422_)))
                                        (_hd230797231425_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230798231422_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230796231427_))
                                        (let ((__tmp240961
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230797231425_
                                                       _xarg230791231403_))))
                                          (declare (not safe))
                                          (_loop230787231398_
                                           _lp-tl230790231411_
                                           __tmp240961))
                                        (___match239598239599_
                                         _e230759231321_
                                         _hd230758231324_
                                         _tl230757231326_
                                         ___splice239559239560_
                                         _target230760231329_
                                         _tl230762231331_))))
                                (___match239598239599_
                                 _e230759231321_
                                 _hd230758231324_
                                 _tl230757231326_
                                 ___splice239559239560_
                                 _target230760231329_
                                 _tl230762231331_))
                            (___match239598239599_
                             _e230759231321_
                             _hd230758231324_
                             _tl230757231326_
                             ___splice239559239560_
                             _target230760231329_
                             _tl230762231331_))
                        (___match239598239599_
                         _e230759231321_
                         _hd230758231324_
                         _tl230757231326_
                         ___splice239559239560_
                         _target230760231329_
                         _tl230762231331_))))
                (___match239598239599_
                 _e230759231321_
                 _hd230758231324_
                 _tl230757231326_
                 ___splice239559239560_
                 _target230760231329_
                 _tl230762231331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230792231430_
                                                       (reverse _xarg230791231403_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230769231358_))
                                                      (let ((_L231433_
                                                             _xarg230792231430_)
                                                            (_L231434_
                                                             _hd230782231388_)
                                                            (_L231435_
                                                             _arg230768231350_))
                                                        (if (and (let ((__tmp240959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp240960
                                       (lambda (_g231463231466_
                                                _g231464231468_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231463231466_
                                                 _g231464231468_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp240960 '() _L231435_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp240959))
                         (fx= (length (let ((__tmp240957
                                             (lambda (_g231470231473_
                                                      _g231471231475_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231470231473_
                                                       _g231471231475_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp240957 '() _L231435_)))
                              (length (let ((__tmp240958
                                             (lambda (_g231477231480_
                                                      _g231478231482_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231477231480_
                                                       _g231478231482_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp240958 '() _L231433_))))
                         (let ((__tmp240955
                                (let ((__tmp240956
                                       (lambda (_g231484231487_
                                                _g231485231489_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231484231487_
                                                 _g231485231489_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp240956 '() _L231435_)))
                               (__tmp240953
                                (let ((__tmp240954
                                       (lambda (_g231491231494_
                                                _g231492231496_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231491231494_
                                                 _g231492231496_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp240954 '() _L231433_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp240955
                                    __tmp240953))
                         (let ((__tmp240949
                                (let ((__tmp240952
                                       (lambda (_g231498231500_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g231498231500_
                                            _L231434_))))
                                      (__tmp240950
                                       (let ((__tmp240951
                                              (lambda (_g231502231505_
                                                       _g231503231507_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g231502231505_
                                                        _g231503231507_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp240951 '() _L231435_))))
                                  (declare (not safe))
                                  (find __tmp240952 __tmp240950))))
                           (declare (not safe))
                           (not __tmp240949)))
                    (___kont239557239558_ _L231433_ _L231434_ _L231435_)
                    (___match239598239599_
                     _e230759231321_
                     _hd230758231324_
                     _tl230757231326_
                     ___splice239559239560_
                     _target230760231329_
                     _tl230762231331_)))
              (___match239598239599_
               _e230759231321_
               _hd230758231324_
               _tl230757231326_
               ___splice239559239560_
               _target230760231329_
               _tl230762231331_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop230787231398_
                                     _target230784231393_
                                     '())))
                                (___match239598239599_
                                 _e230759231321_
                                 _hd230758231324_
                                 _tl230757231326_
                                 ___splice239559239560_
                                 _target230760231329_
                                 _tl230762231331_))))
                        (___match239598239599_
                         _e230759231321_
                         _hd230758231324_
                         _tl230757231326_
                         ___splice239559239560_
                         _target230760231329_
                         _tl230762231331_))
                    (___match239598239599_
                     _e230759231321_
                     _hd230758231324_
                     _tl230757231326_
                     ___splice239559239560_
                     _target230760231329_
                     _tl230762231331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239598239599_
                                                     _e230759231321_
                                                     _hd230758231324_
                                                     _tl230757231326_
                                                     ___splice239559239560_
                                                     _target230760231329_
                                                     _tl230762231331_))
                                                (___match239598239599_
                                                 _e230759231321_
                                                 _hd230758231324_
                                                 _tl230757231326_
                                                 ___splice239559239560_
                                                 _target230760231329_
                                                 _tl230762231331_))
                                            (___match239598239599_
                                             _e230759231321_
                                             _hd230758231324_
                                             _tl230757231326_
                                             ___splice239559239560_
                                             _target230760231329_
                                             _tl230762231331_))))
                                    (___match239598239599_
                                     _e230759231321_
                                     _hd230758231324_
                                     _tl230757231326_
                                     ___splice239559239560_
                                     _target230760231329_
                                     _tl230762231331_))))
                            (___match239598239599_
                             _e230759231321_
                             _hd230758231324_
                             _tl230757231326_
                             ___splice239559239560_
                             _target230760231329_
                             _tl230762231331_))
                        (___match239598239599_
                         _e230759231321_
                         _hd230758231324_
                         _tl230757231326_
                         ___splice239559239560_
                         _target230760231329_
                         _tl230762231331_))
                    (___match239598239599_
                     _e230759231321_
                     _hd230758231324_
                     _tl230757231326_
                     ___splice239559239560_
                     _target230760231329_
                     _tl230762231331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239598239599_
                                                     _e230759231321_
                                                     _hd230758231324_
                                                     _tl230757231326_
                                                     ___splice239559239560_
                                                     _target230760231329_
                                                     _tl230762231331_))))
                                            (___match239598239599_
                                             _e230759231321_
                                             _hd230758231324_
                                             _tl230757231326_
                                             ___splice239559239560_
                                             _target230760231329_
                                             _tl230762231331_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230763231334_ _target230760231329_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239555239556_))
                  (let ((_e230759231321_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239555239556_))))
                    (let ((_tl230757231326_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230759231321_)))
                          (_hd230758231324_
                           (let ()
                             (declare (not safe))
                             (##car _e230759231321_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230758231324_))
                          (let ((___splice239559239560_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230758231324_
                                    '0))))
                            (let ((_tl230762231331_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239559239560_ '1)))
                                  (_target230760231329_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239559239560_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230762231331_))
                                  (___match239586239587_
                                   _e230759231321_
                                   _hd230758231324_
                                   _tl230757231326_
                                   ___splice239559239560_
                                   _target230760231329_
                                   _tl230762231331_)
                                  (___match239598239599_
                                   _e230759231321_
                                   _hd230758231324_
                                   _tl230757231326_
                                   ___splice239559239560_
                                   _target230760231329_
                                   _tl230762231331_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230757231326_))
                              (let ((_e230874230929_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230757231326_))))
                                (let ((_tl230872230934_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230874230929_)))
                                      (_hd230873230932_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230874230929_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230873230932_))
                                      (let ((_e230877230937_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230873230932_))))
                                        (let ((_tl230875230942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230877230937_)))
                                              (_hd230876230940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230877230937_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd230876230940_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd230876230940_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230875230942_))
                                                      (let ((_e230880230945_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230875230942_))))
                (let ((_tl230878230950_
                       (let () (declare (not safe)) (##cdr _e230880230945_)))
                      (_hd230879230948_
                       (let () (declare (not safe)) (##car _e230880230945_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230879230948_))
                      (let ((_e230883230953_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230879230948_))))
                        (let ((_tl230881230958_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230883230953_)))
                              (_hd230882230956_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230883230953_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230882230956_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230882230956_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230881230958_))
                                      (let ((_e230886230961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230881230958_))))
                                        (let ((_tl230884230966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230886230961_)))
                                              (_hd230885230964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230886230961_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230884230966_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230878230950_))
                                                  (let ((_e230889230969_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230878230950_))))
                                                    (let ((_tl230887230974_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230889230969_)))
                                                          (_hd230888230972_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230889230969_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230888230972_))
                                                          (let ((_e230892230977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230888230972_))))
                    (let ((_tl230890230982_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230892230977_)))
                          (_hd230891230980_
                           (let ()
                             (declare (not safe))
                             (##car _e230892230977_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230891230980_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd230891230980_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230890230982_))
                                  (let ((_e230895230985_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230890230982_))))
                                    (let ((_tl230893230990_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230895230985_)))
                                          (_hd230894230988_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230895230985_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230893230990_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230887230974_))
                                              (let ((_e230898230993_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230887230974_))))
                                                (let ((_tl230896230998_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230898230993_)))
                                                      (_hd230897230996_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230898230993_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230897230996_))
                                                      (let ((_e230901231001_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230897230996_))))
                (let ((_tl230899231006_
                       (let () (declare (not safe)) (##cdr _e230901231001_)))
                      (_hd230900231004_
                       (let () (declare (not safe)) (##car _e230901231001_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd230900231004_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd230900231004_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230899231006_))
                              (let ((_e230904231009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230899231006_))))
                                (let ((_tl230902231014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230904231009_)))
                                      (_hd230903231012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230904231009_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230902231014_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230896230998_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230872230934_))
                                              (___match239696239697_
                                               _e230759231321_
                                               _hd230758231324_
                                               _tl230757231326_
                                               _e230874230929_
                                               _hd230873230932_
                                               _tl230872230934_
                                               _e230877230937_
                                               _hd230876230940_
                                               _tl230875230942_
                                               _e230880230945_
                                               _hd230879230948_
                                               _tl230878230950_
                                               _e230883230953_
                                               _hd230882230956_
                                               _tl230881230958_
                                               _e230886230961_
                                               _hd230885230964_
                                               _tl230884230966_
                                               _e230889230969_
                                               _hd230888230972_
                                               _tl230887230974_
                                               _e230892230977_
                                               _hd230891230980_
                                               _tl230890230982_
                                               _e230895230985_
                                               _hd230894230988_
                                               _tl230893230990_
                                               _e230898230993_
                                               _hd230897230996_
                                               _tl230896230998_
                                               _e230901231001_
                                               _hd230900231004_
                                               _tl230899231006_
                                               _e230904231009_
                                               _hd230903231012_
                                               _tl230902231014_)
                                              (___kont239571239572_))
                                          (___kont239571239572_))
                                      (___kont239571239572_))))
                              (___kont239571239572_))
                          (___kont239571239572_))
                      (___kont239571239572_))))
              (___kont239571239572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont239571239572_))
                                          (___kont239571239572_))))
                                  (___kont239571239572_))
                              (___kont239571239572_))
                          (___kont239571239572_))))
                  (___kont239571239572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239571239572_))
                                              (___kont239571239572_))))
                                      (___kont239571239572_))
                                  (___kont239571239572_))
                              (___kont239571239572_))))
                      (___kont239571239572_))))
              (___kont239571239572_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239571239572_))
                                              (___kont239571239572_))))
                                      (___kont239571239572_))))
                              (___kont239571239572_)))))
                  (___kont239571239572_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form230215_)
        (let* ((___stx239699239700_ _form230215_)
               (_g230219230343_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239699239700_)))))
          (let ((___kont239701239702_
                 (lambda (_L230713_ _L230714_ _L230715_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230714_))))
                (___kont239707239708_
                 (lambda (_L230561_ _L230562_ _L230563_ _L230564_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230561_))))
                (___kont239711239712_
                 (lambda (_L230428_ _L230429_ _L230430_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230428_)))))
            (let* ((___match239808239809_
                    (lambda (_e230311230348_
                             _hd230310230351_
                             _tl230309230353_
                             _e230314230356_
                             _hd230313230359_
                             _tl230312230361_
                             _e230317230364_
                             _hd230316230367_
                             _tl230315230369_
                             _e230320230372_
                             _hd230319230375_
                             _tl230318230377_
                             _e230323230380_
                             _hd230322230383_
                             _tl230321230385_
                             _e230326230388_
                             _hd230325230391_
                             _tl230324230393_
                             _e230329230396_
                             _hd230328230399_
                             _tl230327230401_
                             _e230332230404_
                             _hd230331230407_
                             _tl230330230409_
                             _e230335230412_
                             _hd230334230415_
                             _tl230333230417_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230327230401_))
                          (let ((_e230338230420_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230327230401_))))
                            (let ((_tl230336230425_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230338230420_)))
                                  (_hd230337230423_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230338230420_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230336230425_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230312230361_))
                                      (___kont239711239712_
                                       _hd230334230415_
                                       _hd230325230391_
                                       _hd230310230351_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230219230343_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230219230343_)))))
                          (let () (declare (not safe)) (_g230219230343_)))))
                   (___match239738239739_
                    (lambda (_e230272230465_
                             _hd230271230468_
                             _tl230270230470_
                             ___splice239709239710_
                             _target230273230473_
                             _tl230275230475_)
                      (letrec ((_loop230276230478_
                                (lambda (_hd230274230481_ _arg230280230483_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230274230481_))
                                      (let ((_e230277230486_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230274230481_))))
                                        (let ((_lp-tl230279230491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230277230486_)))
                                              (_lp-hd230278230489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230277230486_))))
                                          (let ((__tmp240963
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230278230489_
                                                         _arg230280230483_))))
                                            (declare (not safe))
                                            (_loop230276230478_
                                             _lp-tl230279230491_
                                             __tmp240963))))
                                      (let ((_arg230281230494_
                                             (reverse _arg230280230483_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230270230470_))
                                            (let ((_e230284230497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230270230470_))))
                                              (let ((_tl230282230502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230284230497_)))
                                                    (_hd230283230500_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230284230497_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230283230500_))
                                                    (let ((_e230287230505_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230283230500_))))
                                                      (let ((_tl230285230510_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230287230505_)))
                    (_hd230286230508_
                     (let () (declare (not safe)) (##car _e230287230505_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230286230508_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230286230508_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230285230510_))
                            (let ((_e230290230513_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230285230510_))))
                              (let ((_tl230288230518_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230290230513_)))
                                    (_hd230289230516_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230290230513_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230289230516_))
                                    (let ((_e230293230521_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230289230516_))))
                                      (let ((_tl230291230526_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230293230521_)))
                                            (_hd230292230524_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230293230521_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230292230524_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230292230524_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230291230526_))
                                                    (let ((_e230296230529_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230291230526_))))
                                                      (let ((_tl230294230534_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230296230529_)))
                    (_hd230295230532_
                     (let () (declare (not safe)) (##car _e230296230529_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230294230534_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230288230518_))
                        (let ((_e230299230537_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230288230518_))))
                          (let ((_tl230297230542_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230299230537_)))
                                (_hd230298230540_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230299230537_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230298230540_))
                                (let ((_e230302230545_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230298230540_))))
                                  (let ((_tl230300230550_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230302230545_)))
                                        (_hd230301230548_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230302230545_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230301230548_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230301230548_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230300230550_))
                                                (let ((_e230305230553_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230300230550_))))
                                                  (let ((_tl230303230558_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230305230553_)))
                                                        (_hd230304230556_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230305230553_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230303230558_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl230282230502_))
                                                            (___kont239707239708_
                                                             _hd230304230556_
                                                             _hd230295230532_
                                                             _tl230275230475_
                                                             _arg230281230494_)
                                                            (___match239808239809_
                                                             _e230272230465_
                                                             _hd230271230468_
                                                             _tl230270230470_
                                                             _e230284230497_
                                                             _hd230283230500_
                                                             _tl230282230502_
                                                             _e230287230505_
                                                             _hd230286230508_
                                                             _tl230285230510_
                                                             _e230290230513_
                                                             _hd230289230516_
                                                             _tl230288230518_
                                                             _e230293230521_
                                                             _hd230292230524_
                                                             _tl230291230526_
                                                             _e230296230529_
                                                             _hd230295230532_
                                                             _tl230294230534_
                                                             _e230299230537_
                                                             _hd230298230540_
                                                             _tl230297230542_
                                                             _e230302230545_
                                                             _hd230301230548_
                                                             _tl230300230550_
                                                             _e230305230553_
                                                             _hd230304230556_
                                                             _tl230303230558_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230219230343_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230219230343_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230219230343_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g230219230343_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230219230343_)))))
                        (let () (declare (not safe)) (_g230219230343_)))
                    (let () (declare (not safe)) (_g230219230343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230219230343_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230219230343_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230219230343_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g230219230343_)))))
                            (let () (declare (not safe)) (_g230219230343_)))
                        (let () (declare (not safe)) (_g230219230343_)))
                    (let () (declare (not safe)) (_g230219230343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230219230343_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g230219230343_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop230276230478_ _target230273230473_ '())))))
                   (___match239726239727_
                    (lambda (_e230226230601_
                             _hd230225230604_
                             _tl230224230606_
                             ___splice239703239704_
                             _target230227230609_
                             _tl230229230611_)
                      (letrec ((_loop230230230614_
                                (lambda (_hd230228230617_ _arg230234230619_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230228230617_))
                                      (let ((_e230231230622_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230228230617_))))
                                        (let ((_lp-tl230233230627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230231230622_)))
                                              (_lp-hd230232230625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230231230622_))))
                                          (let ((__tmp240965
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230232230625_
                                                         _arg230234230619_))))
                                            (declare (not safe))
                                            (_loop230230230614_
                                             _lp-tl230233230627_
                                             __tmp240965))))
                                      (let ((_arg230235230630_
                                             (reverse _arg230234230619_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230224230606_))
                                            (let ((_e230238230633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230224230606_))))
                                              (let ((_tl230236230638_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230238230633_)))
                                                    (_hd230237230636_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230238230633_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230237230636_))
                                                    (let ((_e230241230641_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230237230636_))))
                                                      (let ((_tl230239230646_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230241230641_)))
                    (_hd230240230644_
                     (let () (declare (not safe)) (##car _e230241230641_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230240230644_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230240230644_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230239230646_))
                            (let ((_e230244230649_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230239230646_))))
                              (let ((_tl230242230654_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230244230649_)))
                                    (_hd230243230652_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230244230649_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230243230652_))
                                    (let ((_e230247230657_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230243230652_))))
                                      (let ((_tl230245230662_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230247230657_)))
                                            (_hd230246230660_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230247230657_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230246230660_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230246230660_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230245230662_))
                                                    (let ((_e230250230665_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230245230662_))))
                                                      (let ((_tl230248230670_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230250230665_)))
                    (_hd230249230668_
                     (let () (declare (not safe)) (##car _e230250230665_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230248230670_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230242230654_))
                        (let ((___splice239705239706_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230242230654_
                                  '0))))
                          (let ((_tl230253230675_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239705239706_ '1)))
                                (_target230251230673_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239705239706_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230253230675_))
                                (letrec ((_loop230254230678_
                                          (lambda (_hd230252230681_
                                                   _xarg230258230683_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230252230681_))
                                                (let ((_e230255230686_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230252230681_))))
                                                  (let ((_lp-tl230257230691_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230255230686_)))
                                                        (_lp-hd230256230689_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230255230686_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230256230689_))
                                                        (let ((_e230262230694_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230256230689_))))
                  (let ((_tl230260230699_
                         (let () (declare (not safe)) (##cdr _e230262230694_)))
                        (_hd230261230697_
                         (let ()
                           (declare (not safe))
                           (##car _e230262230694_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230261230697_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230261230697_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230260230699_))
                                (let ((_e230265230702_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230260230699_))))
                                  (let ((_tl230263230707_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230265230702_)))
                                        (_hd230264230705_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230265230702_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230263230707_))
                                        (let ((__tmp240964
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230264230705_
                                                       _xarg230258230683_))))
                                          (declare (not safe))
                                          (_loop230254230678_
                                           _lp-tl230257230691_
                                           __tmp240964))
                                        (___match239738239739_
                                         _e230226230601_
                                         _hd230225230604_
                                         _tl230224230606_
                                         ___splice239703239704_
                                         _target230227230609_
                                         _tl230229230611_))))
                                (___match239738239739_
                                 _e230226230601_
                                 _hd230225230604_
                                 _tl230224230606_
                                 ___splice239703239704_
                                 _target230227230609_
                                 _tl230229230611_))
                            (___match239738239739_
                             _e230226230601_
                             _hd230225230604_
                             _tl230224230606_
                             ___splice239703239704_
                             _target230227230609_
                             _tl230229230611_))
                        (___match239738239739_
                         _e230226230601_
                         _hd230225230604_
                         _tl230224230606_
                         ___splice239703239704_
                         _target230227230609_
                         _tl230229230611_))))
                (___match239738239739_
                 _e230226230601_
                 _hd230225230604_
                 _tl230224230606_
                 ___splice239703239704_
                 _target230227230609_
                 _tl230229230611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230259230710_
                                                       (reverse _xarg230258230683_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230236230638_))
                                                      (___kont239701239702_
                                                       _xarg230259230710_
                                                       _hd230249230668_
                                                       _arg230235230630_)
                                                      (___match239738239739_
                                                       _e230226230601_
                                                       _hd230225230604_
                                                       _tl230224230606_
                                                       ___splice239703239704_
                                                       _target230227230609_
                                                       _tl230229230611_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop230254230678_
                                     _target230251230673_
                                     '())))
                                (___match239738239739_
                                 _e230226230601_
                                 _hd230225230604_
                                 _tl230224230606_
                                 ___splice239703239704_
                                 _target230227230609_
                                 _tl230229230611_))))
                        (___match239738239739_
                         _e230226230601_
                         _hd230225230604_
                         _tl230224230606_
                         ___splice239703239704_
                         _target230227230609_
                         _tl230229230611_))
                    (___match239738239739_
                     _e230226230601_
                     _hd230225230604_
                     _tl230224230606_
                     ___splice239703239704_
                     _target230227230609_
                     _tl230229230611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239738239739_
                                                     _e230226230601_
                                                     _hd230225230604_
                                                     _tl230224230606_
                                                     ___splice239703239704_
                                                     _target230227230609_
                                                     _tl230229230611_))
                                                (___match239738239739_
                                                 _e230226230601_
                                                 _hd230225230604_
                                                 _tl230224230606_
                                                 ___splice239703239704_
                                                 _target230227230609_
                                                 _tl230229230611_))
                                            (___match239738239739_
                                             _e230226230601_
                                             _hd230225230604_
                                             _tl230224230606_
                                             ___splice239703239704_
                                             _target230227230609_
                                             _tl230229230611_))))
                                    (___match239738239739_
                                     _e230226230601_
                                     _hd230225230604_
                                     _tl230224230606_
                                     ___splice239703239704_
                                     _target230227230609_
                                     _tl230229230611_))))
                            (___match239738239739_
                             _e230226230601_
                             _hd230225230604_
                             _tl230224230606_
                             ___splice239703239704_
                             _target230227230609_
                             _tl230229230611_))
                        (___match239738239739_
                         _e230226230601_
                         _hd230225230604_
                         _tl230224230606_
                         ___splice239703239704_
                         _target230227230609_
                         _tl230229230611_))
                    (___match239738239739_
                     _e230226230601_
                     _hd230225230604_
                     _tl230224230606_
                     ___splice239703239704_
                     _target230227230609_
                     _tl230229230611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239738239739_
                                                     _e230226230601_
                                                     _hd230225230604_
                                                     _tl230224230606_
                                                     ___splice239703239704_
                                                     _target230227230609_
                                                     _tl230229230611_))))
                                            (___match239738239739_
                                             _e230226230601_
                                             _hd230225230604_
                                             _tl230224230606_
                                             ___splice239703239704_
                                             _target230227230609_
                                             _tl230229230611_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230230230614_ _target230227230609_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239699239700_))
                  (let ((_e230226230601_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239699239700_))))
                    (let ((_tl230224230606_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230226230601_)))
                          (_hd230225230604_
                           (let ()
                             (declare (not safe))
                             (##car _e230226230601_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230225230604_))
                          (let ((___splice239703239704_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230225230604_
                                    '0))))
                            (let ((_tl230229230611_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239703239704_ '1)))
                                  (_target230227230609_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239703239704_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230229230611_))
                                  (___match239726239727_
                                   _e230226230601_
                                   _hd230225230604_
                                   _tl230224230606_
                                   ___splice239703239704_
                                   _target230227230609_
                                   _tl230229230611_)
                                  (___match239738239739_
                                   _e230226230601_
                                   _hd230225230604_
                                   _tl230224230606_
                                   ___splice239703239704_
                                   _target230227230609_
                                   _tl230229230611_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230224230606_))
                              (let ((_e230314230356_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230224230606_))))
                                (let ((_tl230312230361_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230314230356_)))
                                      (_hd230313230359_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230314230356_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230313230359_))
                                      (let ((_e230317230364_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230313230359_))))
                                        (let ((_tl230315230369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230317230364_)))
                                              (_hd230316230367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230317230364_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd230316230367_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd230316230367_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230315230369_))
                                                      (let ((_e230320230372_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230315230369_))))
                (let ((_tl230318230377_
                       (let () (declare (not safe)) (##cdr _e230320230372_)))
                      (_hd230319230375_
                       (let () (declare (not safe)) (##car _e230320230372_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230319230375_))
                      (let ((_e230323230380_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230319230375_))))
                        (let ((_tl230321230385_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230323230380_)))
                              (_hd230322230383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230323230380_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230322230383_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230322230383_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230321230385_))
                                      (let ((_e230326230388_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230321230385_))))
                                        (let ((_tl230324230393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230326230388_)))
                                              (_hd230325230391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230326230388_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230324230393_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230318230377_))
                                                  (let ((_e230329230396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230318230377_))))
                                                    (let ((_tl230327230401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230329230396_)))
                                                          (_hd230328230399_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230329230396_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230328230399_))
                                                          (let ((_e230332230404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230328230399_))))
                    (let ((_tl230330230409_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230332230404_)))
                          (_hd230331230407_
                           (let ()
                             (declare (not safe))
                             (##car _e230332230404_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230331230407_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd230331230407_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230330230409_))
                                  (let ((_e230335230412_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230330230409_))))
                                    (let ((_tl230333230417_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230335230412_)))
                                          (_hd230334230415_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230335230412_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230333230417_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230327230401_))
                                              (let ((_e230338230420_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230327230401_))))
                                                (let ((_tl230336230425_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230338230420_)))
                                                      (_hd230337230423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230338230420_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230336230425_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230312230361_))
                                                          (___kont239711239712_
                                                           _hd230334230415_
                                                           _hd230325230391_
                                                           _hd230225230604_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g230219230343_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230219230343_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230219230343_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230219230343_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230219230343_)))
                              (let () (declare (not safe)) (_g230219230343_)))
                          (let () (declare (not safe)) (_g230219230343_)))))
                  (let () (declare (not safe)) (_g230219230343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230219230343_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230219230343_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230219230343_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230219230343_)))
                              (let ()
                                (declare (not safe))
                                (_g230219230343_)))))
                      (let () (declare (not safe)) (_g230219230343_)))))
              (let () (declare (not safe)) (_g230219230343_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230219230343_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230219230343_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230219230343_)))))
                              (let ()
                                (declare (not safe))
                                (_g230219230343_))))))
                  (let () (declare (not safe)) (_g230219230343_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form230019_)
        (let* ((_g230021230035_
                (lambda (_g230022230032_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230022230032_))))
               (_g230020230212_
                (lambda (_g230022230038_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230022230038_))
                      (let ((_e230027230040_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230022230038_))))
                        (let ((_hd230026230043_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230027230040_)))
                              (_tl230025230045_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230027230040_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230025230045_))
                              (let ((_e230030230048_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230025230045_))))
                                (let ((_hd230029230051_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230030230048_)))
                                      (_tl230028230053_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230030230048_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230028230053_))
                                      ((lambda (_L230056_ _L230057_)
                                         (let* ((___stx239821239822_ _L230057_)
                                                (_g230072230100_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx239821239822_)))))
                                           (let ((___kont239823239824_
                                                  (lambda (_L230191_)
                                                    (length (let ((__tmp240966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230201230204_ _g230202230206_)
                             (let ()
                               (declare (not safe))
                               (cons _g230201230204_ _g230202230206_)))))
                      (declare (not safe))
                      (foldr1 __tmp240966 '() _L230191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont239827239828_
                                                  (lambda (_L230142_ _L230143_)
                                                    (let ((__tmp240967
                                                           (length (let ((__tmp240968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g230154230157_ _g230155230159_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g230154230157_
                                            _g230155230159_)))))
                             (declare (not safe))
                             (foldr1 __tmp240968 '() _L230143_)))))
              (declare (not safe))
              (cons __tmp240967 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont239831239832_
                                                  (lambda (_L230105_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match239846239847_
                                                     (lambda (___splice239829239830_
                                                              _target230086230118_
                                                              _tl230088230120_)
                                                       (letrec ((_loop230089230123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230087230126_ _arg230093230128_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230087230126_))
                               (let ((_e230090230131_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230087230126_))))
                                 (let ((_lp-tl230092230136_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230090230131_)))
                                       (_lp-hd230091230134_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230090230131_))))
                                   (let ((__tmp240969
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230091230134_
                                                  _arg230093230128_))))
                                     (declare (not safe))
                                     (_loop230089230123_
                                      _lp-tl230092230136_
                                      __tmp240969))))
                               (let ((_arg230094230139_
                                      (reverse _arg230093230128_)))
                                 (___kont239827239828_
                                  _tl230088230120_
                                  _arg230094230139_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230089230123_ _target230086230118_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239840239841_
                                                     (lambda (___splice239825239826_
                                                              _target230075230167_
                                                              _tl230077230169_)
                                                       (letrec ((_loop230078230172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230076230175_ _arg230082230177_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230076230175_))
                               (let ((_e230079230180_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230076230175_))))
                                 (let ((_lp-tl230081230185_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230079230180_)))
                                       (_lp-hd230080230183_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230079230180_))))
                                   (let ((__tmp240970
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230080230183_
                                                  _arg230082230177_))))
                                     (declare (not safe))
                                     (_loop230078230172_
                                      _lp-tl230081230185_
                                      __tmp240970))))
                               (let ((_arg230083230188_
                                      (reverse _arg230082230177_)))
                                 (___kont239823239824_ _arg230083230188_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230078230172_ _target230075230167_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx239821239822_))
                                                   (let ((___splice239825239826_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx239821239822_
                                                             '0))))
                                                     (let ((_tl230077230169_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice239825239826_
                                                               '1)))
                                                           (_target230075230167_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice239825239826_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230077230169_))
                                                           (___match239840239841_
                                                            ___splice239825239826_
                                                            _target230075230167_
                                                            _tl230077230169_)
                                                           (___match239846239847_
                                                            ___splice239825239826_
                                                            _target230075230167_
                                                            _tl230077230169_))))
                                                   (___kont239831239832_
                                                    ___stx239821239822_))))))
                                       _hd230029230051_
                                       _hd230026230043_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230021230035_ _g230022230038_)))))
                              (let ()
                                (declare (not safe))
                                (_g230021230035_ _g230022230038_)))))
                      (let ()
                        (declare (not safe))
                        (_g230021230035_ _g230022230038_))))))
          (declare (not safe))
          (_g230020230212_ _form230019_))))
    (define gxc#lambda-expr?
      (lambda (_expr229972_)
        (let* ((___stx239849239850_ _expr229972_)
               (_g229975229985_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239849239850_)))))
          (let ((___kont239851239852_ (lambda (_L230005_) '#t))
                (___kont239853239854_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239849239850_))
                (let ((_e229980229997_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239849239850_))))
                  (let ((_tl229978230002_
                         (let () (declare (not safe)) (##cdr _e229980229997_)))
                        (_hd229979230000_
                         (let ()
                           (declare (not safe))
                           (##car _e229980229997_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229979230000_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd229979230000_))
                            (___kont239851239852_ _tl229978230002_)
                            (___kont239853239854_))
                        (___kont239853239854_))))
                (___kont239853239854_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr229925_)
        (let* ((___stx239867239868_ _expr229925_)
               (_g229928229938_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239867239868_)))))
          (let ((___kont239869239870_ (lambda (_L229958_) '#t))
                (___kont239871239872_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239867239868_))
                (let ((_e229933229950_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239867239868_))))
                  (let ((_tl229931229955_
                         (let () (declare (not safe)) (##cdr _e229933229950_)))
                        (_hd229932229953_
                         (let ()
                           (declare (not safe))
                           (##car _e229933229950_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229932229953_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd229932229953_))
                            (___kont239869239870_ _tl229931229955_)
                            (___kont239871239872_))
                        (___kont239871239872_))))
                (___kont239871239872_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr229794_)
        (let* ((___stx239885239886_ _expr229794_)
               (_g229797229827_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239885239886_)))))
          (let ((___kont239887239888_
                 (lambda (_L229895_ _L229896_ _L229897_)
                   (if (let () (declare (not safe)) (gx#identifier? _L229897_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L229896_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L229895_))
                           '#f)
                       '#f)))
                (___kont239889239890_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239885239886_))
                (let ((_e229804229839_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239885239886_))))
                  (let ((_tl229802229844_
                         (let () (declare (not safe)) (##cdr _e229804229839_)))
                        (_hd229803229842_
                         (let ()
                           (declare (not safe))
                           (##car _e229804229839_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229803229842_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229803229842_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229802229844_))
                                (let ((_e229807229847_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229802229844_))))
                                  (let ((_tl229805229852_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229807229847_)))
                                        (_hd229806229850_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229807229847_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229806229850_))
                                        (let ((_e229810229855_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229806229850_))))
                                          (let ((_tl229808229860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229810229855_)))
                                                (_hd229809229858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229810229855_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229809229858_))
                                                (let ((_e229813229863_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229809229858_))))
                                                  (let ((_tl229811229868_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229813229863_)))
                                                        (_hd229812229866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229813229863_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229812229866_))
                                                        (let ((_e229816229871_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229812229866_))))
                  (let ((_tl229814229876_
                         (let () (declare (not safe)) (##cdr _e229816229871_)))
                        (_hd229815229874_
                         (let ()
                           (declare (not safe))
                           (##car _e229816229871_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229814229876_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229811229868_))
                            (let ((_e229819229879_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229811229868_))))
                              (let ((_tl229817229884_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229819229879_)))
                                    (_hd229818229882_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229819229879_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229817229884_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229808229860_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229805229852_))
                                            (let ((_e229822229887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229805229852_))))
                                              (let ((_tl229820229892_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229822229887_)))
                                                    (_hd229821229890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229822229887_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229820229892_))
                                                    (___kont239887239888_
                                                     _hd229821229890_
                                                     _hd229818229882_
                                                     _hd229815229874_)
                                                    (___kont239889239890_))))
                                            (___kont239889239890_))
                                        (___kont239889239890_))
                                    (___kont239889239890_))))
                            (___kont239889239890_))
                        (___kont239889239890_))))
                (___kont239889239890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239889239890_))))
                                        (___kont239889239890_))))
                                (___kont239889239890_))
                            (___kont239889239890_))
                        (___kont239889239890_))))
                (___kont239889239890_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr229119_)
        (let* ((___stx239947239948_ _expr229119_)
               (_g229122229280_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239947239948_)))))
          (let ((___kont239949239950_
                 (lambda (_L229668_
                          _L229669_
                          _L229670_
                          _L229671_
                          _L229672_
                          _L229673_
                          _L229674_
                          _L229675_
                          _L229676_
                          _L229677_
                          _L229678_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L229675_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L229671_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L229670_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L229678_
                                      _L229669_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L229677_
                                          _L229674_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L229672_
                                              _L229668_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L229676_
                                              _L229673_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont239951239952_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239947239948_))
                (let ((_e229137229292_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239947239948_))))
                  (let ((_tl229135229297_
                         (let () (declare (not safe)) (##cdr _e229137229292_)))
                        (_hd229136229295_
                         (let ()
                           (declare (not safe))
                           (##car _e229137229292_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229136229295_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229136229295_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229135229297_))
                                (let ((_e229140229300_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229135229297_))))
                                  (let ((_tl229138229305_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229140229300_)))
                                        (_hd229139229303_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229140229300_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229139229303_))
                                        (let ((_e229143229308_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229139229303_))))
                                          (let ((_tl229141229313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229143229308_)))
                                                (_hd229142229311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229143229308_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229142229311_))
                                                (let ((_e229146229316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229142229311_))))
                                                  (let ((_tl229144229321_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229146229316_)))
                                                        (_hd229145229319_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229146229316_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229145229319_))
                                                        (let ((_e229149229324_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229145229319_))))
                  (let ((_tl229147229329_
                         (let () (declare (not safe)) (##cdr _e229149229324_)))
                        (_hd229148229327_
                         (let ()
                           (declare (not safe))
                           (##car _e229149229324_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229147229329_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229144229321_))
                            (let ((_e229152229332_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229144229321_))))
                              (let ((_tl229150229337_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229152229332_)))
                                    (_hd229151229335_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229152229332_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229151229335_))
                                    (let ((_e229155229340_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229151229335_))))
                                      (let ((_tl229153229345_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229155229340_)))
                                            (_hd229154229343_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229155229340_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229154229343_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd229154229343_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229153229345_))
                                                    (let ((_e229158229348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229153229345_))))
                                                      (let ((_tl229156229353_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229158229348_)))
                    (_hd229157229351_
                     (let () (declare (not safe)) (##car _e229158229348_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229157229351_))
                    (let ((_e229161229356_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229157229351_))))
                      (let ((_tl229159229361_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229161229356_)))
                            (_hd229160229359_
                             (let ()
                               (declare (not safe))
                               (##car _e229161229356_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229160229359_))
                            (let ((_e229164229364_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229160229359_))))
                              (let ((_tl229162229369_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229164229364_)))
                                    (_hd229163229367_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229164229364_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229163229367_))
                                    (let ((_e229167229372_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229163229367_))))
                                      (let ((_tl229165229377_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229167229372_)))
                                            (_hd229166229375_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229167229372_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229165229377_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229162229369_))
                                                (let ((_e229170229380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229162229369_))))
                                                  (let ((_tl229168229385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229170229380_)))
                                                        (_hd229169229383_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229170229380_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229168229385_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl229159229361_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229156229353_))
                        (let ((_e229173229388_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229156229353_))))
                          (let ((_tl229171229393_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229173229388_)))
                                (_hd229172229391_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229173229388_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229172229391_))
                                (let ((_e229176229396_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229172229391_))))
                                  (let ((_tl229174229401_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229176229396_)))
                                        (_hd229175229399_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229176229396_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229175229399_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd229175229399_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229174229401_))
                                                (let ((_e229179229404_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229174229401_))))
                                                  (let ((_tl229177229409_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229179229404_)))
                                                        (_hd229178229407_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229179229404_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229178229407_))
                                                        (let ((_e229182229412_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229178229407_))))
                  (let ((_tl229180229417_
                         (let () (declare (not safe)) (##cdr _e229182229412_)))
                        (_hd229181229415_
                         (let ()
                           (declare (not safe))
                           (##car _e229182229412_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229177229409_))
                        (let ((_e229185229420_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229177229409_))))
                          (let ((_tl229183229425_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229185229420_)))
                                (_hd229184229423_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229185229420_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229184229423_))
                                (let ((_e229188229428_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229184229423_))))
                                  (let ((_tl229186229433_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229188229428_)))
                                        (_hd229187229431_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229188229428_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229187229431_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd229187229431_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229186229433_))
                                                (let ((_e229191229436_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229186229433_))))
                                                  (let ((_tl229189229441_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229191229436_)))
                                                        (_hd229190229439_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229191229436_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229190229439_))
                                                        (let ((_e229194229444_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229190229439_))))
                  (let ((_tl229192229449_
                         (let () (declare (not safe)) (##cdr _e229194229444_)))
                        (_hd229193229447_
                         (let ()
                           (declare (not safe))
                           (##car _e229194229444_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229193229447_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd229193229447_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229192229449_))
                                (let ((_e229197229452_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229192229449_))))
                                  (let ((_tl229195229457_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229197229452_)))
                                        (_hd229196229455_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229197229452_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229195229457_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229189229441_))
                                            (let ((_e229200229460_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229189229441_))))
                                              (let ((_tl229198229465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229200229460_)))
                                                    (_hd229199229463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229200229460_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229199229463_))
                                                    (let ((_e229203229468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229199229463_))))
                                                      (let ((_tl229201229473_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229203229468_)))
                    (_hd229202229471_
                     (let () (declare (not safe)) (##car _e229203229468_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229202229471_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd229202229471_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229201229473_))
                            (let ((_e229206229476_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229201229473_))))
                              (let ((_tl229204229481_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229206229476_)))
                                    (_hd229205229479_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229206229476_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229204229481_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229198229465_))
                                        (let ((_e229209229484_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229198229465_))))
                                          (let ((_tl229207229489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229209229484_)))
                                                (_hd229208229487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229209229484_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229208229487_))
                                                (let ((_e229212229492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229208229487_))))
                                                  (let ((_tl229210229497_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229212229492_)))
                                                        (_hd229211229495_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229212229492_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd229211229495_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd229211229495_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229210229497_))
                        (let ((_e229215229500_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229210229497_))))
                          (let ((_tl229213229505_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229215229500_)))
                                (_hd229214229503_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229215229500_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229213229505_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229183229425_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229171229393_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229150229337_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229141229313_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229138229305_))
                                                    (let ((_e229218229508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229138229305_))))
                                                      (let ((_tl229216229513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229218229508_)))
                    (_hd229217229511_
                     (let () (declare (not safe)) (##car _e229218229508_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229217229511_))
                    (let ((_e229221229516_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229217229511_))))
                      (let ((_tl229219229521_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229221229516_)))
                            (_hd229220229519_
                             (let ()
                               (declare (not safe))
                               (##car _e229221229516_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229220229519_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd229220229519_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229219229521_))
                                    (let ((_e229224229524_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229219229521_))))
                                      (let ((_tl229222229529_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229224229524_)))
                                            (_hd229223229527_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229224229524_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229222229529_))
                                            (let ((_e229227229532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229222229529_))))
                                              (let ((_tl229225229537_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229227229532_)))
                                                    (_hd229226229535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229227229532_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229226229535_))
                                                    (let ((_e229230229540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229226229535_))))
                                                      (let ((_tl229228229545_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229230229540_)))
                    (_hd229229229543_
                     (let () (declare (not safe)) (##car _e229230229540_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229229229543_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd229229229543_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229228229545_))
                            (let ((_e229233229548_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229228229545_))))
                              (let ((_tl229231229553_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229233229548_)))
                                    (_hd229232229551_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229233229548_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229232229551_))
                                    (let ((_e229236229556_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229232229551_))))
                                      (let ((_tl229234229561_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229236229556_)))
                                            (_hd229235229559_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229236229556_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229235229559_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd229235229559_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229234229561_))
                                                    (let ((_e229239229564_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229234229561_))))
                                                      (let ((_tl229237229569_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229239229564_)))
                    (_hd229238229567_
                     (let () (declare (not safe)) (##car _e229239229564_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl229237229569_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229231229553_))
                        (let ((_e229242229572_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229231229553_))))
                          (let ((_tl229240229577_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229242229572_)))
                                (_hd229241229575_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229242229572_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229241229575_))
                                (let ((_e229245229580_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229241229575_))))
                                  (let ((_tl229243229585_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229245229580_)))
                                        (_hd229244229583_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229245229580_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229244229583_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd229244229583_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229243229585_))
                                                (let ((_e229248229588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229243229585_))))
                                                  (let ((_tl229246229593_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229248229588_)))
                                                        (_hd229247229591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229248229588_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229246229593_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl229240229577_))
                                                            (let ((_e229251229596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl229240229577_))))
                      (let ((_tl229249229601_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229251229596_)))
                            (_hd229250229599_
                             (let ()
                               (declare (not safe))
                               (##car _e229251229596_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229250229599_))
                            (let ((_e229254229604_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229250229599_))))
                              (let ((_tl229252229609_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229254229604_)))
                                    (_hd229253229607_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229254229604_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd229253229607_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd229253229607_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229252229609_))
                                            (let ((_e229257229612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229252229609_))))
                                              (let ((_tl229255229617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229257229612_)))
                                                    (_hd229256229615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229257229612_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229255229617_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl229249229601_))
                                                        (let ((_e229260229620_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl229249229601_))))
                  (let ((_tl229258229625_
                         (let () (declare (not safe)) (##cdr _e229260229620_)))
                        (_hd229259229623_
                         (let ()
                           (declare (not safe))
                           (##car _e229260229620_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229259229623_))
                        (let ((_e229263229628_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229259229623_))))
                          (let ((_tl229261229633_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229263229628_)))
                                (_hd229262229631_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229263229628_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd229262229631_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd229262229631_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229261229633_))
                                        (let ((_e229266229636_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229261229633_))))
                                          (let ((_tl229264229641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229266229636_)))
                                                (_hd229265229639_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229266229636_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229264229641_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229258229625_))
                                                    (let ((_e229269229644_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229258229625_))))
                                                      (let ((_tl229267229649_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229269229644_)))
                    (_hd229268229647_
                     (let () (declare (not safe)) (##car _e229269229644_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229268229647_))
                    (let ((_e229272229652_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229268229647_))))
                      (let ((_tl229270229657_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229272229652_)))
                            (_hd229271229655_
                             (let ()
                               (declare (not safe))
                               (##car _e229272229652_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229271229655_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd229271229655_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229270229657_))
                                    (let ((_e229275229660_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229270229657_))))
                                      (let ((_tl229273229665_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229275229660_)))
                                            (_hd229274229663_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229275229660_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229273229665_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229267229649_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229225229537_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229216229513_))
                                                        (___kont239949239950_
                                                         _hd229274229663_
                                                         _hd229265229639_
                                                         _hd229247229591_
                                                         _hd229238229567_
                                                         _hd229223229527_
                                                         _hd229214229503_
                                                         _hd229205229479_
                                                         _hd229196229455_
                                                         _hd229181229415_
                                                         _hd229166229375_
                                                         _hd229148229327_)
                                                        (___kont239951239952_))
                                                    (___kont239951239952_))
                                                (___kont239951239952_))
                                            (___kont239951239952_))))
                                    (___kont239951239952_))
                                (___kont239951239952_))
                            (___kont239951239952_))))
                    (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239951239952_))
                                                (___kont239951239952_))))
                                        (___kont239951239952_))
                                    (___kont239951239952_))
                                (___kont239951239952_))))
                        (___kont239951239952_))))
                (___kont239951239952_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239951239952_))))
                                            (___kont239951239952_))
                                        (___kont239951239952_))
                                    (___kont239951239952_))))
                            (___kont239951239952_))))
                    (___kont239951239952_))
                (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239951239952_))
                                            (___kont239951239952_))
                                        (___kont239951239952_))))
                                (___kont239951239952_))))
                        (___kont239951239952_))
                    (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239951239952_))
                                                (___kont239951239952_))
                                            (___kont239951239952_))))
                                    (___kont239951239952_))))
                            (___kont239951239952_))
                        (___kont239951239952_))
                    (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239951239952_))))
                                            (___kont239951239952_))))
                                    (___kont239951239952_))
                                (___kont239951239952_))
                            (___kont239951239952_))))
                    (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239951239952_))
                                                (___kont239951239952_))
                                            (___kont239951239952_))
                                        (___kont239951239952_))
                                    (___kont239951239952_))
                                (___kont239951239952_))))
                        (___kont239951239952_))
                    (___kont239951239952_))
                (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239951239952_))))
                                        (___kont239951239952_))
                                    (___kont239951239952_))))
                            (___kont239951239952_))
                        (___kont239951239952_))
                    (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239951239952_))))
                                            (___kont239951239952_))
                                        (___kont239951239952_))))
                                (___kont239951239952_))
                            (___kont239951239952_))
                        (___kont239951239952_))))
                (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239951239952_))
                                            (___kont239951239952_))
                                        (___kont239951239952_))))
                                (___kont239951239952_))))
                        (___kont239951239952_))))
                (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239951239952_))
                                            (___kont239951239952_))
                                        (___kont239951239952_))))
                                (___kont239951239952_))))
                        (___kont239951239952_))
                    (___kont239951239952_))
                (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239951239952_))
                                            (___kont239951239952_))))
                                    (___kont239951239952_))))
                            (___kont239951239952_))))
                    (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239951239952_))
                                                (___kont239951239952_))
                                            (___kont239951239952_))))
                                    (___kont239951239952_))))
                            (___kont239951239952_))
                        (___kont239951239952_))))
                (___kont239951239952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239951239952_))))
                                        (___kont239951239952_))))
                                (___kont239951239952_))
                            (___kont239951239952_))
                        (___kont239951239952_))))
                (___kont239951239952_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx228861_ _id228862_ _clauses228863_ _gensym?228864_)
        (let _lp228866_ ((_rest228868_ _clauses228863_)
                         (_ids228869_ '())
                         (_impls228870_ '())
                         (_clauses228871_ '()))
          (let* ((_rest228872228880_ _rest228868_)
                 (_else228874228888_
                  (lambda ()
                    (values (reverse _ids228869_)
                            (reverse _impls228870_)
                            (reverse _clauses228871_))))
                 (_K228876229093_
                  (lambda (_rest228891_ _clause228892_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause228892_))
                        (let ((__tmp241026
                               (let ()
                                 (declare (not safe))
                                 (cons _clause228892_ _clauses228871_))))
                          (declare (not safe))
                          (_lp228866_
                           _rest228891_
                           _ids228869_
                           _impls228870_
                           __tmp241026))
                        (let* ((_g228894228905_
                                (lambda (_g228895228902_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g228895228902_))))
                               (_g228893229090_
                                (lambda (_g228895228908_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g228895228908_))
                                      (let ((_e228900228910_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g228895228908_))))
                                        (let ((_hd228899228913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228900228910_)))
                                              (_tl228898228915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228900228910_))))
                                          ((lambda (_L228918_ _L228919_)
                                             (let* ((_id228936_
                                                     (let ((__tmp240973
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id228862_)))
                                                           (__tmp240972
                                                            (length _clauses228871_))
                                                           (__tmp240971
                                                            (if _gensym?228864_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp240973
                                                        '"__"
                                                        __tmp240972
                                                        __tmp240971)))
                                                    (_id228938_
                                                     (let ((__tmp240974
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx228861_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id228936_
                                                        __tmp240974)))
                                                    (_impl228940_
                                                     (let ((__tmp240975
                                                            (let ((__tmp240977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp240976
                           (let ()
                             (declare (not safe))
                             (cons _L228919_ _L228918_))))
                      (declare (not safe))
                      (cons __tmp240977 __tmp240976))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp240975 _stx228861_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause229087_
                                                     (let* ((___stx240331240332_
                                                             _L228919_)
                                                            (_g228944228972_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx240331240332_)))))
               (let ((___kont240333240334_
                      (lambda (_L229066_)
                        (let ((__tmp240978
                               (let ((__tmp240979
                                      (let ((__tmp240980
                                             (let ((__tmp240981
                                                    (let ((__tmp240987
                                                           (let ((__tmp240988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id228938_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp240988)))
                  (__tmp240982
                   (let ((__tmp240983
                          (lambda (_g229076229079_ _g229077229081_)
                            (let ((__tmp240984
                                   (let ((__tmp240986
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp240985
                                          (let ()
                                            (declare (not safe))
                                            (cons _g229076229079_ '()))))
                                     (declare (not safe))
                                     (cons __tmp240986 __tmp240985))))
                              (declare (not safe))
                              (cons __tmp240984 _g229077229081_)))))
                     (declare (not safe))
                     (foldr1 __tmp240983 '() _L229066_))))
              (declare (not safe))
              (cons __tmp240987 __tmp240982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp240981))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp240980
                                         _stx228861_))))
                                 (declare (not safe))
                                 (cons __tmp240979 '()))))
                          (declare (not safe))
                          (cons _L228919_ __tmp240978))))
                     (___kont240337240338_
                      (lambda (_L229017_ _L229018_)
                        (let ((__tmp240989
                               (let ((__tmp240990
                                      (let ((__tmp240991
                                             (let ((__tmp240992
                                                    (let ((__tmp241006
                                                           (let ((__tmp241007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241007)))
                  (__tmp240993
                   (let ((__tmp241004
                          (let ((__tmp241005
                                 (let ()
                                   (declare (not safe))
                                   (cons _id228938_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241005)))
                         (__tmp240994
                          (let ((__tmp241000
                                 (let ((__tmp241001
                                        (let ((__tmp241003
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp241002
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L229017_ '()))))
                                          (declare (not safe))
                                          (cons __tmp241003 __tmp241002))))
                                   (declare (not safe))
                                   (cons __tmp241001 '())))
                                (__tmp240995
                                 (let ((__tmp240996
                                        (lambda (_g229029229032_
                                                 _g229030229034_)
                                          (let ((__tmp240997
                                                 (let ((__tmp240999
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp240998
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g229029229032_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp240999
                                                         __tmp240998))))
                                            (declare (not safe))
                                            (cons __tmp240997
                                                  _g229030229034_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp240996 '() _L229018_))))
                            (declare (not safe))
                            (foldr1 cons __tmp241000 __tmp240995))))
                     (declare (not safe))
                     (cons __tmp241004 __tmp240994))))
              (declare (not safe))
              (cons __tmp241006 __tmp240993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp240992))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp240991
                                         _stx228861_))))
                                 (declare (not safe))
                                 (cons __tmp240990 '()))))
                          (declare (not safe))
                          (cons _L228919_ __tmp240989))))
                     (___kont240341240342_
                      (lambda (_L228977_)
                        (let ((__tmp241008
                               (let ((__tmp241009
                                      (let ((__tmp241010
                                             (let ((__tmp241011
                                                    (let ((__tmp241019
                                                           (let ((__tmp241020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241020)))
                  (__tmp241012
                   (let ((__tmp241017
                          (let ((__tmp241018
                                 (let ()
                                   (declare (not safe))
                                   (cons _id228938_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241018)))
                         (__tmp241013
                          (let ((__tmp241014
                                 (let ((__tmp241016
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp241015
                                        (let ()
                                          (declare (not safe))
                                          (cons _L228977_ '()))))
                                   (declare (not safe))
                                   (cons __tmp241016 __tmp241015))))
                            (declare (not safe))
                            (cons __tmp241014 '()))))
                     (declare (not safe))
                     (cons __tmp241017 __tmp241013))))
              (declare (not safe))
              (cons __tmp241019 __tmp241012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241011))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241010
                                         _stx228861_))))
                                 (declare (not safe))
                                 (cons __tmp241009 '()))))
                          (declare (not safe))
                          (cons _L228919_ __tmp241008)))))
                 (let* ((___match240356240357_
                         (lambda (___splice240339240340_
                                  _target228958228993_
                                  _tl228960228995_)
                           (letrec ((_loop228961228998_
                                     (lambda (_hd228959229001_
                                              _arg228965229003_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd228959229001_))
                                           (let ((_e228962229006_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd228959229001_))))
                                             (let ((_lp-tl228964229011_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228962229006_)))
                                                   (_lp-hd228963229009_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228962229006_))))
                                               (let ((__tmp241021
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd228963229009_
                                                              _arg228965229003_))))
                                                 (declare (not safe))
                                                 (_loop228961228998_
                                                  _lp-tl228964229011_
                                                  __tmp241021))))
                                           (let ((_arg228966229014_
                                                  (reverse _arg228965229003_)))
                                             (___kont240337240338_
                                              _tl228960228995_
                                              _arg228966229014_))))))
                             (let ()
                               (declare (not safe))
                               (_loop228961228998_
                                _target228958228993_
                                '())))))
                        (___match240350240351_
                         (lambda (___splice240335240336_
                                  _target228947229042_
                                  _tl228949229044_)
                           (letrec ((_loop228950229047_
                                     (lambda (_hd228948229050_
                                              _arg228954229052_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd228948229050_))
                                           (let ((_e228951229055_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd228948229050_))))
                                             (let ((_lp-tl228953229060_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228951229055_)))
                                                   (_lp-hd228952229058_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228951229055_))))
                                               (let ((__tmp241022
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd228952229058_
                                                              _arg228954229052_))))
                                                 (declare (not safe))
                                                 (_loop228950229047_
                                                  _lp-tl228953229060_
                                                  __tmp241022))))
                                           (let ((_arg228955229063_
                                                  (reverse _arg228954229052_)))
                                             (___kont240333240334_
                                              _arg228955229063_))))))
                             (let ()
                               (declare (not safe))
                               (_loop228950229047_
                                _target228947229042_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx240331240332_))
                       (let ((___splice240335240336_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx240331240332_
                                 '0))))
                         (let ((_tl228949229044_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240335240336_ '1)))
                               (_target228947229042_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240335240336_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228949229044_))
                               (___match240350240351_
                                ___splice240335240336_
                                _target228947229042_
                                _tl228949229044_)
                               (___match240356240357_
                                ___splice240335240336_
                                _target228947229042_
                                _tl228949229044_))))
                       (___kont240341240342_ ___stx240331240332_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp241025
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id228938_
                                                              _ids228869_)))
                                                     (__tmp241024
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl228940_
                                                              _impls228870_)))
                                                     (__tmp241023
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause229087_
                                                              _clauses228871_))))
                                                 (declare (not safe))
                                                 (_lp228866_
                                                  _rest228891_
                                                  __tmp241025
                                                  __tmp241024
                                                  __tmp241023))))
                                           _tl228898228915_
                                           _hd228899228913_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g228894228905_ _g228895228908_))))))
                          (declare (not safe))
                          (_g228893229090_ _clause228892_))))))
            (if (let () (declare (not safe)) (##pair? _rest228872228880_))
                (let ((_hd228877229096_
                       (let ()
                         (declare (not safe))
                         (##car _rest228872228880_)))
                      (_tl228878229098_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest228872228880_))))
                  (let* ((_clause229101_ _hd228877229096_)
                         (_rest229103_ _tl228878229098_))
                    (declare (not safe))
                    (_K228876229093_ _rest229103_ _clause229101_)))
                (let () (declare (not safe)) (_else228874228888_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx229108_ _id229109_ _clauses229110_)
        (let ((_gensym?229112_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx229108_
           _id229109_
           _clauses229110_
           _gensym?229112_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g241028_
        (let ((_g241027_ (let () (declare (not safe)) (##length _g241028_))))
          (cond ((let () (declare (not safe)) (##fx= _g241027_ 3))
                 (apply (lambda (_stx229108_ _id229109_ _clauses229110_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx229108_
                             _id229109_
                             _clauses229110_)))
                        _g241028_))
                ((let () (declare (not safe)) (##fx= _g241027_ 4))
                 (apply (lambda (_stx229114_
                                 _id229115_
                                 _clauses229116_
                                 _gensym?229117_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx229114_
                             _id229115_
                             _clauses229116_
                             _gensym?229117_)))
                        _g241028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g241028_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx228138_)
        (letrec ((_case-lambda-clause-def228140_
                  (lambda (_id228857_ _impl228858_)
                    (let ((__tmp241029
                           (let ((__tmp241030
                                  (let ((__tmp241033
                                         (let ()
                                           (declare (not safe))
                                           (cons _id228857_ '())))
                                        (__tmp241031
                                         (let ((__tmp241032
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl228858_))))
                                           (declare (not safe))
                                           (cons __tmp241032 '()))))
                                    (declare (not safe))
                                    (cons __tmp241033 __tmp241031))))
                             (declare (not safe))
                             (cons '%#define-values __tmp241030))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241029 _stx228138_))))
                 (_opt-lambda-dispatch-name228141_
                  (lambda (_id228853_)
                    (if (uninterned-symbol? _id228853_)
                        (let ((_str228855_ (symbol->string _id228853_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str228855_))
                              '"%"
                              _id228853_))
                        _id228853_)))
                 (_kw-lambda-dispatch-name228142_
                  (lambda (_id228848_ _name228849_)
                    (if (uninterned-symbol? _id228848_)
                        (let ((_str228851_ (symbol->string _id228848_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str228851_))
                              _name228849_
                              _id228848_))
                        _id228848_))))
          (let* ((___stx240379240380_ _stx228138_)
                 (_g228147228206_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240379240380_)))))
            (let ((___kont240381240382_
                   (lambda (_L228757_ _L228758_)
                     (let* ((___stx240359240360_ _L228757_)
                            (_g228775228789_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240359240360_)))))
                       (let ((___kont240361240362_
                              (lambda (_L228833_) _stx228138_))
                             (___kont240363240364_
                              (lambda (_L228802_)
                                (let ((_g241034_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx228138_
                                          _L228758_
                                          _L228802_))))
                                  (begin
                                    (let ((_g241035_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g241034_)
                                                 (##vector-length _g241034_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g241035_ 3)))
                                          (error "Context expects 3 values"
                                                 _g241035_)))
                                    (let ((_ids228812_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241034_ 0)))
                                          (_impls228813_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241034_ 1)))
                                          (_clauses228814_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241034_ 2))))
                                      (let* ((_g241036_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids228812_))
                                             (_defs228817_
                                              (map _case-lambda-clause-def228140_
                                                   _ids228812_
                                                   _impls228813_)))
                                        (let ((__tmp241038
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L228758_)))
                                              (__tmp241037
                                               (map gxc#identifier-symbol
                                                    _ids228812_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp241038
                                           '" => "
                                           __tmp241037))
                                        (let ((__tmp241039
                                               (let ((__tmp241040
                                                      (let ((__tmp241041
                                                             (let ((__tmp241042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241043
                                   (let ((__tmp241044
                                          (let ((__tmp241049
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L228758_ '())))
                                                (__tmp241045
                                                 (let ((__tmp241046
                                                        (let ((__tmp241048
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses228814_)))
                      (__tmp241047
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp241048 __tmp241047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241046 '()))))
                                            (declare (not safe))
                                            (cons __tmp241049 __tmp241045))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp241044))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241043
                               _stx228138_))))
                       (declare (not safe))
                       (cons __tmp241042 '()))))
                (declare (not safe))
                (foldr1 cons __tmp241041 _defs228817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp241040))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp241039
                                           _stx228138_)))))))))
                         (let ((___match240370240371_
                                (lambda (_e228780228825_
                                         _hd228779228828_
                                         _tl228778228830_)
                                  (let ((_L228833_ _tl228778228830_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L228833_))
                                        (___kont240361240362_ _L228833_)
                                        (___kont240363240364_
                                         _tl228778228830_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx240359240360_))
                               (let ((_e228780228825_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx240359240360_))))
                                 (let ((_tl228778228830_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228780228825_)))
                                       (_hd228779228828_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228780228825_))))
                                   (___match240370240371_
                                    _e228780228825_
                                    _hd228779228828_
                                    _tl228778228830_)))
                               (let ()
                                 (declare (not safe))
                                 (_g228775228789_))))))))
                  (___kont240383240384_
                   (lambda (_L228575_ _L228576_)
                     (let* ((_g228592228622_
                             (lambda (_g228593228619_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228593228619_))))
                            (_g228591228717_
                             (lambda (_g228593228625_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228593228625_))
                                   (let ((_e228599228627_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228593228625_))))
                                     (let ((_hd228598228630_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228599228627_)))
                                           (_tl228597228632_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228599228627_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228597228632_))
                                           (let ((_e228602228635_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228597228632_))))
                                             (let ((_hd228601228638_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228602228635_)))
                                                   (_tl228600228640_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228602228635_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228601228638_))
                                                   (let ((_e228605228643_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228601228638_))))
                                                     (let ((_hd228604228646_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228605228643_)))
                                                           (_tl228603228648_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228605228643_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228604228646_))
                                                           (let ((_e228608228651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228604228646_))))
                     (let ((_hd228607228654_
                            (let ()
                              (declare (not safe))
                              (##car _e228608228651_)))
                           (_tl228606228656_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228608228651_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228607228654_))
                           (let ((_e228611228659_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228607228654_))))
                             (let ((_hd228610228662_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228611228659_)))
                                   (_tl228609228664_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228611228659_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228609228664_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228606228656_))
                                       (let ((_e228614228667_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228606228656_))))
                                         (let ((_hd228613228670_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228614228667_)))
                                               (_tl228612228672_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228614228667_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228612228672_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl228603228648_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228600228640_))
                                                       (let ((_e228617228675_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228600228640_))))
                 (let ((_hd228616228678_
                        (let () (declare (not safe)) (##car _e228617228675_)))
                       (_tl228615228680_
                        (let () (declare (not safe)) (##cdr _e228617228675_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl228615228680_))
                       ((lambda (_L228683_ _L228684_ _L228685_)
                          (let* ((_lambda-id228709_
                                  (let ((__tmp241052
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L228576_)))
                                        (__tmp241050
                                         (let ((__tmp241051
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L228685_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name228141_
                                            __tmp241051))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp241052
                                     '"__"
                                     __tmp241050)))
                                 (_lambda-id228711_
                                  (let ((__tmp241053
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx228138_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id228709_
                                     __tmp241053)))
                                 (_g241054_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id228711_)))
                                 (_new-case-lambda-expr228714_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L228683_
                                     _L228685_
                                     _lambda-id228711_))))
                            (let ((__tmp241056
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L228576_)))
                                  (__tmp241055
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id228711_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp241056
                               '" => "
                               __tmp241055))
                            (let ((__tmp241057
                                   (let ((__tmp241058
                                          (let ((__tmp241066
                                                 (let ((__tmp241067
                                                        (let ((__tmp241068
                                                               (let ((__tmp241071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id228711_ '())))
                             (__tmp241069
                              (let ((__tmp241070
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L228684_))))
                                (declare (not safe))
                                (cons __tmp241070 '()))))
                         (declare (not safe))
                         (cons __tmp241071 __tmp241069))))
                  (declare (not safe))
                  (cons '%#define-values __tmp241068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp241067
                                                    _stx228138_)))
                                                (__tmp241059
                                                 (let ((__tmp241060
                                                        (let ((__tmp241061
                                                               (let ((__tmp241062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp241063
                                     (let ((__tmp241065
                                            (let ()
                                              (declare (not safe))
                                              (cons _L228576_ '())))
                                           (__tmp241064
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr228714_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp241065 __tmp241064))))
                                (declare (not safe))
                                (cons '%#define-values __tmp241063))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp241062 _stx228138_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp241061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241060 '()))))
                                            (declare (not safe))
                                            (cons __tmp241066 __tmp241059))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp241058))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241057
                               _stx228138_))))
                        _hd228616228678_
                        _hd228613228670_
                        _hd228610228662_)
                       (let ()
                         (declare (not safe))
                         (_g228592228622_ _g228593228625_)))))
               (let () (declare (not safe)) (_g228592228622_ _g228593228625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228592228622_
                                                      _g228593228625_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228592228622_
                                                  _g228593228625_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228592228622_ _g228593228625_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228592228622_ _g228593228625_)))))
                           (let ()
                             (declare (not safe))
                             (_g228592228622_ _g228593228625_)))))
                   (let ()
                     (declare (not safe))
                     (_g228592228622_ _g228593228625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228592228622_
                                                      _g228593228625_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228592228622_
                                              _g228593228625_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228592228622_ _g228593228625_))))))
                       (declare (not safe))
                       (_g228591228717_ _L228575_))))
                  (___kont240385240386_
                   (lambda (_L228289_ _L228290_)
                     (let* ((_g228306228359_
                             (lambda (_g228307228356_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228307228356_))))
                            (_g228305228535_
                             (lambda (_g228307228362_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228307228362_))
                                   (let ((_e228315228364_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228307228362_))))
                                     (let ((_hd228314228367_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228315228364_)))
                                           (_tl228313228369_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228315228364_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228313228369_))
                                           (let ((_e228318228372_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228313228369_))))
                                             (let ((_hd228317228375_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228318228372_)))
                                                   (_tl228316228377_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228318228372_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228317228375_))
                                                   (let ((_e228321228380_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228317228375_))))
                                                     (let ((_hd228320228383_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228321228380_)))
                                                           (_tl228319228385_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228321228380_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228320228383_))
                                                           (let ((_e228324228388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228320228383_))))
                     (let ((_hd228323228391_
                            (let ()
                              (declare (not safe))
                              (##car _e228324228388_)))
                           (_tl228322228393_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228324228388_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228323228391_))
                           (let ((_e228327228396_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228323228391_))))
                             (let ((_hd228326228399_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228327228396_)))
                                   (_tl228325228401_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228327228396_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228325228401_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228322228393_))
                                       (let ((_e228330228404_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228322228393_))))
                                         (let ((_hd228329228407_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228330228404_)))
                                               (_tl228328228409_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228330228404_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd228329228407_))
                                               (let ((_e228333228412_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd228329228407_))))
                                                 (let ((_hd228332228415_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228333228412_)))
                                                       (_tl228331228417_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228333228412_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228331228417_))
                                                       (let ((_e228336228420_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228331228417_))))
                 (let ((_hd228335228423_
                        (let () (declare (not safe)) (##car _e228336228420_)))
                       (_tl228334228425_
                        (let () (declare (not safe)) (##cdr _e228336228420_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd228335228423_))
                       (let ((_e228339228428_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd228335228423_))))
                         (let ((_hd228338228431_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228339228428_)))
                               (_tl228337228433_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228339228428_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd228338228431_))
                               (let ((_e228342228436_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd228338228431_))))
                                 (let ((_hd228341228439_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228342228436_)))
                                       (_tl228340228441_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228342228436_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228341228439_))
                                       (let ((_e228345228444_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228341228439_))))
                                         (let ((_hd228344228447_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228345228444_)))
                                               (_tl228343228449_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228345228444_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228343228449_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl228340228441_))
                                                   (let ((_e228348228452_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl228340228441_))))
                                                     (let ((_hd228347228455_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228348228452_)))
                                                           (_tl228346228457_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228348228452_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228346228457_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl228337228433_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl228334228425_))
                           (let ((_e228351228460_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl228334228425_))))
                             (let ((_hd228350228463_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228351228460_)))
                                   (_tl228349228465_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228351228460_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228349228465_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl228328228409_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl228319228385_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl228316228377_))
                                               (let ((_e228354228468_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl228316228377_))))
                                                 (let ((_hd228353228471_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228354228468_)))
                                                       (_tl228352228473_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228354228468_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl228352228473_))
                                                       ((lambda (_L228476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L228477_
                         _L228478_
                         _L228479_
                         _L228480_)
                  (let* ((_get-kws-id228520_
                          (let ((__tmp241074
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228290_)))
                                (__tmp241072
                                 (let ((__tmp241073
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228480_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228142_
                                    __tmp241073
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241074 '"__" __tmp241072)))
                         (_get-kws-id228522_
                          (let ((__tmp241075
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228138_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id228520_
                             __tmp241075)))
                         (_main-id228524_
                          (let ((__tmp241078
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228290_)))
                                (__tmp241076
                                 (let ((__tmp241077
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228479_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228142_
                                    __tmp241077
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241078 '"__" __tmp241076)))
                         (_main-id228526_
                          (let ((__tmp241079
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228138_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id228524_
                             __tmp241079)))
                         (_g241080_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id228522_)))
                         (_g241081_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id228526_)))
                         (_new-kw-dispatch228530_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228476_
                             _L228480_
                             _get-kws-id228522_)))
                         (_new-get-kws228532_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228477_
                             _L228479_
                             _main-id228526_))))
                    (let ((__tmp241084
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L228290_)))
                          (__tmp241083
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id228522_)))
                          (__tmp241082
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id228526_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp241084
                       '" => "
                       __tmp241083
                       '" => "
                       __tmp241082))
                    (let ((__tmp241085
                           (let ((__tmp241086
                                  (let ((__tmp241099
                                         (let ((__tmp241100
                                                (let ((__tmp241101
                                                       (let ((__tmp241102
                                                              (let ((__tmp241104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id228526_ '())))
                            (__tmp241103
                             (let ()
                               (declare (not safe))
                               (cons _L228478_ '()))))
                        (declare (not safe))
                        (cons __tmp241104 __tmp241103))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241101
                                                   _stx228138_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp241100)))
                                        (__tmp241087
                                         (let ((__tmp241094
                                                (let ((__tmp241095
                                                       (let ((__tmp241096
                                                              (let ((__tmp241098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id228522_ '())))
                            (__tmp241097
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws228532_ '()))))
                        (declare (not safe))
                        (cons __tmp241098 __tmp241097))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241095
                                                   _stx228138_)))
                                               (__tmp241088
                                                (let ((__tmp241089
                                                       (let ((__tmp241090
                                                              (let ((__tmp241091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp241093
                                    (let ()
                                      (declare (not safe))
                                      (cons _L228290_ '())))
                                   (__tmp241092
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch228530_ '()))))
                               (declare (not safe))
                               (cons __tmp241093 __tmp241092))))
                        (declare (not safe))
                        (cons '%#define-values __tmp241091))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp241090 _stx228138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp241089 '()))))
                                           (declare (not safe))
                                           (cons __tmp241094 __tmp241088))))
                                    (declare (not safe))
                                    (cons __tmp241099 __tmp241087))))
                             (declare (not safe))
                             (cons '%#begin __tmp241086))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241085 _stx228138_))))
                _hd228353228471_
                _hd228350228463_
                _hd228347228455_
                _hd228344228447_
                _hd228326228399_)
               (let ()
                 (declare (not safe))
                 (_g228306228359_ _g228307228362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228306228359_
                                                  _g228307228362_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g228306228359_
                                              _g228307228362_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g228306228359_ _g228307228362_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228306228359_ _g228307228362_)))))
                           (let ()
                             (declare (not safe))
                             (_g228306228359_ _g228307228362_)))
                       (let ()
                         (declare (not safe))
                         (_g228306228359_ _g228307228362_)))
                   (let ()
                     (declare (not safe))
                     (_g228306228359_ _g228307228362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228306228359_
                                                      _g228307228362_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228306228359_
                                                  _g228307228362_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228306228359_ _g228307228362_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g228306228359_ _g228307228362_)))))
                       (let ()
                         (declare (not safe))
                         (_g228306228359_ _g228307228362_)))))
               (let ()
                 (declare (not safe))
                 (_g228306228359_ _g228307228362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228306228359_
                                                  _g228307228362_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228306228359_ _g228307228362_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228306228359_ _g228307228362_)))))
                           (let ()
                             (declare (not safe))
                             (_g228306228359_ _g228307228362_)))))
                   (let ()
                     (declare (not safe))
                     (_g228306228359_ _g228307228362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228306228359_
                                                      _g228307228362_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228306228359_
                                              _g228307228362_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228306228359_ _g228307228362_))))))
                       (declare (not safe))
                       (_g228305228535_ _L228289_))))
                  (___kont240387240388_
                   (lambda (_L228235_ _L228236_)
                     (let ((__tmp241105
                            (let ((__tmp241106
                                   (let ((__tmp241107
                                          (let ((__tmp241108
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L228235_))))
                                            (declare (not safe))
                                            (cons __tmp241108 '()))))
                                     (declare (not safe))
                                     (cons _L228236_ __tmp241107))))
                              (declare (not safe))
                              (cons '%#define-values __tmp241106))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp241105 _stx228138_)))))
              (let* ((___match240472240473_
                      (lambda (_e228181228257_
                               _hd228180228260_
                               _tl228179228262_
                               _e228184228265_
                               _hd228183228268_
                               _tl228182228270_
                               _e228187228273_
                               _hd228186228276_
                               _tl228185228278_
                               _e228190228281_
                               _hd228189228284_
                               _tl228188228286_)
                        (let ((_L228289_ _hd228189228284_)
                              (_L228290_ _hd228186228276_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228290_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228289_)))
                              (___kont240385240386_ _L228289_ _L228290_)
                              (___kont240387240388_
                               _hd228189228284_
                               _hd228183228268_)))))
                     (___match240444240445_
                      (lambda (_e228167228543_
                               _hd228166228546_
                               _tl228165228548_
                               _e228170228551_
                               _hd228169228554_
                               _tl228168228556_
                               _e228173228559_
                               _hd228172228562_
                               _tl228171228564_
                               _e228176228567_
                               _hd228175228570_
                               _tl228174228572_)
                        (let ((_L228575_ _hd228175228570_)
                              (_L228576_ _hd228172228562_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228576_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L228575_)))
                              (___kont240383240384_ _L228575_ _L228576_)
                              (___match240472240473_
                               _e228167228543_
                               _hd228166228546_
                               _tl228165228548_
                               _e228170228551_
                               _hd228169228554_
                               _tl228168228556_
                               _e228173228559_
                               _hd228172228562_
                               _tl228171228564_
                               _e228176228567_
                               _hd228175228570_
                               _tl228174228572_)))))
                     (___match240416240417_
                      (lambda (_e228153228725_
                               _hd228152228728_
                               _tl228151228730_
                               _e228156228733_
                               _hd228155228736_
                               _tl228154228738_
                               _e228159228741_
                               _hd228158228744_
                               _tl228157228746_
                               _e228162228749_
                               _hd228161228752_
                               _tl228160228754_)
                        (let ((_L228757_ _hd228161228752_)
                              (_L228758_ _hd228158228744_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228758_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L228757_)))
                              (___kont240381240382_ _L228757_ _L228758_)
                              (___match240444240445_
                               _e228153228725_
                               _hd228152228728_
                               _tl228151228730_
                               _e228156228733_
                               _hd228155228736_
                               _tl228154228738_
                               _e228159228741_
                               _hd228158228744_
                               _tl228157228746_
                               _e228162228749_
                               _hd228161228752_
                               _tl228160228754_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240379240380_))
                    (let ((_e228153228725_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240379240380_))))
                      (let ((_tl228151228730_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228153228725_)))
                            (_hd228152228728_
                             (let ()
                               (declare (not safe))
                               (##car _e228153228725_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228151228730_))
                            (let ((_e228156228733_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228151228730_))))
                              (let ((_tl228154228738_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228156228733_)))
                                    (_hd228155228736_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228156228733_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd228155228736_))
                                    (let ((_e228159228741_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd228155228736_))))
                                      (let ((_tl228157228746_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228159228741_)))
                                            (_hd228158228744_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228159228741_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228157228746_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228154228738_))
                                                (let ((_e228162228749_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228154228738_))))
                                                  (let ((_tl228160228754_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228162228749_)))
                                                        (_hd228161228752_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228162228749_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228160228754_))
                                                        (___match240416240417_
                                                         _e228153228725_
                                                         _hd228152228728_
                                                         _tl228151228730_
                                                         _e228156228733_
                                                         _hd228155228736_
                                                         _tl228154228738_
                                                         _e228159228741_
                                                         _hd228158228744_
                                                         _tl228157228746_
                                                         _e228162228749_
                                                         _hd228161228752_
                                                         _tl228160228754_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228147228206_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228147228206_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228154228738_))
                                                (let ((_e228201228227_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228154228738_))))
                                                  (let ((_tl228199228232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228201228227_)))
                                                        (_hd228200228230_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228201228227_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228199228232_))
                                                        (___kont240387240388_
                                                         _hd228200228230_
                                                         _hd228155228736_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228147228206_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228147228206_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228154228738_))
                                        (let ((_e228201228227_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228154228738_))))
                                          (let ((_tl228199228232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228201228227_)))
                                                (_hd228200228230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228201228227_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228199228232_))
                                                (___kont240387240388_
                                                 _hd228200228230_
                                                 _hd228155228736_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228147228206_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228147228206_))))))
                            (let () (declare (not safe)) (_g228147228206_)))))
                    (let () (declare (not safe)) (_g228147228206_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx227070_)
        (letrec* ((_bind-e__238775238776_
                   (lambda (_id228122_ _expr228123_ _compile?228124_)
                     (let ((__tmp241111
                            (let ()
                              (declare (not safe))
                              (cons _id228122_ '())))
                           (__tmp241109
                            (let ((__tmp241110
                                   (if _compile?228124_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr228123_))
                                       _expr228123_)))
                              (declare (not safe))
                              (cons __tmp241110 '()))))
                       (declare (not safe))
                       (cons __tmp241111 __tmp241109))))
                  (_bind-e__0__238777238778_
                   (lambda (_id228129_ _expr228130_)
                     (let ((_compile?228132_ '#t))
                       (declare (not safe))
                       (_bind-e__238775238776_
                        _id228129_
                        _expr228130_
                        _compile?228132_))))
                  (_bind-e227072_
                   (lambda _g241113_
                     (let ((_g241112_
                            (let ()
                              (declare (not safe))
                              (##length _g241113_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241112_ 2))
                              (apply (lambda (_id228129_ _expr228130_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__238777238778_
                                          _id228129_
                                          _expr228130_)))
                                     _g241113_))
                             ((let () (declare (not safe)) (##fx= _g241112_ 3))
                              (apply (lambda (_id228134_
                                              _expr228135_
                                              _compile?228136_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__238775238776_
                                          _id228134_
                                          _expr228135_
                                          _compile?228136_)))
                                     _g241113_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241113_))))))
                  (_compile-bindings227073_
                   (lambda (_bindings227706_)
                     (let _lp227708_ ((_rest227710_ _bindings227706_)
                                      (_lift1227711_ '())
                                      (_lift2227712_ '())
                                      (_bind227713_ '()))
                       (let* ((_rest227714227722_ _rest227710_)
                              (_else227716227730_
                               (lambda ()
                                 (values (reverse _lift1227711_)
                                         (reverse _lift2227712_)
                                         (reverse _bind227713_))))
                              (_K227718228109_
                               (lambda (_rest227733_ _hd227734_)
                                 (let* ((___stx240515240516_ _hd227734_)
                                        (_g227738227774_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240515240516_)))))
                                   (let ((___kont240517240518_
                                          (lambda (_L228016_ _L228017_)
                                            (let* ((___stx240495240496_
                                                    _L228016_)
                                                   (_g228032228046_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240495240496_)))))
                                              (let ((___kont240497240498_
                                                     (lambda (_L228094_)
                                                       (let ((__tmp241114
                                                              (let ((__tmp241115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__238775238776_
                                _L228017_
                                _L228016_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241115 _bind227713_))))
                 (declare (not safe))
                 (_lp227708_
                  _rest227733_
                  _lift1227711_
                  _lift2227712_
                  __tmp241114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240499240500_
                                                     (lambda (_L228059_)
                                                       (let ((_g241116_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx227070_
                         _L228017_
                         _L228059_
                         '#t))))
                 (begin
                   (let ((_g241117_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241116_)
                                (##vector-length _g241116_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241117_ 3)))
                         (error "Context expects 3 values" _g241117_)))
                   (let ((_ids228069_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241116_ 0)))
                         (_impls228070_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241116_ 1)))
                         (_clauses228071_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241116_ 2))))
                     (let* ((_g241118_
                             (for-each gx#core-bind-runtime! _ids228069_))
                            (_xbind228074_
                             (map _bind-e227072_ _ids228069_ _impls228070_))
                            (_expr*228076_
                             (let ((__tmp241120
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses228071_)))
                                   (__tmp241119
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241120
                                __tmp241119)))
                            (_bind*228078_
                             (let ()
                               (declare (not safe))
                               (_bind-e__238775238776_
                                _L228017_
                                _expr*228076_
                                '#f))))
                       (let ((__tmp241122
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L228017_)))
                             (__tmp241121
                              (map gxc#identifier-symbol _ids228069_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241122
                          '" => "
                          __tmp241121))
                       (let ((__tmp241124
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2227712_ _xbind228074_)))
                             (__tmp241123
                              (let ()
                                (declare (not safe))
                                (cons _bind*228078_ _bind227713_))))
                         (declare (not safe))
                         (_lp227708_
                          _rest227733_
                          _lift1227711_
                          __tmp241124
                          __tmp241123)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240506240507_
                                                       (lambda (_e228037228086_
                                                                _hd228036228089_
                                                                _tl228035228091_)
                                                         (let ((_L228094_
                                                                _tl228035228091_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L228094_))
                       (___kont240497240498_ _L228094_)
                       (___kont240499240500_ _tl228035228091_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240495240496_))
                                                      (let ((_e228037228086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240495240496_))))
                (let ((_tl228035228091_
                       (let () (declare (not safe)) (##cdr _e228037228086_)))
                      (_hd228036228089_
                       (let () (declare (not safe)) (##car _e228037228086_))))
                  (___match240506240507_
                   _e228037228086_
                   _hd228036228089_
                   _tl228035228091_)))
              (let () (declare (not safe)) (_g228032228046_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240519240520_
                                          (lambda (_L227844_ _L227845_)
                                            (let* ((_g227859227889_
                                                    (lambda (_g227860227886_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227860227886_))))
                                                   (_g227858227984_
                                                    (lambda (_g227860227892_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227860227892_))
                                                          (let ((_e227866227894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227860227892_))))
                    (let ((_hd227865227897_
                           (let ()
                             (declare (not safe))
                             (##car _e227866227894_)))
                          (_tl227864227899_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227866227894_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227864227899_))
                          (let ((_e227869227902_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227864227899_))))
                            (let ((_hd227868227905_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227869227902_)))
                                  (_tl227867227907_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227869227902_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227868227905_))
                                  (let ((_e227872227910_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227868227905_))))
                                    (let ((_hd227871227913_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227872227910_)))
                                          (_tl227870227915_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227872227910_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227871227913_))
                                          (let ((_e227875227918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227871227913_))))
                                            (let ((_hd227874227921_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227875227918_)))
                                                  (_tl227873227923_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227875227918_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227874227921_))
                                                  (let ((_e227878227926_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227874227921_))))
                                                    (let ((_hd227877227929_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227878227926_)))
                                                          (_tl227876227931_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227878227926_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227876227931_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227873227923_))
                      (let ((_e227881227934_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227873227923_))))
                        (let ((_hd227880227937_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227881227934_)))
                              (_tl227879227939_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227881227934_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227879227939_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl227870227915_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227867227907_))
                                      (let ((_e227884227942_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227867227907_))))
                                        (let ((_hd227883227945_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227884227942_)))
                                              (_tl227882227947_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227884227942_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227882227947_))
                                              ((lambda (_L227950_
                                                        _L227951_
                                                        _L227952_)
                                                 (let* ((_lambda-id227976_
                                                         (let ((__tmp241126
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L227845_)))
                       (__tmp241125 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241126 __tmp241125)))
                (_lambda-id227978_
                 (let ((__tmp241127
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx227070_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id227976_ __tmp241127)))
                (_g241128_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id227978_)))
                (_new-case-lambda-expr227981_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L227950_
                    _L227952_
                    _lambda-id227978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241130
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L227845_)))
                                                         (__tmp241129
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id227978_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241130
                                                      '" => "
                                                      __tmp241129))
                                                   (let ((__tmp241133
                                                          (let ((__tmp241134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__238775238776_
                            _L227845_
                            _new-case-lambda-expr227981_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241134 _rest227733_)))
                 (__tmp241131
                  (let ((__tmp241132
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__238777238778_
                            _lambda-id227978_
                            _L227951_))))
                    (declare (not safe))
                    (cons __tmp241132 _lift1227711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp227708_
                                                      __tmp241133
                                                      __tmp241131
                                                      _lift2227712_
                                                      _bind227713_))))
                                               _hd227883227945_
                                               _hd227880227937_
                                               _hd227877227929_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227859227889_
                                                 _g227860227892_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227859227889_ _g227860227892_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g227859227889_ _g227860227892_)))
                              (let ()
                                (declare (not safe))
                                (_g227859227889_ _g227860227892_)))))
                      (let ()
                        (declare (not safe))
                        (_g227859227889_ _g227860227892_)))
                  (let ()
                    (declare (not safe))
                    (_g227859227889_ _g227860227892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227859227889_
                                                     _g227860227892_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227859227889_
                                             _g227860227892_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227859227889_ _g227860227892_)))))
                          (let ()
                            (declare (not safe))
                            (_g227859227889_ _g227860227892_)))))
                  (let ()
                    (declare (not safe))
                    (_g227859227889_ _g227860227892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227858227984_ _L227844_))))
                                         (___kont240521240522_
                                          (lambda (_L227795_ _L227796_)
                                            (let ((__tmp241135
                                                   (let ((__tmp241136
                                                          (let ((__tmp241137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241138
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L227795_))))
                           (declare (not safe))
                           (cons __tmp241138 '()))))
                    (declare (not safe))
                    (cons _L227796_ __tmp241137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241136
                                                           _bind227713_))))
                                              (declare (not safe))
                                              (_lp227708_
                                               _rest227733_
                                               _lift1227711_
                                               _lift2227712_
                                               __tmp241135)))))
                                     (let* ((___match240566240567_
                                             (lambda (_e227755227820_
                                                      _hd227754227823_
                                                      _tl227753227825_
                                                      _e227758227828_
                                                      _hd227757227831_
                                                      _tl227756227833_
                                                      _e227761227836_
                                                      _hd227760227839_
                                                      _tl227759227841_)
                                               (let ((_L227844_
                                                      _hd227760227839_)
                                                     (_L227845_
                                                      _hd227757227831_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227845_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L227844_)))
                                                     (___kont240519240520_
                                                      _L227844_
                                                      _L227845_)
                                                     (___kont240521240522_
                                                      _hd227760227839_
                                                      _hd227754227823_)))))
                                            (___match240544240545_
                                             (lambda (_e227744227992_
                                                      _hd227743227995_
                                                      _tl227742227997_
                                                      _e227747228000_
                                                      _hd227746228003_
                                                      _tl227745228005_
                                                      _e227750228008_
                                                      _hd227749228011_
                                                      _tl227748228013_)
                                               (let ((_L228016_
                                                      _hd227749228011_)
                                                     (_L228017_
                                                      _hd227746228003_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228017_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L228016_)))
                                                     (___kont240517240518_
                                                      _L228016_
                                                      _L228017_)
                                                     (___match240566240567_
                                                      _e227744227992_
                                                      _hd227743227995_
                                                      _tl227742227997_
                                                      _e227747228000_
                                                      _hd227746228003_
                                                      _tl227745228005_
                                                      _e227750228008_
                                                      _hd227749228011_
                                                      _tl227748228013_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240515240516_))
                                           (let ((_e227744227992_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240515240516_))))
                                             (let ((_tl227742227997_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227744227992_)))
                                                   (_hd227743227995_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227744227992_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227743227995_))
                                                   (let ((_e227747228000_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227743227995_))))
                                                     (let ((_tl227745228005_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227747228000_)))
                                                           (_hd227746228003_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227747228000_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227745228005_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227742227997_))
                       (let ((_e227750228008_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227742227997_))))
                         (let ((_tl227748228013_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227750228008_)))
                               (_hd227749228011_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227750228008_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227748228013_))
                               (___match240544240545_
                                _e227744227992_
                                _hd227743227995_
                                _tl227742227997_
                                _e227747228000_
                                _hd227746228003_
                                _tl227745228005_
                                _e227750228008_
                                _hd227749228011_
                                _tl227748228013_)
                               (let ()
                                 (declare (not safe))
                                 (_g227738227774_)))))
                       (let () (declare (not safe)) (_g227738227774_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227742227997_))
                       (let ((_e227769227787_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227742227997_))))
                         (let ((_tl227767227792_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227769227787_)))
                               (_hd227768227790_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227769227787_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227767227792_))
                               (___kont240521240522_
                                _hd227768227790_
                                _hd227743227995_)
                               (let ()
                                 (declare (not safe))
                                 (_g227738227774_)))))
                       (let () (declare (not safe)) (_g227738227774_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227742227997_))
                                                       (let ((_e227769227787_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227742227997_))))
                 (let ((_tl227767227792_
                        (let () (declare (not safe)) (##cdr _e227769227787_)))
                       (_hd227768227790_
                        (let () (declare (not safe)) (##car _e227769227787_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227767227792_))
                       (___kont240521240522_ _hd227768227790_ _hd227743227995_)
                       (let () (declare (not safe)) (_g227738227774_)))))
               (let () (declare (not safe)) (_g227738227774_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227738227774_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227714227722_))
                             (let ((_hd227719228112_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227714227722_)))
                                   (_tl227720228114_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227714227722_))))
                               (let* ((_hd228117_ _hd227719228112_)
                                      (_rest228119_ _tl227720228114_))
                                 (declare (not safe))
                                 (_K227718228109_ _rest228119_ _hd228117_)))
                             (let ()
                               (declare (not safe))
                               (_else227716227730_)))))))
                  (_lift-kw-lambda?227074_
                   (lambda (_bind227630_)
                     (let* ((___stx240583240584_ _bind227630_)
                            (_g227633227650_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240583240584_)))))
                       (let ((___kont240585240586_
                              (lambda (_L227686_ _L227687_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L227687_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L227686_))
                                    '#f)))
                             (___kont240587240588_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx240583240584_))
                             (let ((_e227639227662_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx240583240584_))))
                               (let ((_tl227637227667_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e227639227662_)))
                                     (_hd227638227665_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e227639227662_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd227638227665_))
                                     (let ((_e227642227670_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd227638227665_))))
                                       (let ((_tl227640227675_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e227642227670_)))
                                             (_hd227641227673_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e227642227670_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl227640227675_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl227637227667_))
                                                 (let ((_e227645227678_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl227637227667_))))
                                                   (let ((_tl227643227683_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e227645227678_)))
                                                         (_hd227644227681_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e227645227678_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl227643227683_))
                                                         (___kont240585240586_
                                                          _hd227644227681_
                                                          _hd227641227673_)
                                                         (___kont240587240588_))))
                                                 (___kont240587240588_))
                                             (___kont240587240588_))))
                                     (___kont240587240588_))))
                             (___kont240587240588_))))))
                  (_lift-kw-lambda-bindings227075_
                   (lambda (_bindings227242_)
                     (let _lp227244_ ((_rest227246_ _bindings227242_)
                                      (_lift1227247_ '())
                                      (_lift2227248_ '())
                                      (_bind227249_ '()))
                       (let* ((_rest227250227258_ _rest227246_)
                              (_else227252227266_
                               (lambda ()
                                 (values (reverse _lift1227247_)
                                         (reverse _lift2227248_)
                                         (reverse _bind227249_))))
                              (_K227254227618_
                               (lambda (_rest227269_ _hd227270_)
                                 (let* ((___stx240613240614_ _hd227270_)
                                        (_g227273227298_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240613240614_)))))
                                   (let ((___kont240615240616_
                                          (lambda (_L227368_ _L227369_)
                                            (let* ((_g227383227436_
                                                    (lambda (_g227384227433_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227384227433_))))
                                                   (_g227382227612_
                                                    (lambda (_g227384227439_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227384227439_))
                                                          (let ((_e227392227441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227384227439_))))
                    (let ((_hd227391227444_
                           (let ()
                             (declare (not safe))
                             (##car _e227392227441_)))
                          (_tl227390227446_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227392227441_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227390227446_))
                          (let ((_e227395227449_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227390227446_))))
                            (let ((_hd227394227452_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227395227449_)))
                                  (_tl227393227454_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227395227449_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227394227452_))
                                  (let ((_e227398227457_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227394227452_))))
                                    (let ((_hd227397227460_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227398227457_)))
                                          (_tl227396227462_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227398227457_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227397227460_))
                                          (let ((_e227401227465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227397227460_))))
                                            (let ((_hd227400227468_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227401227465_)))
                                                  (_tl227399227470_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227401227465_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227400227468_))
                                                  (let ((_e227404227473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227400227468_))))
                                                    (let ((_hd227403227476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227404227473_)))
                                                          (_tl227402227478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227404227473_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227402227478_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227399227470_))
                      (let ((_e227407227481_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227399227470_))))
                        (let ((_hd227406227484_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227407227481_)))
                              (_tl227405227486_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227407227481_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd227406227484_))
                              (let ((_e227410227489_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd227406227484_))))
                                (let ((_hd227409227492_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227410227489_)))
                                      (_tl227408227494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227410227489_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227408227494_))
                                      (let ((_e227413227497_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227408227494_))))
                                        (let ((_hd227412227500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227413227497_)))
                                              (_tl227411227502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227413227497_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd227412227500_))
                                              (let ((_e227416227505_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd227412227500_))))
                                                (let ((_hd227415227508_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227416227505_)))
                                                      (_tl227414227510_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227416227505_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227415227508_))
                                                      (let ((_e227419227513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227415227508_))))
                (let ((_hd227418227516_
                       (let () (declare (not safe)) (##car _e227419227513_)))
                      (_tl227417227518_
                       (let () (declare (not safe)) (##cdr _e227419227513_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227418227516_))
                      (let ((_e227422227521_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227418227516_))))
                        (let ((_hd227421227524_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227422227521_)))
                              (_tl227420227526_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227422227521_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227420227526_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227417227518_))
                                  (let ((_e227425227529_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227417227518_))))
                                    (let ((_hd227424227532_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227425227529_)))
                                          (_tl227423227534_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227425227529_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227423227534_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227414227510_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227411227502_))
                                                  (let ((_e227428227537_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227411227502_))))
                                                    (let ((_hd227427227540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227428227537_)))
                                                          (_tl227426227542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227428227537_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227426227542_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227405227486_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227396227462_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227393227454_))
                              (let ((_e227431227545_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227393227454_))))
                                (let ((_hd227430227548_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227431227545_)))
                                      (_tl227429227550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227431227545_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227429227550_))
                                      ((lambda (_L227553_
                                                _L227554_
                                                _L227555_
                                                _L227556_
                                                _L227557_)
                                         (let* ((_get-kws-id227597_
                                                 (let ((__tmp241140
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227369_)))
                                                       (__tmp241139
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241140
                                                    __tmp241139)))
                                                (_get-kws-id227599_
                                                 (let ((__tmp241141
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227070_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227597_
                                                    __tmp241141)))
                                                (_main-id227601_
                                                 (let ((__tmp241143
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227369_)))
                                                       (__tmp241142
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241143
                                                    __tmp241142)))
                                                (_main-id227603_
                                                 (let ((__tmp241144
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227070_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227601_
                                                    __tmp241144)))
                                                (_g241145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227599_)))
                                                (_g241146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id227603_)))
                                                (_new-kw-dispatch227607_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227553_
                                                    _L227557_
                                                    _get-kws-id227599_)))
                                                (_new-get-kws227609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227554_
                                                    _L227556_
                                                    _main-id227603_))))
                                           (let ((__tmp241149
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L227369_)))
                                                 (__tmp241148
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227599_)))
                                                 (__tmp241147
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id227603_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241149
                                              '" => "
                                              __tmp241148
                                              '" => "
                                              __tmp241147))
                                           (let ((__tmp241154
                                                  (let ((__tmp241155
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238775238776_
                                                            _main-id227603_
                                                            _L227555_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241155
                                                          _lift1227247_)))
                                                 (__tmp241152
                                                  (let ((__tmp241153
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238775238776_
                                                            _get-kws-id227599_
                                                            _new-get-kws227609_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241153
                                                          _lift2227248_)))
                                                 (__tmp241150
                                                  (let ((__tmp241151
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238775238776_
                                                            _L227369_
                                                            _new-kw-dispatch227607_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241151
                                                          _bind227249_))))
                                             (declare (not safe))
                                             (_lp227244_
                                              _rest227269_
                                              __tmp241154
                                              __tmp241152
                                              __tmp241150))))
                                       _hd227430227548_
                                       _hd227427227540_
                                       _hd227424227532_
                                       _hd227421227524_
                                       _hd227403227476_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227383227436_ _g227384227439_)))))
                              (let ()
                                (declare (not safe))
                                (_g227383227436_ _g227384227439_)))
                          (let ()
                            (declare (not safe))
                            (_g227383227436_ _g227384227439_)))
                      (let ()
                        (declare (not safe))
                        (_g227383227436_ _g227384227439_)))
                  (let ()
                    (declare (not safe))
                    (_g227383227436_ _g227384227439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227383227436_
                                                     _g227384227439_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g227383227436_
                                                 _g227384227439_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g227383227436_
                                             _g227384227439_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227383227436_ _g227384227439_)))
                              (let ()
                                (declare (not safe))
                                (_g227383227436_ _g227384227439_)))))
                      (let ()
                        (declare (not safe))
                        (_g227383227436_ _g227384227439_)))))
              (let ()
                (declare (not safe))
                (_g227383227436_ _g227384227439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g227383227436_
                                                 _g227384227439_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227383227436_ _g227384227439_)))))
                              (let ()
                                (declare (not safe))
                                (_g227383227436_ _g227384227439_)))))
                      (let ()
                        (declare (not safe))
                        (_g227383227436_ _g227384227439_)))
                  (let ()
                    (declare (not safe))
                    (_g227383227436_ _g227384227439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227383227436_
                                                     _g227384227439_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227383227436_
                                             _g227384227439_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227383227436_ _g227384227439_)))))
                          (let ()
                            (declare (not safe))
                            (_g227383227436_ _g227384227439_)))))
                  (let ()
                    (declare (not safe))
                    (_g227383227436_ _g227384227439_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227382227612_ _L227368_))))
                                         (___kont240617240618_
                                          (lambda (_L227319_ _L227320_)
                                            (let ((__tmp241156
                                                   (let ((__tmp241157
                                                          (let ((__tmp241158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L227319_ '()))))
                    (declare (not safe))
                    (cons _L227320_ __tmp241158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241157
                                                           _bind227249_))))
                                              (declare (not safe))
                                              (_lp227244_
                                               _rest227269_
                                               _lift1227247_
                                               _lift2227248_
                                               __tmp241156)))))
                                     (let ((___match240640240641_
                                            (lambda (_e227279227344_
                                                     _hd227278227347_
                                                     _tl227277227349_
                                                     _e227282227352_
                                                     _hd227281227355_
                                                     _tl227280227357_
                                                     _e227285227360_
                                                     _hd227284227363_
                                                     _tl227283227365_)
                                              (let ((_L227368_
                                                     _hd227284227363_)
                                                    (_L227369_
                                                     _hd227281227355_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L227369_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L227368_)))
                                                    (___kont240615240616_
                                                     _L227368_
                                                     _L227369_)
                                                    (___kont240617240618_
                                                     _hd227284227363_
                                                     _hd227278227347_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240613240614_))
                                           (let ((_e227279227344_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240613240614_))))
                                             (let ((_tl227277227349_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227279227344_)))
                                                   (_hd227278227347_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227279227344_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227278227347_))
                                                   (let ((_e227282227352_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227278227347_))))
                                                     (let ((_tl227280227357_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227282227352_)))
                                                           (_hd227281227355_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227282227352_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227280227357_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227277227349_))
                       (let ((_e227285227360_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227277227349_))))
                         (let ((_tl227283227365_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227285227360_)))
                               (_hd227284227363_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227285227360_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227283227365_))
                               (___match240640240641_
                                _e227279227344_
                                _hd227278227347_
                                _tl227277227349_
                                _e227282227352_
                                _hd227281227355_
                                _tl227280227357_
                                _e227285227360_
                                _hd227284227363_
                                _tl227283227365_)
                               (let ()
                                 (declare (not safe))
                                 (_g227273227298_)))))
                       (let () (declare (not safe)) (_g227273227298_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227277227349_))
                       (let ((_e227293227311_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227277227349_))))
                         (let ((_tl227291227316_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227293227311_)))
                               (_hd227292227314_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227293227311_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227291227316_))
                               (___kont240617240618_
                                _hd227292227314_
                                _hd227278227347_)
                               (let ()
                                 (declare (not safe))
                                 (_g227273227298_)))))
                       (let () (declare (not safe)) (_g227273227298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227277227349_))
                                                       (let ((_e227293227311_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227277227349_))))
                 (let ((_tl227291227316_
                        (let () (declare (not safe)) (##cdr _e227293227311_)))
                       (_hd227292227314_
                        (let () (declare (not safe)) (##car _e227293227311_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227291227316_))
                       (___kont240617240618_ _hd227292227314_ _hd227278227347_)
                       (let () (declare (not safe)) (_g227273227298_)))))
               (let () (declare (not safe)) (_g227273227298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227273227298_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227250227258_))
                             (let ((_hd227255227621_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227250227258_)))
                                   (_tl227256227623_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227250227258_))))
                               (let* ((_hd227626_ _hd227255227621_)
                                      (_rest227628_ _tl227256227623_))
                                 (declare (not safe))
                                 (_K227254227618_ _rest227628_ _hd227626_)))
                             (let ()
                               (declare (not safe))
                               (_else227252227266_))))))))
          (let* ((___stx240657240658_ _stx227070_)
                 (_g227078227104_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240657240658_)))))
            (let ((___kont240659240660_
                   (lambda (_L227164_ _L227165_)
                     (let ((__tmp241160
                            (lambda ()
                              (if (let ((__tmp241187
                                         (let ((__tmp241188
                                                (lambda (_g227193227196_
                                                         _g227194227198_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g227193227196_
                                                          _g227194227198_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp241188
                                                   '()
                                                   _L227165_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?227074_
                                            __tmp241187))
                                  (let ((_g241174_
                                         (let ((__tmp241176
                                                (let ((__tmp241177
                                                       (lambda (_g227200227203_
                                                                _g227201227205_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227200227203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227201227205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241177
                                                          '()
                                                          _L227165_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings227075_
                                            __tmp241176))))
                                    (begin
                                      (let ((_g241175_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241174_)
                                                   (##vector-length _g241174_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241175_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241175_)))
                                      (let ((_lift1227208_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241174_ 0)))
                                            (_lift2227209_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241174_ 1)))
                                            (_hd227210_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241174_ 2))))
                                        (let* ((_expr227212_
                                                (let ((__tmp241178
                                                       (let ((__tmp241179
                                                              (let ((__tmp241180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L227164_ '()))))
                        (declare (not safe))
                        (cons _hd227210_ __tmp241180))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241178
                                                   _stx227070_)))
                                               (_expr227214_
                                                (let ((__tmp241181
                                                       (let ((__tmp241182
                                                              (let ((__tmp241183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227212_ '()))))
                        (declare (not safe))
                        (cons _lift2227209_ __tmp241183))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241181
                                                   _stx227070_)))
                                               (_expr227216_
                                                (let ((__tmp241184
                                                       (let ((__tmp241185
                                                              (let ((__tmp241186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227214_ '()))))
                        (declare (not safe))
                        (cons _lift1227208_ __tmp241186))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241184
                                                   _stx227070_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr227216_))))))
                                  (let ((_g241161_
                                         (let ((__tmp241163
                                                (let ((__tmp241164
                                                       (lambda (_g227218227221_
                                                                _g227219227223_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227218227221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227219227223_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241164
                                                          '()
                                                          _L227165_))))
                                           (declare (not safe))
                                           (_compile-bindings227073_
                                            __tmp241163))))
                                    (begin
                                      (let ((_g241162_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241161_)
                                                   (##vector-length _g241161_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241162_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241162_)))
                                      (let ((_lift1227226_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241161_ 0)))
                                            (_lift2227227_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241161_ 1)))
                                            (_hd227228_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241161_ 2))))
                                        (let* ((_body227230_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L227164_)))
                                               (_expr227232_
                                                (let ((__tmp241165
                                                       (let ((__tmp241166
                                                              (let ((__tmp241167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body227230_ '()))))
                        (declare (not safe))
                        (cons _hd227228_ __tmp241167))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241165
                                                   _stx227070_)))
                                               (_expr227234_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2227227_))
                                                    _expr227232_
                                                    (let ((__tmp241168
                                                           (let ((__tmp241169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241170
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227232_ '()))))
                            (declare (not safe))
                            (cons _lift2227227_ __tmp241170))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241169))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241168 _stx227070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr227236_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1227226_))
                                                    _expr227234_
                                                    (let ((__tmp241171
                                                           (let ((__tmp241172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241173
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227234_ '()))))
                            (declare (not safe))
                            (cons _lift1227226_ __tmp241173))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241172))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241171 _stx227070_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr227236_)))))))
                           (__tmp241159
                            (let ((__obj240863
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj240863)
                              __obj240863)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241160
                        gx#current-expander-context
                        __tmp241159))))
                  (___kont240663240664_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx227070_)))))
              (let ((___match240684240685_
                     (lambda (_e227084227116_
                              _hd227083227119_
                              _tl227082227121_
                              _e227087227124_
                              _hd227086227127_
                              _tl227085227129_
                              ___splice240661240662_
                              _target227088227132_
                              _tl227090227134_)
                       (letrec ((_loop227091227137_
                                 (lambda (_hd227089227140_ _bind227095227142_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd227089227140_))
                                       (let ((_e227092227145_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd227089227140_))))
                                         (let ((_lp-tl227094227150_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e227092227145_)))
                                               (_lp-hd227093227148_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e227092227145_))))
                                           (let ((__tmp241191
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd227093227148_
                                                          _bind227095227142_))))
                                             (declare (not safe))
                                             (_loop227091227137_
                                              _lp-tl227094227150_
                                              __tmp241191))))
                                       (let ((_bind227096227153_
                                              (reverse _bind227095227142_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl227085227129_))
                                             (let ((_e227099227156_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl227085227129_))))
                                               (let ((_tl227097227161_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e227099227156_)))
                                                     (_hd227098227159_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e227099227156_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl227097227161_))
                                                     (let ((_L227164_
                                                            _hd227098227159_)
                                                           (_L227165_
                                                            _bind227096227153_))
                                                       (if (let ((__tmp241189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241190
                                 (lambda (_g227185227188_ _g227186227190_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g227185227188_ _g227186227190_)))))
                            (declare (not safe))
                            (foldr1 __tmp241190 '() _L227165_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241189))
                   (___kont240659240660_ _L227164_ _L227165_)
                   (___kont240663240664_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont240663240664_))))
                                             (___kont240663240664_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop227091227137_ _target227088227132_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240657240658_))
                    (let ((_e227084227116_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240657240658_))))
                      (let ((_tl227082227121_
                             (let ()
                               (declare (not safe))
                               (##cdr _e227084227116_)))
                            (_hd227083227119_
                             (let ()
                               (declare (not safe))
                               (##car _e227084227116_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227082227121_))
                            (let ((_e227087227124_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227082227121_))))
                              (let ((_tl227085227129_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227087227124_)))
                                    (_hd227086227127_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227087227124_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd227086227127_))
                                    (let ((___splice240661240662_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd227086227127_
                                              '0))))
                                      (let ((_tl227090227134_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240661240662_
                                                '1)))
                                            (_target227088227132_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240661240662_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl227090227134_))
                                            (___match240684240685_
                                             _e227084227116_
                                             _hd227083227119_
                                             _tl227082227121_
                                             _e227087227124_
                                             _hd227086227127_
                                             _tl227085227129_
                                             ___splice240661240662_
                                             _target227088227132_
                                             _tl227090227134_)
                                            (___kont240663240664_))))
                                    (___kont240663240664_))))
                            (___kont240663240664_))))
                    (___kont240663240664_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx226214_)
        (letrec* ((_bind-e__238780238781_
                   (lambda (_id227054_ _expr227055_ _compile?227056_)
                     (let ((__tmp241194
                            (let ()
                              (declare (not safe))
                              (cons _id227054_ '())))
                           (__tmp241192
                            (let ((__tmp241193
                                   (if _compile?227056_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr227055_))
                                       _expr227055_)))
                              (declare (not safe))
                              (cons __tmp241193 '()))))
                       (declare (not safe))
                       (cons __tmp241194 __tmp241192))))
                  (_bind-e__0__238782238783_
                   (lambda (_id227061_ _expr227062_)
                     (let ((_compile?227064_ '#t))
                       (declare (not safe))
                       (_bind-e__238780238781_
                        _id227061_
                        _expr227062_
                        _compile?227064_))))
                  (_bind-e226216_
                   (lambda _g241196_
                     (let ((_g241195_
                            (let ()
                              (declare (not safe))
                              (##length _g241196_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241195_ 2))
                              (apply (lambda (_id227061_ _expr227062_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__238782238783_
                                          _id227061_
                                          _expr227062_)))
                                     _g241196_))
                             ((let () (declare (not safe)) (##fx= _g241195_ 3))
                              (apply (lambda (_id227066_
                                              _expr227067_
                                              _compile?227068_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__238780238781_
                                          _id227066_
                                          _expr227067_
                                          _compile?227068_)))
                                     _g241196_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241196_))))))
                  (_compile-bindings226217_
                   (lambda (_rest226352_)
                     (let _lp226354_ ((_rest226356_ _rest226352_)
                                      (_bind226357_ '()))
                       (let* ((_rest226358226366_ _rest226356_)
                              (_else226360226374_
                               (lambda () (reverse _bind226357_)))
                              (_K226362227041_
                               (lambda (_rest226377_ _hd226378_)
                                 (let* ((___stx240707240708_ _hd226378_)
                                        (_g226383226430_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240707240708_)))))
                                   (let ((___kont240709240710_
                                          (lambda (_L226948_ _L226949_)
                                            (let* ((___stx240687240688_
                                                    _L226948_)
                                                   (_g226964226978_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240687240688_)))))
                                              (let ((___kont240689240690_
                                                     (lambda (_L227026_)
                                                       (let ((__tmp241197
                                                              (let ((__tmp241198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__238780238781_
                                _L226949_
                                _L226948_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241198 _bind226357_))))
                 (declare (not safe))
                 (_lp226354_ _rest226377_ __tmp241197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240691240692_
                                                     (lambda (_L226991_)
                                                       (let ((_g241199_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx226214_
                         _L226949_
                         _L226991_
                         '#t))))
                 (begin
                   (let ((_g241200_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241199_)
                                (##vector-length _g241199_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241200_ 3)))
                         (error "Context expects 3 values" _g241200_)))
                   (let ((_ids227001_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241199_ 0)))
                         (_impls227002_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241199_ 1)))
                         (_clauses227003_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241199_ 2))))
                     (let* ((_g241201_
                             (for-each gx#core-bind-runtime! _ids227001_))
                            (_xbind227006_
                             (map _bind-e226216_ _ids227001_ _impls227002_))
                            (_expr*227008_
                             (let ((__tmp241203
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses227003_)))
                                   (__tmp241202
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241203
                                __tmp241202)))
                            (_bind*227010_
                             (let ()
                               (declare (not safe))
                               (_bind-e__238780238781_
                                _L226949_
                                _expr*227008_
                                '#f))))
                       (let ((__tmp241205
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L226949_)))
                             (__tmp241204
                              (map gxc#identifier-symbol _ids227001_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241205
                          '" => "
                          __tmp241204))
                       (let ((__tmp241206
                              (let ((__tmp241207
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind226357_
                                               _xbind227006_))))
                                (declare (not safe))
                                (cons _bind*227010_ __tmp241207))))
                         (declare (not safe))
                         (_lp226354_ _rest226377_ __tmp241206)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240698240699_
                                                       (lambda (_e226969227018_
                                                                _hd226968227021_
                                                                _tl226967227023_)
                                                         (let ((_L227026_
                                                                _tl226967227023_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L227026_))
                       (___kont240689240690_ _L227026_)
                       (___kont240691240692_ _tl226967227023_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240687240688_))
                                                      (let ((_e226969227018_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240687240688_))))
                (let ((_tl226967227023_
                       (let () (declare (not safe)) (##cdr _e226969227018_)))
                      (_hd226968227021_
                       (let () (declare (not safe)) (##car _e226969227018_))))
                  (___match240698240699_
                   _e226969227018_
                   _hd226968227021_
                   _tl226967227023_)))
              (let () (declare (not safe)) (_g226964226978_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240711240712_
                                          (lambda (_L226776_ _L226777_)
                                            (let* ((_g226791226821_
                                                    (lambda (_g226792226818_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226792226818_))))
                                                   (_g226790226916_
                                                    (lambda (_g226792226824_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226792226824_))
                                                          (let ((_e226798226826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226792226824_))))
                    (let ((_hd226797226829_
                           (let ()
                             (declare (not safe))
                             (##car _e226798226826_)))
                          (_tl226796226831_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226798226826_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226796226831_))
                          (let ((_e226801226834_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226796226831_))))
                            (let ((_hd226800226837_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226801226834_)))
                                  (_tl226799226839_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226801226834_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226800226837_))
                                  (let ((_e226804226842_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226800226837_))))
                                    (let ((_hd226803226845_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226804226842_)))
                                          (_tl226802226847_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226804226842_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226803226845_))
                                          (let ((_e226807226850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226803226845_))))
                                            (let ((_hd226806226853_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226807226850_)))
                                                  (_tl226805226855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226807226850_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226806226853_))
                                                  (let ((_e226810226858_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226806226853_))))
                                                    (let ((_hd226809226861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226810226858_)))
                                                          (_tl226808226863_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226810226858_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226808226863_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226805226855_))
                      (let ((_e226813226866_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226805226855_))))
                        (let ((_hd226812226869_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226813226866_)))
                              (_tl226811226871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226813226866_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226811226871_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226802226847_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226799226839_))
                                      (let ((_e226816226874_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226799226839_))))
                                        (let ((_hd226815226877_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226816226874_)))
                                              (_tl226814226879_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226816226874_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226814226879_))
                                              ((lambda (_L226882_
                                                        _L226883_
                                                        _L226884_)
                                                 (let* ((_lambda-id226908_
                                                         (let ((__tmp241209
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L226777_)))
                       (__tmp241208 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241209 __tmp241208)))
                (_lambda-id226910_
                 (let ((__tmp241210
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx226214_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id226908_ __tmp241210)))
                (_g241211_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id226910_)))
                (_new-case-lambda-expr226913_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L226882_
                    _L226884_
                    _lambda-id226910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241213
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L226777_)))
                                                         (__tmp241212
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id226910_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241213
                                                      '" => "
                                                      __tmp241212))
                                                   (let ((__tmp241216
                                                          (let ((__tmp241217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__238780238781_
                            _L226777_
                            _new-case-lambda-expr226913_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241217 _rest226377_)))
                 (__tmp241214
                  (let ((__tmp241215
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__238782238783_
                            _lambda-id226910_
                            _L226883_))))
                    (declare (not safe))
                    (cons __tmp241215 _bind226357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp226354_
                                                      __tmp241216
                                                      __tmp241214))))
                                               _hd226815226877_
                                               _hd226812226869_
                                               _hd226809226861_)
                                              (let ()
                                                (declare (not safe))
                                                (_g226791226821_
                                                 _g226792226824_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226791226821_ _g226792226824_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226791226821_ _g226792226824_)))
                              (let ()
                                (declare (not safe))
                                (_g226791226821_ _g226792226824_)))))
                      (let ()
                        (declare (not safe))
                        (_g226791226821_ _g226792226824_)))
                  (let ()
                    (declare (not safe))
                    (_g226791226821_ _g226792226824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226791226821_
                                                     _g226792226824_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226791226821_
                                             _g226792226824_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226791226821_ _g226792226824_)))))
                          (let ()
                            (declare (not safe))
                            (_g226791226821_ _g226792226824_)))))
                  (let ()
                    (declare (not safe))
                    (_g226791226821_ _g226792226824_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226790226916_ _L226776_))))
                                         (___kont240713240714_
                                          (lambda (_L226500_ _L226501_)
                                            (let* ((_g226515226568_
                                                    (lambda (_g226516226565_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226516226565_))))
                                                   (_g226514226744_
                                                    (lambda (_g226516226571_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226516226571_))
                                                          (let ((_e226524226573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226516226571_))))
                    (let ((_hd226523226576_
                           (let ()
                             (declare (not safe))
                             (##car _e226524226573_)))
                          (_tl226522226578_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226524226573_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226522226578_))
                          (let ((_e226527226581_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226522226578_))))
                            (let ((_hd226526226584_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226527226581_)))
                                  (_tl226525226586_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226527226581_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226526226584_))
                                  (let ((_e226530226589_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226526226584_))))
                                    (let ((_hd226529226592_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226530226589_)))
                                          (_tl226528226594_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226530226589_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226529226592_))
                                          (let ((_e226533226597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226529226592_))))
                                            (let ((_hd226532226600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226533226597_)))
                                                  (_tl226531226602_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226533226597_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226532226600_))
                                                  (let ((_e226536226605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226532226600_))))
                                                    (let ((_hd226535226608_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226536226605_)))
                                                          (_tl226534226610_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226536226605_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226534226610_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226531226602_))
                      (let ((_e226539226613_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226531226602_))))
                        (let ((_hd226538226616_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226539226613_)))
                              (_tl226537226618_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226539226613_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd226538226616_))
                              (let ((_e226542226621_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd226538226616_))))
                                (let ((_hd226541226624_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226542226621_)))
                                      (_tl226540226626_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226542226621_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226540226626_))
                                      (let ((_e226545226629_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226540226626_))))
                                        (let ((_hd226544226632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226545226629_)))
                                              (_tl226543226634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226545226629_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd226544226632_))
                                              (let ((_e226548226637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd226544226632_))))
                                                (let ((_hd226547226640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226548226637_)))
                                                      (_tl226546226642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226548226637_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226547226640_))
                                                      (let ((_e226551226645_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd226547226640_))))
                (let ((_hd226550226648_
                       (let () (declare (not safe)) (##car _e226551226645_)))
                      (_tl226549226650_
                       (let () (declare (not safe)) (##cdr _e226551226645_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226550226648_))
                      (let ((_e226554226653_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226550226648_))))
                        (let ((_hd226553226656_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226554226653_)))
                              (_tl226552226658_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226554226653_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226552226658_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226549226650_))
                                  (let ((_e226557226661_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226549226650_))))
                                    (let ((_hd226556226664_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226557226661_)))
                                          (_tl226555226666_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226557226661_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226555226666_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226546226642_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226543226634_))
                                                  (let ((_e226560226669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226543226634_))))
                                                    (let ((_hd226559226672_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226560226669_)))
                                                          (_tl226558226674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226560226669_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226558226674_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl226537226618_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl226528226594_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226525226586_))
                              (let ((_e226563226677_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226525226586_))))
                                (let ((_hd226562226680_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226563226677_)))
                                      (_tl226561226682_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226563226677_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226561226682_))
                                      ((lambda (_L226685_
                                                _L226686_
                                                _L226687_
                                                _L226688_
                                                _L226689_)
                                         (let* ((_get-kws-id226729_
                                                 (let ((__tmp241219
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226501_)))
                                                       (__tmp241218
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241219
                                                    __tmp241218)))
                                                (_get-kws-id226731_
                                                 (let ((__tmp241220
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226214_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id226729_
                                                    __tmp241220)))
                                                (_main-id226733_
                                                 (let ((__tmp241222
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226501_)))
                                                       (__tmp241221
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241222
                                                    __tmp241221)))
                                                (_main-id226735_
                                                 (let ((__tmp241223
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226214_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id226733_
                                                    __tmp241223)))
                                                (_g241224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id226731_)))
                                                (_g241225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id226735_)))
                                                (_new-kw-dispatch226739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L226685_
                                                    _L226689_
                                                    _get-kws-id226731_)))
                                                (_new-get-kws226741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L226686_
                                                    _L226688_
                                                    _main-id226735_))))
                                           (let ((__tmp241228
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L226501_)))
                                                 (__tmp241227
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id226731_)))
                                                 (__tmp241226
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id226735_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241228
                                              '" => "
                                              __tmp241227
                                              '" => "
                                              __tmp241226))
                                           (let ((__tmp241229
                                                  (let ((__tmp241234
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__238780238781_
                                                            _main-id226735_
                                                            _L226687_
                                                            '#f)))
                                                        (__tmp241230
                                                         (let ((__tmp241233
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__238780238781_
                           _get-kws-id226731_
                           _new-get-kws226741_
                           '#f)))
                       (__tmp241231
                        (let ((__tmp241232
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__238780238781_
                                  _L226501_
                                  _new-kw-dispatch226739_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp241232 _rest226377_))))
                   (declare (not safe))
                   (cons __tmp241233 __tmp241231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp241234
                                                          __tmp241230))))
                                             (declare (not safe))
                                             (_lp226354_
                                              __tmp241229
                                              _bind226357_))))
                                       _hd226562226680_
                                       _hd226559226672_
                                       _hd226556226664_
                                       _hd226553226656_
                                       _hd226535226608_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226515226568_ _g226516226571_)))))
                              (let ()
                                (declare (not safe))
                                (_g226515226568_ _g226516226571_)))
                          (let ()
                            (declare (not safe))
                            (_g226515226568_ _g226516226571_)))
                      (let ()
                        (declare (not safe))
                        (_g226515226568_ _g226516226571_)))
                  (let ()
                    (declare (not safe))
                    (_g226515226568_ _g226516226571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226515226568_
                                                     _g226516226571_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226515226568_
                                                 _g226516226571_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226515226568_
                                             _g226516226571_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226515226568_ _g226516226571_)))
                              (let ()
                                (declare (not safe))
                                (_g226515226568_ _g226516226571_)))))
                      (let ()
                        (declare (not safe))
                        (_g226515226568_ _g226516226571_)))))
              (let ()
                (declare (not safe))
                (_g226515226568_ _g226516226571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g226515226568_
                                                 _g226516226571_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226515226568_ _g226516226571_)))))
                              (let ()
                                (declare (not safe))
                                (_g226515226568_ _g226516226571_)))))
                      (let ()
                        (declare (not safe))
                        (_g226515226568_ _g226516226571_)))
                  (let ()
                    (declare (not safe))
                    (_g226515226568_ _g226516226571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226515226568_
                                                     _g226516226571_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226515226568_
                                             _g226516226571_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226515226568_ _g226516226571_)))))
                          (let ()
                            (declare (not safe))
                            (_g226515226568_ _g226516226571_)))))
                  (let ()
                    (declare (not safe))
                    (_g226515226568_ _g226516226571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226514226744_ _L226500_))))
                                         (___kont240715240716_
                                          (lambda (_L226451_ _L226452_)
                                            (let ((__tmp241235
                                                   (let ((__tmp241236
                                                          (let ((__tmp241237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241238
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L226451_))))
                           (declare (not safe))
                           (cons __tmp241238 '()))))
                    (declare (not safe))
                    (cons _L226452_ __tmp241237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241236
                                                           _bind226357_))))
                                              (declare (not safe))
                                              (_lp226354_
                                               _rest226377_
                                               __tmp241235)))))
                                     (let* ((___match240782240783_
                                             (lambda (_e226411226476_
                                                      _hd226410226479_
                                                      _tl226409226481_
                                                      _e226414226484_
                                                      _hd226413226487_
                                                      _tl226412226489_
                                                      _e226417226492_
                                                      _hd226416226495_
                                                      _tl226415226497_)
                                               (let ((_L226500_
                                                      _hd226416226495_)
                                                     (_L226501_
                                                      _hd226413226487_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226501_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L226500_)))
                                                     (___kont240713240714_
                                                      _L226500_
                                                      _L226501_)
                                                     (___kont240715240716_
                                                      _hd226416226495_
                                                      _hd226410226479_)))))
                                            (___match240760240761_
                                             (lambda (_e226400226752_
                                                      _hd226399226755_
                                                      _tl226398226757_
                                                      _e226403226760_
                                                      _hd226402226763_
                                                      _tl226401226765_
                                                      _e226406226768_
                                                      _hd226405226771_
                                                      _tl226404226773_)
                                               (let ((_L226776_
                                                      _hd226405226771_)
                                                     (_L226777_
                                                      _hd226402226763_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226777_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L226776_)))
                                                     (___kont240711240712_
                                                      _L226776_
                                                      _L226777_)
                                                     (___match240782240783_
                                                      _e226400226752_
                                                      _hd226399226755_
                                                      _tl226398226757_
                                                      _e226403226760_
                                                      _hd226402226763_
                                                      _tl226401226765_
                                                      _e226406226768_
                                                      _hd226405226771_
                                                      _tl226404226773_)))))
                                            (___match240738240739_
                                             (lambda (_e226389226924_
                                                      _hd226388226927_
                                                      _tl226387226929_
                                                      _e226392226932_
                                                      _hd226391226935_
                                                      _tl226390226937_
                                                      _e226395226940_
                                                      _hd226394226943_
                                                      _tl226393226945_)
                                               (let ((_L226948_
                                                      _hd226394226943_)
                                                     (_L226949_
                                                      _hd226391226935_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226949_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L226948_)))
                                                     (___kont240709240710_
                                                      _L226948_
                                                      _L226949_)
                                                     (___match240760240761_
                                                      _e226389226924_
                                                      _hd226388226927_
                                                      _tl226387226929_
                                                      _e226392226932_
                                                      _hd226391226935_
                                                      _tl226390226937_
                                                      _e226395226940_
                                                      _hd226394226943_
                                                      _tl226393226945_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240707240708_))
                                           (let ((_e226389226924_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240707240708_))))
                                             (let ((_tl226387226929_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e226389226924_)))
                                                   (_hd226388226927_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e226389226924_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd226388226927_))
                                                   (let ((_e226392226932_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd226388226927_))))
                                                     (let ((_tl226390226937_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e226392226932_)))
                                                           (_hd226391226935_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e226392226932_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226390226937_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl226387226929_))
                       (let ((_e226395226940_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226387226929_))))
                         (let ((_tl226393226945_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226395226940_)))
                               (_hd226394226943_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226395226940_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226393226945_))
                               (___match240738240739_
                                _e226389226924_
                                _hd226388226927_
                                _tl226387226929_
                                _e226392226932_
                                _hd226391226935_
                                _tl226390226937_
                                _e226395226940_
                                _hd226394226943_
                                _tl226393226945_)
                               (let ()
                                 (declare (not safe))
                                 (_g226383226430_)))))
                       (let () (declare (not safe)) (_g226383226430_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl226387226929_))
                       (let ((_e226425226443_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226387226929_))))
                         (let ((_tl226423226448_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226425226443_)))
                               (_hd226424226446_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226425226443_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226423226448_))
                               (___kont240715240716_
                                _hd226424226446_
                                _hd226388226927_)
                               (let ()
                                 (declare (not safe))
                                 (_g226383226430_)))))
                       (let () (declare (not safe)) (_g226383226430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl226387226929_))
                                                       (let ((_e226425226443_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl226387226929_))))
                 (let ((_tl226423226448_
                        (let () (declare (not safe)) (##cdr _e226425226443_)))
                       (_hd226424226446_
                        (let () (declare (not safe)) (##car _e226425226443_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl226423226448_))
                       (___kont240715240716_ _hd226424226446_ _hd226388226927_)
                       (let () (declare (not safe)) (_g226383226430_)))))
               (let () (declare (not safe)) (_g226383226430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g226383226430_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest226358226366_))
                             (let ((_hd226363227044_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest226358226366_)))
                                   (_tl226364227046_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest226358226366_))))
                               (let* ((_hd227049_ _hd226363227044_)
                                      (_rest227051_ _tl226364227046_))
                                 (declare (not safe))
                                 (_K226362227041_ _rest227051_ _hd227049_)))
                             (let ()
                               (declare (not safe))
                               (_else226360226374_))))))))
          (let* ((___stx240799240800_ _stx226214_)
                 (_g226220226247_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240799240800_)))))
            (let ((___kont240801240802_
                   (lambda (_L226307_ _L226308_ _L226309_)
                     (let ((__tmp241240
                            (lambda ()
                              (let ((_hd226346_
                                     (let ((__tmp241241
                                            (let ((__tmp241242
                                                   (lambda (_g226338226341_
                                                            _g226339226343_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226338226341_
                                                             _g226339226343_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241242
                                                      '()
                                                      _L226308_))))
                                       (declare (not safe))
                                       (_compile-bindings226217_ __tmp241241)))
                                    (_body226347_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L226307_))))
                                (let ((__tmp241243
                                       (let ((__tmp241244
                                              (let ((__tmp241245
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body226347_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd226346_
                                                      __tmp241245))))
                                         (declare (not safe))
                                         (cons _L226309_ __tmp241244))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp241243
                                   _stx226214_)))))
                           (__tmp241239
                            (let ((__obj240864
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj240864)
                              __obj240864)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241240
                        gx#current-expander-context
                        __tmp241239))))
                  (___kont240805240806_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx226214_)))))
              (let ((___match240826240827_
                     (lambda (_e226227226259_
                              _hd226226226262_
                              _tl226225226264_
                              _e226230226267_
                              _hd226229226270_
                              _tl226228226272_
                              ___splice240803240804_
                              _target226231226275_
                              _tl226233226277_)
                       (letrec ((_loop226234226280_
                                 (lambda (_hd226232226283_ _bind226238226285_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd226232226283_))
                                       (let ((_e226235226288_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd226232226283_))))
                                         (let ((_lp-tl226237226293_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e226235226288_)))
                                               (_lp-hd226236226291_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e226235226288_))))
                                           (let ((__tmp241248
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd226236226291_
                                                          _bind226238226285_))))
                                             (declare (not safe))
                                             (_loop226234226280_
                                              _lp-tl226237226293_
                                              __tmp241248))))
                                       (let ((_bind226239226296_
                                              (reverse _bind226238226285_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl226228226272_))
                                             (let ((_e226242226299_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl226228226272_))))
                                               (let ((_tl226240226304_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e226242226299_)))
                                                     (_hd226241226302_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e226242226299_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl226240226304_))
                                                     (let ((_L226307_
                                                            _hd226241226302_)
                                                           (_L226308_
                                                            _bind226239226296_)
                                                           (_L226309_
                                                            _hd226226226262_))
                                                       (if (let ((__tmp241246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241247
                                 (lambda (_g226330226333_ _g226331226335_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g226330226333_ _g226331226335_)))))
                            (declare (not safe))
                            (foldr1 __tmp241247 '() _L226308_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241246))
                   (___kont240801240802_ _L226307_ _L226308_ _L226309_)
                   (___kont240805240806_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont240805240806_))))
                                             (___kont240805240806_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop226234226280_ _target226231226275_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240799240800_))
                    (let ((_e226227226259_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240799240800_))))
                      (let ((_tl226225226264_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226227226259_)))
                            (_hd226226226262_
                             (let ()
                               (declare (not safe))
                               (##car _e226227226259_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226225226264_))
                            (let ((_e226230226267_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226225226264_))))
                              (let ((_tl226228226272_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226230226267_)))
                                    (_hd226229226270_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226230226267_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd226229226270_))
                                    (let ((___splice240803240804_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd226229226270_
                                              '0))))
                                      (let ((_tl226233226277_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240803240804_
                                                '1)))
                                            (_target226231226275_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice240803240804_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226233226277_))
                                            (___match240826240827_
                                             _e226227226259_
                                             _hd226226226262_
                                             _tl226225226264_
                                             _e226230226267_
                                             _hd226229226270_
                                             _tl226228226272_
                                             ___splice240803240804_
                                             _target226231226275_
                                             _tl226233226277_)
                                            (___kont240805240806_))))
                                    (___kont240805240806_))))
                            (___kont240805240806_))))
                    (___kont240805240806_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind226132_)
        (let* ((___stx240829240830_ _bind226132_)
               (_g226135226152_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240829240830_)))))
          (let ((___kont240831240832_
                 (lambda (_L226188_ _L226189_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226189_))
                       (let ((_$e226205_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L226188_))))
                         (if _$e226205_
                             _$e226205_
                             (let ((_$e226208_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L226188_))))
                               (if _$e226208_
                                   _$e226208_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L226188_))))))
                       '#f)))
                (___kont240833240834_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240829240830_))
                (let ((_e226141226164_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240829240830_))))
                  (let ((_tl226139226169_
                         (let () (declare (not safe)) (##cdr _e226141226164_)))
                        (_hd226140226167_
                         (let ()
                           (declare (not safe))
                           (##car _e226141226164_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd226140226167_))
                        (let ((_e226144226172_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd226140226167_))))
                          (let ((_tl226142226177_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226144226172_)))
                                (_hd226143226175_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226144226172_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226142226177_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl226139226169_))
                                    (let ((_e226147226180_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl226139226169_))))
                                      (let ((_tl226145226185_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226147226180_)))
                                            (_hd226146226183_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226147226180_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226145226185_))
                                            (___kont240831240832_
                                             _hd226146226183_
                                             _hd226143226175_)
                                            (___kont240833240834_))))
                                    (___kont240833240834_))
                                (___kont240833240834_))))
                        (___kont240833240834_))))
                (___kont240833240834_))))))))
