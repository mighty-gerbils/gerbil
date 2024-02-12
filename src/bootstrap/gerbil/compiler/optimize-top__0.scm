(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707773072)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl237205_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243866 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl237205_ __tmp243866))
           (let ()
             (declare (not safe))
             (table-set! _tbl237205_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237205_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237205_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237205_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl237205_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx237188_ . _args237190_)
        (let ((__tmp243868
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237190_)
                     (gxc#compile-e__0 _stx237188_)
                     (let ((_arg1237195_ (car _args237190_))
                           (_rest237197_ (cdr _args237190_)))
                       (if (null? _rest237197_)
                           (gxc#compile-e__1 _stx237188_ _arg1237195_)
                           (let ((_arg2237200_ (car _rest237197_))
                                 (_rest237202_ (cdr _rest237197_)))
                             (if (null? _rest237202_)
                                 (gxc#compile-e__2
                                  _stx237188_
                                  _arg1237195_
                                  _arg2237200_)
                                 (apply gxc#compile-e
                                        _stx237188_
                                        _arg1237195_
                                        _arg2237200_
                                        _rest237202_))))))))
              (__tmp243867 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243868
           gxc#current-compile-methods
           __tmp243867))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl237185_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243869 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl237185_ __tmp243869))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237185_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237185_ '%#call gxc#basic-expression-type-call%))
           _tbl237185_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx237168_ . _args237170_)
        (let ((__tmp243871
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237170_)
                     (gxc#compile-e__0 _stx237168_)
                     (let ((_arg1237175_ (car _args237170_))
                           (_rest237177_ (cdr _args237170_)))
                       (if (null? _rest237177_)
                           (gxc#compile-e__1 _stx237168_ _arg1237175_)
                           (let ((_arg2237180_ (car _rest237177_))
                                 (_rest237182_ (cdr _rest237177_)))
                             (if (null? _rest237182_)
                                 (gxc#compile-e__2
                                  _stx237168_
                                  _arg1237175_
                                  _arg2237180_)
                                 (apply gxc#compile-e
                                        _stx237168_
                                        _arg1237175_
                                        _arg2237180_
                                        _rest237182_))))))))
              (__tmp243870 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243871
           gxc#current-compile-methods
           __tmp243870))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl237165_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243872 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl237165_ __tmp243872))
           (let ()
             (declare (not safe))
             (table-set! _tbl237165_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237165_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237165_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237165_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237165_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237165_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237165_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237165_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237165_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237165_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237165_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237165_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl237165_ '%#set! gxc#collect-body-setq%))
           _tbl237165_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx237148_ . _args237150_)
        (let ((__tmp243874
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237150_)
                     (gxc#compile-e__0 _stx237148_)
                     (let ((_arg1237155_ (car _args237150_))
                           (_rest237157_ (cdr _args237150_)))
                       (if (null? _rest237157_)
                           (gxc#compile-e__1 _stx237148_ _arg1237155_)
                           (let ((_arg2237160_ (car _rest237157_))
                                 (_rest237162_ (cdr _rest237157_)))
                             (if (null? _rest237162_)
                                 (gxc#compile-e__2
                                  _stx237148_
                                  _arg1237155_
                                  _arg2237160_)
                                 (apply gxc#compile-e
                                        _stx237148_
                                        _arg1237155_
                                        _arg2237160_
                                        _rest237162_))))))))
              (__tmp243873 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243874
           gxc#current-compile-methods
           __tmp243873))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl237145_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243875 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl237145_ __tmp243875))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237145_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237145_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237145_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237145_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237145_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237145_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237145_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237145_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237145_ '%#ref gxc#basic-expression-type-ref%))
           _tbl237145_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx237128_ . _args237130_)
        (let ((__tmp243877
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237130_)
                     (gxc#compile-e__0 _stx237128_)
                     (let ((_arg1237135_ (car _args237130_))
                           (_rest237137_ (cdr _args237130_)))
                       (if (null? _rest237137_)
                           (gxc#compile-e__1 _stx237128_ _arg1237135_)
                           (let ((_arg2237140_ (car _rest237137_))
                                 (_rest237142_ (cdr _rest237137_)))
                             (if (null? _rest237142_)
                                 (gxc#compile-e__2
                                  _stx237128_
                                  _arg1237135_
                                  _arg2237140_)
                                 (apply gxc#compile-e
                                        _stx237128_
                                        _arg1237135_
                                        _arg2237140_
                                        _rest237142_))))))))
              (__tmp243876 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243877
           gxc#current-compile-methods
           __tmp243876))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl237125_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243878 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl237125_ __tmp243878))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237125_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237125_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237125_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237125_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl237125_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx237108_ . _args237110_)
        (let ((__tmp243880
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237110_)
                     (gxc#compile-e__0 _stx237108_)
                     (let ((_arg1237115_ (car _args237110_))
                           (_rest237117_ (cdr _args237110_)))
                       (if (null? _rest237117_)
                           (gxc#compile-e__1 _stx237108_ _arg1237115_)
                           (let ((_arg2237120_ (car _rest237117_))
                                 (_rest237122_ (cdr _rest237117_)))
                             (if (null? _rest237122_)
                                 (gxc#compile-e__2
                                  _stx237108_
                                  _arg1237115_
                                  _arg2237120_)
                                 (apply gxc#compile-e
                                        _stx237108_
                                        _arg1237115_
                                        _arg2237120_
                                        _rest237122_))))))))
              (__tmp243879 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp243880
           gxc#current-compile-methods
           __tmp243879))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx237011_)
        (let* ((___stx241786241787_ _stx237011_)
               (_g237014237034_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241786241787_)))))
          (let ((___kont241788241789_
                 (lambda (_L237078_ _L237079_)
                   (let ((_sym237097_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237079_))))
                     (if (let ((__tmp243881 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243881 _sym237097_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym237097_))
                         (let ((_type237098237100_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L237078_))))
                           (if _type237098237100_
                               (let ((_type237103_ _type237098237100_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym237097_
                                  _type237103_))
                               '#f))))))
                (___kont241790241791_ (lambda () '#!void)))
            (let ((___match241819241820_
                   (lambda (_e237020237046_
                            _hd237019237049_
                            _tl237018237051_
                            _e237023237054_
                            _hd237022237057_
                            _tl237021237059_
                            _e237026237062_
                            _hd237025237065_
                            _tl237024237067_
                            _e237029237070_
                            _hd237028237073_
                            _tl237027237075_)
                     (let ((_L237078_ _hd237028237073_)
                           (_L237079_ _hd237025237065_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L237079_))
                           (___kont241788241789_ _L237078_ _L237079_)
                           (___kont241790241791_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241786241787_))
                  (let ((_e237020237046_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241786241787_))))
                    (let ((_tl237018237051_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237020237046_)))
                          (_hd237019237049_
                           (let ()
                             (declare (not safe))
                             (##car _e237020237046_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237018237051_))
                          (let ((_e237023237054_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237018237051_))))
                            (let ((_tl237021237059_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237023237054_)))
                                  (_hd237022237057_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237023237054_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237022237057_))
                                  (let ((_e237026237062_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237022237057_))))
                                    (let ((_tl237024237067_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237026237062_)))
                                          (_hd237025237065_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237026237062_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237024237067_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237021237059_))
                                              (let ((_e237029237070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237021237059_))))
                                                (let ((_tl237027237075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237029237070_)))
                                                      (_hd237028237073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237029237070_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237027237075_))
                                                      (___match241819241820_
                                                       _e237020237046_
                                                       _hd237019237049_
                                                       _tl237018237051_
                                                       _e237023237054_
                                                       _hd237022237057_
                                                       _tl237021237059_
                                                       _e237026237062_
                                                       _hd237025237065_
                                                       _tl237024237067_
                                                       _e237029237070_
                                                       _hd237028237073_
                                                       _tl237027237075_)
                                                      (___kont241790241791_))))
                                              (___kont241790241791_))
                                          (___kont241790241791_))))
                                  (___kont241790241791_))))
                          (___kont241790241791_))))
                  (___kont241790241791_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx236867_)
        (let* ((___stx241822241823_ _stx236867_)
               (_g236870236901_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241822241823_)))))
          (let ((___kont241824241825_
                 (lambda (_L236983_ _L236984_)
                   (let ((_sym237000_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236984_))))
                     (if (let ((__tmp243882 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243882 _sym237000_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym237000_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym237000_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym237000_))
                             (let ((_type237001237003_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L236983_))))
                               (if _type237001237003_
                                   (let ((_type237006_ _type237001237003_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym237000_
                                      _type237006_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L236983_)))))
                (___kont241826241827_
                 (lambda (_L236930_ _L236931_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L236930_)))))
            (let ((___match241855241856_
                   (lambda (_e236876236951_
                            _hd236875236954_
                            _tl236874236956_
                            _e236879236959_
                            _hd236878236962_
                            _tl236877236964_
                            _e236882236967_
                            _hd236881236970_
                            _tl236880236972_
                            _e236885236975_
                            _hd236884236978_
                            _tl236883236980_)
                     (let ((_L236983_ _hd236884236978_)
                           (_L236984_ _hd236881236970_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236984_))
                           (___kont241824241825_ _L236983_ _L236984_)
                           (___kont241826241827_
                            _hd236884236978_
                            _hd236878236962_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241822241823_))
                  (let ((_e236876236951_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241822241823_))))
                    (let ((_tl236874236956_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236876236951_)))
                          (_hd236875236954_
                           (let ()
                             (declare (not safe))
                             (##car _e236876236951_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236874236956_))
                          (let ((_e236879236959_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236874236956_))))
                            (let ((_tl236877236964_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236879236959_)))
                                  (_hd236878236962_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236879236959_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236878236962_))
                                  (let ((_e236882236967_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236878236962_))))
                                    (let ((_tl236880236972_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236882236967_)))
                                          (_hd236881236970_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236882236967_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236880236972_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236877236964_))
                                              (let ((_e236885236975_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236877236964_))))
                                                (let ((_tl236883236980_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236885236975_)))
                                                      (_hd236884236978_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236885236975_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236883236980_))
                                                      (___match241855241856_
                                                       _e236876236951_
                                                       _hd236875236954_
                                                       _tl236874236956_
                                                       _e236879236959_
                                                       _hd236878236962_
                                                       _tl236877236964_
                                                       _e236882236967_
                                                       _hd236881236970_
                                                       _tl236880236972_
                                                       _e236885236975_
                                                       _hd236884236978_
                                                       _tl236883236980_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236870236901_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236870236901_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236877236964_))
                                              (let ((_e236896236922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236877236964_))))
                                                (let ((_tl236894236927_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236896236922_)))
                                                      (_hd236895236925_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236896236922_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236894236927_))
                                                      (___kont241826241827_
                                                       _hd236895236925_
                                                       _hd236878236962_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236870236901_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236870236901_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236877236964_))
                                      (let ((_e236896236922_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236877236964_))))
                                        (let ((_tl236894236927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236896236922_)))
                                              (_hd236895236925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236896236922_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236894236927_))
                                              (___kont241826241827_
                                               _hd236895236925_
                                               _hd236878236962_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236870236901_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236870236901_))))))
                          (let () (declare (not safe)) (_g236870236901_)))))
                  (let () (declare (not safe)) (_g236870236901_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx236652_)
        (letrec ((_collect-e236654_
                  (lambda (_hd236811_ _expr236812_)
                    (let* ((___stx241878241879_ _hd236811_)
                           (_g236815236825_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx241878241879_)))))
                      (let ((___kont241880241881_
                             (lambda (_L236845_)
                               (let ((_sym236856_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L236845_))))
                                 (if (let ((__tmp243883
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp243883 _sym236856_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym236856_))
                                     (let ((_type236857236859_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr236812_))))
                                       (if _type236857236859_
                                           (let ((_type236862_
                                                  _type236857236859_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym236856_
                                              _type236862_
                                              '#t))
                                           '#f))))))
                            (___kont241882241883_ (lambda () '#!void)))
                        (let ((___match241891241892_
                               (lambda (_e236820236837_
                                        _hd236819236840_
                                        _tl236818236842_)
                                 (let ((_L236845_ _hd236819236840_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L236845_))
                                       (___kont241880241881_ _L236845_)
                                       (___kont241882241883_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx241878241879_))
                              (let ((_e236820236837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx241878241879_))))
                                (let ((_tl236818236842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236820236837_)))
                                      (_hd236819236840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236820236837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236818236842_))
                                      (___match241891241892_
                                       _e236820236837_
                                       _hd236819236840_
                                       _tl236818236842_)
                                      (___kont241882241883_))))
                              (___kont241882241883_))))))))
          (let* ((_g236656236691_
                  (lambda (_g236657236688_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g236657236688_))))
                 (_g236655236808_
                  (lambda (_g236657236694_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g236657236694_))
                        (let ((_e236663236696_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g236657236694_))))
                          (let ((_hd236662236699_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236663236696_)))
                                (_tl236661236701_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236663236696_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236661236701_))
                                (let ((_e236666236704_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236661236701_))))
                                  (let ((_hd236665236707_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236666236704_)))
                                        (_tl236664236709_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236666236704_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd236665236707_))
                                        (let ((_g243884_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd236665236707_
                                                  '0))))
                                          (begin
                                            (let ((_g243885_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g243884_)
                                                         (##vector-length
                                                          _g243884_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g243885_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g243885_)))
                                            (let ((_target236667236712_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243884_
                                                      0)))
                                                  (_tl236669236714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243884_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236669236714_))
                                                  (letrec ((_loop236670236717_
                                                            (lambda (_hd236668236720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr236674236722_
                             _hd236675236724_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236668236720_))
                          (let ((_e236671236727_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236668236720_))))
                            (let ((_lp-hd236672236730_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236671236727_)))
                                  (_lp-tl236673236732_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236671236727_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd236672236730_))
                                  (let ((_e236680236735_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd236672236730_))))
                                    (let ((_hd236679236738_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236680236735_)))
                                          (_tl236678236740_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236680236735_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236678236740_))
                                          (let ((_e236683236743_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236678236740_))))
                                            (let ((_hd236682236746_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236683236743_)))
                                                  (_tl236681236748_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236683236743_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236681236748_))
                                                  (let ((__tmp243890
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd236682236746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr236674236722_)))
                (__tmp243889
                 (let ()
                   (declare (not safe))
                   (cons _hd236679236738_ _hd236675236724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop236670236717_
                                                     _lp-tl236673236732_
                                                     __tmp243890
                                                     __tmp243889))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236656236691_
                                                     _g236657236694_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236656236691_
                                             _g236657236694_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236656236691_ _g236657236694_)))))
                          (let ((_expr236676236751_
                                 (reverse _expr236674236722_))
                                (_hd236677236753_ (reverse _hd236675236724_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236664236709_))
                                (let ((_e236686236756_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236664236709_))))
                                  (let ((_hd236685236759_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236686236756_)))
                                        (_tl236684236761_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236686236756_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236684236761_))
                                        ((lambda (_L236764_
                                                  _L236765_
                                                  _L236766_)
                                           (for-each
                                            _collect-e236654_
                                            (let ((__tmp243886
                                                   (lambda (_g236786236789_
                                                            _g236787236791_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236786236789_
                                                             _g236787236791_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243886
                                                      '()
                                                      _L236766_))
                                            (let ((__tmp243887
                                                   (lambda (_g236793236796_
                                                            _g236794236798_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236793236796_
                                                             _g236794236798_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243887
                                                      '()
                                                      _L236765_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp243888
                                                   (lambda (_g236800236803_
                                                            _g236801236805_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236800236803_
                                                             _g236801236805_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243888
                                                      '()
                                                      _L236765_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L236764_)))
                                         _hd236685236759_
                                         _expr236676236751_
                                         _hd236677236753_)
                                        (let ()
                                          (declare (not safe))
                                          (_g236656236691_ _g236657236694_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236656236691_ _g236657236694_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop236670236717_
                                                       _target236667236712_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236656236691_
                                                     _g236657236694_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g236656236691_ _g236657236694_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236656236691_ _g236657236694_)))))
                        (let ()
                          (declare (not safe))
                          (_g236656236691_ _g236657236694_))))))
            (declare (not safe))
            (_g236655236808_ _stx236652_)))))
    (define gxc#collect-type-call%
      (lambda (_stx236144_)
        (let* ((___stx241894241895_ _stx236144_)
               (_g236148236263_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241894241895_)))))
          (let ((___kont241896241897_
                 (lambda (_L236602_ _L236603_ _L236604_ _L236605_ _L236606_)
                   (let ((__tmp243894
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236605_)))
                         (__tmp243893
                          (let () (declare (not safe)) (gx#stx-e _L236604_)))
                         (__tmp243892
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236603_)))
                         (__tmp243891
                          (let () (declare (not safe)) (gx#stx-e _L236602_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243894
                      __tmp243893
                      __tmp243892
                      __tmp243891))))
                (___kont241898241899_
                 (lambda (_L236430_ _L236431_ _L236432_ _L236433_)
                   (let ((__tmp243897
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236432_)))
                         (__tmp243896
                          (let () (declare (not safe)) (gx#stx-e _L236431_)))
                         (__tmp243895
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236430_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243897
                      __tmp243896
                      __tmp243895
                      '#f))))
                (___kont241900241901_
                 (lambda (_L236300_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp243898
                           (lambda (_g236313236316_ _g236314236318_)
                             (let ()
                               (declare (not safe))
                               (cons _g236313236316_ _g236314236318_)))))
                      (declare (not safe))
                      (foldr1 __tmp243898 '() _L236300_))))))
            (let* ((___match242151242152_
                    (lambda (_e236249236268_
                             _hd236248236271_
                             _tl236247236273_
                             ___splice241902241903_
                             _target236250236276_
                             _tl236252236278_)
                      (letrec ((_loop236253236281_
                                (lambda (_hd236251236284_ _expr236257236286_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd236251236284_))
                                      (let ((_e236254236289_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd236251236284_))))
                                        (let ((_lp-tl236256236294_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236254236289_)))
                                              (_lp-hd236255236292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236254236289_))))
                                          (let ((__tmp243899
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd236255236292_
                                                         _expr236257236286_))))
                                            (declare (not safe))
                                            (_loop236253236281_
                                             _lp-tl236256236294_
                                             __tmp243899))))
                                      (let ((_expr236258236297_
                                             (reverse _expr236257236286_)))
                                        (___kont241900241901_
                                         _expr236258236297_))))))
                        (let ()
                          (declare (not safe))
                          (_loop236253236281_ _target236250236276_ '())))))
                   (___match242031242032_
                    (lambda (_e236157236474_
                             _hd236156236477_
                             _tl236155236479_
                             _e236160236482_
                             _hd236159236485_
                             _tl236158236487_
                             _e236163236490_
                             _hd236162236493_
                             _tl236161236495_
                             _e236166236498_
                             _hd236165236501_
                             _tl236164236503_
                             _e236169236506_
                             _hd236168236509_
                             _tl236167236511_
                             _e236172236514_
                             _hd236171236517_
                             _tl236170236519_
                             _e236175236522_
                             _hd236174236525_
                             _tl236173236527_
                             _e236178236530_
                             _hd236177236533_
                             _tl236176236535_
                             _e236181236538_
                             _hd236180236541_
                             _tl236179236543_
                             _e236184236546_
                             _hd236183236549_
                             _tl236182236551_
                             _e236187236554_
                             _hd236186236557_
                             _tl236185236559_
                             _e236190236562_
                             _hd236189236565_
                             _tl236188236567_
                             _e236193236570_
                             _hd236192236573_
                             _tl236191236575_
                             _e236196236578_
                             _hd236195236581_
                             _tl236194236583_
                             _e236199236586_
                             _hd236198236589_
                             _tl236197236591_
                             _e236202236594_
                             _hd236201236597_
                             _tl236200236599_)
                      (let ((_L236602_ _hd236201236597_)
                            (_L236603_ _hd236192236573_)
                            (_L236604_ _hd236183236549_)
                            (_L236605_ _hd236174236525_)
                            (_L236606_ _hd236165236501_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L236606_
                               'bind-method!))
                            (___kont241896241897_
                             _L236602_
                             _L236603_
                             _L236604_
                             _L236605_
                             _L236606_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl236155236479_))
                                (let ((___splice241902241903_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl236155236479_
                                          '0))))
                                  (let ((_tl236252236278_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241902241903_
                                            '1)))
                                        (_target236250236276_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241902241903_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236252236278_))
                                        (___match242151242152_
                                         _e236157236474_
                                         _hd236156236477_
                                         _tl236155236479_
                                         ___splice241902241903_
                                         _target236250236276_
                                         _tl236252236278_)
                                        (let ()
                                          (declare (not safe))
                                          (_g236148236263_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236148236263_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241894241895_))
                  (let ((_e236157236474_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241894241895_))))
                    (let ((_tl236155236479_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236157236474_)))
                          (_hd236156236477_
                           (let ()
                             (declare (not safe))
                             (##car _e236157236474_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236155236479_))
                          (let ((_e236160236482_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236155236479_))))
                            (let ((_tl236158236487_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236160236482_)))
                                  (_hd236159236485_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236160236482_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236159236485_))
                                  (let ((_e236163236490_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236159236485_))))
                                    (let ((_tl236161236495_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236163236490_)))
                                          (_hd236162236493_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236163236490_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd236162236493_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd236162236493_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236161236495_))
                                                  (let ((_e236166236498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236161236495_))))
                                                    (let ((_tl236164236503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236166236498_)))
                                                          (_hd236165236501_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236166236498_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236164236503_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236158236487_))
                      (let ((_e236169236506_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236158236487_))))
                        (let ((_tl236167236511_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236169236506_)))
                              (_hd236168236509_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236169236506_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd236168236509_))
                              (let ((_e236172236514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd236168236509_))))
                                (let ((_tl236170236519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236172236514_)))
                                      (_hd236171236517_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236172236514_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd236171236517_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd236171236517_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236170236519_))
                                              (let ((_e236175236522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236170236519_))))
                                                (let ((_tl236173236527_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236175236522_)))
                                                      (_hd236174236525_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236175236522_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236173236527_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl236167236511_))
                                                          (let ((_e236178236530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl236167236511_))))
                    (let ((_tl236176236535_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236178236530_)))
                          (_hd236177236533_
                           (let ()
                             (declare (not safe))
                             (##car _e236178236530_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236177236533_))
                          (let ((_e236181236538_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236177236533_))))
                            (let ((_tl236179236543_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236181236538_)))
                                  (_hd236180236541_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236181236538_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd236180236541_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd236180236541_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236179236543_))
                                          (let ((_e236184236546_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236179236543_))))
                                            (let ((_tl236182236551_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236184236546_)))
                                                  (_hd236183236549_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236184236546_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236182236551_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl236176236535_))
                                                      (let ((_e236187236554_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl236176236535_))))
                (let ((_tl236185236559_
                       (let () (declare (not safe)) (##cdr _e236187236554_)))
                      (_hd236186236557_
                       (let () (declare (not safe)) (##car _e236187236554_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236186236557_))
                      (let ((_e236190236562_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236186236557_))))
                        (let ((_tl236188236567_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236190236562_)))
                              (_hd236189236565_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236190236562_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd236189236565_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd236189236565_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236188236567_))
                                      (let ((_e236193236570_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236188236567_))))
                                        (let ((_tl236191236575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236193236570_)))
                                              (_hd236192236573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236193236570_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236191236575_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236185236559_))
                                                  (let ((_e236196236578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236185236559_))))
                                                    (let ((_tl236194236583_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236196236578_)))
                                                          (_hd236195236581_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236196236578_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd236195236581_))
                                                          (let ((_e236199236586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd236195236581_))))
                    (let ((_tl236197236591_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236199236586_)))
                          (_hd236198236589_
                           (let ()
                             (declare (not safe))
                             (##car _e236199236586_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd236198236589_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd236198236589_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236197236591_))
                                  (let ((_e236202236594_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236197236591_))))
                                    (let ((_tl236200236599_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236202236594_)))
                                          (_hd236201236597_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236202236594_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236200236599_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236194236583_))
                                              (___match242031242032_
                                               _e236157236474_
                                               _hd236156236477_
                                               _tl236155236479_
                                               _e236160236482_
                                               _hd236159236485_
                                               _tl236158236487_
                                               _e236163236490_
                                               _hd236162236493_
                                               _tl236161236495_
                                               _e236166236498_
                                               _hd236165236501_
                                               _tl236164236503_
                                               _e236169236506_
                                               _hd236168236509_
                                               _tl236167236511_
                                               _e236172236514_
                                               _hd236171236517_
                                               _tl236170236519_
                                               _e236175236522_
                                               _hd236174236525_
                                               _tl236173236527_
                                               _e236178236530_
                                               _hd236177236533_
                                               _tl236176236535_
                                               _e236181236538_
                                               _hd236180236541_
                                               _tl236179236543_
                                               _e236184236546_
                                               _hd236183236549_
                                               _tl236182236551_
                                               _e236187236554_
                                               _hd236186236557_
                                               _tl236185236559_
                                               _e236190236562_
                                               _hd236189236565_
                                               _tl236188236567_
                                               _e236193236570_
                                               _hd236192236573_
                                               _tl236191236575_
                                               _e236196236578_
                                               _hd236195236581_
                                               _tl236194236583_
                                               _e236199236586_
                                               _hd236198236589_
                                               _tl236197236591_
                                               _e236202236594_
                                               _hd236201236597_
                                               _tl236200236599_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl236155236479_))
                                                  (let ((___splice241902241903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl236155236479_
                                                            '0))))
                                                    (let ((_tl236252236278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241902241903_
                                                              '1)))
                                                          (_target236250236276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241902241903_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236252236278_))
                                                          (___match242151242152_
                                                           _e236157236474_
                                                           _hd236156236477_
                                                           _tl236155236479_
                                                           ___splice241902241903_
                                                           _target236250236276_
                                                           _tl236252236278_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g236148236263_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236148236263_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl236155236479_))
                                              (let ((___splice241902241903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl236155236479_
                                                        '0))))
                                                (let ((_tl236252236278_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241902241903_
                                                          '1)))
                                                      (_target236250236276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241902241903_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236252236278_))
                                                      (___match242151242152_
                                                       _e236157236474_
                                                       _hd236156236477_
                                                       _tl236155236479_
                                                       ___splice241902241903_
                                                       _target236250236276_
                                                       _tl236252236278_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236148236263_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236148236263_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl236155236479_))
                                      (let ((___splice241902241903_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl236155236479_
                                                '0))))
                                        (let ((_tl236252236278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241902241903_
                                                  '1)))
                                              (_target236250236276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241902241903_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236252236278_))
                                              (___match242151242152_
                                               _e236157236474_
                                               _hd236156236477_
                                               _tl236155236479_
                                               ___splice241902241903_
                                               _target236250236276_
                                               _tl236252236278_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236148236263_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236148236263_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl236155236479_))
                                  (let ((___splice241902241903_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl236155236479_
                                            '0))))
                                    (let ((_tl236252236278_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241902241903_
                                              '1)))
                                          (_target236250236276_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241902241903_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236252236278_))
                                          (___match242151242152_
                                           _e236157236474_
                                           _hd236156236477_
                                           _tl236155236479_
                                           ___splice241902241903_
                                           _target236250236276_
                                           _tl236252236278_)
                                          (let ()
                                            (declare (not safe))
                                            (_g236148236263_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236148236263_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl236155236479_))
                              (let ((___splice241902241903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl236155236479_
                                        '0))))
                                (let ((_tl236252236278_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241902241903_
                                          '1)))
                                      (_target236250236276_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241902241903_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236252236278_))
                                      (___match242151242152_
                                       _e236157236474_
                                       _hd236156236477_
                                       _tl236155236479_
                                       ___splice241902241903_
                                       _target236250236276_
                                       _tl236252236278_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236148236263_)))))
                              (let ()
                                (declare (not safe))
                                (_g236148236263_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl236155236479_))
                      (let ((___splice241902241903_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl236155236479_ '0))))
                        (let ((_tl236252236278_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241902241903_ '1)))
                              (_target236250236276_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241902241903_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236252236278_))
                              (___match242151242152_
                               _e236157236474_
                               _hd236156236477_
                               _tl236155236479_
                               ___splice241902241903_
                               _target236250236276_
                               _tl236252236278_)
                              (let ()
                                (declare (not safe))
                                (_g236148236263_)))))
                      (let () (declare (not safe)) (_g236148236263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236185236559_))
                                                      (if (let ((__tmp243900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp243900 'bind-method!))
                  (let ((_L236430_ _hd236192236573_)
                        (_L236431_ _hd236183236549_)
                        (_L236432_ _hd236174236525_)
                        (_L236433_ _hd236165236501_))
                    (___kont241898241899_
                     _L236430_
                     _L236431_
                     _L236432_
                     _L236433_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl236155236479_))
                      (let ((___splice241902241903_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl236155236479_ '0))))
                        (let ((_tl236252236278_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241902241903_ '1)))
                              (_target236250236276_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241902241903_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236252236278_))
                              (___match242151242152_
                               _e236157236474_
                               _hd236156236477_
                               _tl236155236479_
                               ___splice241902241903_
                               _target236250236276_
                               _tl236252236278_)
                              (let ()
                                (declare (not safe))
                                (_g236148236263_)))))
                      (let () (declare (not safe)) (_g236148236263_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl236155236479_))
                  (let ((___splice241902241903_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl236155236479_ '0))))
                    (let ((_tl236252236278_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241902241903_ '1)))
                          (_target236250236276_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241902241903_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236252236278_))
                          (___match242151242152_
                           _e236157236474_
                           _hd236156236477_
                           _tl236155236479_
                           ___splice241902241903_
                           _target236250236276_
                           _tl236252236278_)
                          (let () (declare (not safe)) (_g236148236263_)))))
                  (let () (declare (not safe)) (_g236148236263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl236155236479_))
                                                  (let ((___splice241902241903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl236155236479_
                                                            '0))))
                                                    (let ((_tl236252236278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241902241903_
                                                              '1)))
                                                          (_target236250236276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241902241903_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236252236278_))
                                                          (___match242151242152_
                                                           _e236157236474_
                                                           _hd236156236477_
                                                           _tl236155236479_
                                                           ___splice241902241903_
                                                           _target236250236276_
                                                           _tl236252236278_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g236148236263_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236148236263_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl236155236479_))
                                          (let ((___splice241902241903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl236155236479_
                                                    '0))))
                                            (let ((_tl236252236278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241902241903_
                                                      '1)))
                                                  (_target236250236276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241902241903_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236252236278_))
                                                  (___match242151242152_
                                                   _e236157236474_
                                                   _hd236156236477_
                                                   _tl236155236479_
                                                   ___splice241902241903_
                                                   _target236250236276_
                                                   _tl236252236278_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236148236263_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236148236263_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl236155236479_))
                                      (let ((___splice241902241903_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl236155236479_
                                                '0))))
                                        (let ((_tl236252236278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241902241903_
                                                  '1)))
                                              (_target236250236276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241902241903_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236252236278_))
                                              (___match242151242152_
                                               _e236157236474_
                                               _hd236156236477_
                                               _tl236155236479_
                                               ___splice241902241903_
                                               _target236250236276_
                                               _tl236252236278_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236148236263_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236148236263_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl236155236479_))
                                  (let ((___splice241902241903_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl236155236479_
                                            '0))))
                                    (let ((_tl236252236278_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241902241903_
                                              '1)))
                                          (_target236250236276_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241902241903_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236252236278_))
                                          (___match242151242152_
                                           _e236157236474_
                                           _hd236156236477_
                                           _tl236155236479_
                                           ___splice241902241903_
                                           _target236250236276_
                                           _tl236252236278_)
                                          (let ()
                                            (declare (not safe))
                                            (_g236148236263_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236148236263_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl236155236479_))
                          (let ((___splice241902241903_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl236155236479_
                                    '0))))
                            (let ((_tl236252236278_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241902241903_ '1)))
                                  (_target236250236276_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241902241903_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236252236278_))
                                  (___match242151242152_
                                   _e236157236474_
                                   _hd236156236477_
                                   _tl236155236479_
                                   ___splice241902241903_
                                   _target236250236276_
                                   _tl236252236278_)
                                  (let ()
                                    (declare (not safe))
                                    (_g236148236263_)))))
                          (let () (declare (not safe)) (_g236148236263_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl236155236479_))
                  (let ((___splice241902241903_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl236155236479_ '0))))
                    (let ((_tl236252236278_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241902241903_ '1)))
                          (_target236250236276_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241902241903_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236252236278_))
                          (___match242151242152_
                           _e236157236474_
                           _hd236156236477_
                           _tl236155236479_
                           ___splice241902241903_
                           _target236250236276_
                           _tl236252236278_)
                          (let () (declare (not safe)) (_g236148236263_)))))
                  (let () (declare (not safe)) (_g236148236263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl236155236479_))
                                                      (let ((___splice241902241903_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl236155236479_ '0))))
                (let ((_tl236252236278_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241902241903_ '1)))
                      (_target236250236276_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241902241903_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236252236278_))
                      (___match242151242152_
                       _e236157236474_
                       _hd236156236477_
                       _tl236155236479_
                       ___splice241902241903_
                       _target236250236276_
                       _tl236252236278_)
                      (let () (declare (not safe)) (_g236148236263_)))))
              (let () (declare (not safe)) (_g236148236263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl236155236479_))
                                              (let ((___splice241902241903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl236155236479_
                                                        '0))))
                                                (let ((_tl236252236278_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241902241903_
                                                          '1)))
                                                      (_target236250236276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241902241903_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236252236278_))
                                                      (___match242151242152_
                                                       _e236157236474_
                                                       _hd236156236477_
                                                       _tl236155236479_
                                                       ___splice241902241903_
                                                       _target236250236276_
                                                       _tl236252236278_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236148236263_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236148236263_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl236155236479_))
                                          (let ((___splice241902241903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl236155236479_
                                                    '0))))
                                            (let ((_tl236252236278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241902241903_
                                                      '1)))
                                                  (_target236250236276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241902241903_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236252236278_))
                                                  (___match242151242152_
                                                   _e236157236474_
                                                   _hd236156236477_
                                                   _tl236155236479_
                                                   ___splice241902241903_
                                                   _target236250236276_
                                                   _tl236252236278_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236148236263_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236148236263_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl236155236479_))
                                      (let ((___splice241902241903_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl236155236479_
                                                '0))))
                                        (let ((_tl236252236278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241902241903_
                                                  '1)))
                                              (_target236250236276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241902241903_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236252236278_))
                                              (___match242151242152_
                                               _e236157236474_
                                               _hd236156236477_
                                               _tl236155236479_
                                               ___splice241902241903_
                                               _target236250236276_
                                               _tl236252236278_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236148236263_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236148236263_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl236155236479_))
                              (let ((___splice241902241903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl236155236479_
                                        '0))))
                                (let ((_tl236252236278_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241902241903_
                                          '1)))
                                      (_target236250236276_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241902241903_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236252236278_))
                                      (___match242151242152_
                                       _e236157236474_
                                       _hd236156236477_
                                       _tl236155236479_
                                       ___splice241902241903_
                                       _target236250236276_
                                       _tl236252236278_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236148236263_)))))
                              (let ()
                                (declare (not safe))
                                (_g236148236263_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl236155236479_))
                      (let ((___splice241902241903_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl236155236479_ '0))))
                        (let ((_tl236252236278_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241902241903_ '1)))
                              (_target236250236276_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241902241903_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236252236278_))
                              (___match242151242152_
                               _e236157236474_
                               _hd236156236477_
                               _tl236155236479_
                               ___splice241902241903_
                               _target236250236276_
                               _tl236252236278_)
                              (let ()
                                (declare (not safe))
                                (_g236148236263_)))))
                      (let () (declare (not safe)) (_g236148236263_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl236155236479_))
                  (let ((___splice241902241903_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl236155236479_ '0))))
                    (let ((_tl236252236278_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241902241903_ '1)))
                          (_target236250236276_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241902241903_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236252236278_))
                          (___match242151242152_
                           _e236157236474_
                           _hd236156236477_
                           _tl236155236479_
                           ___splice241902241903_
                           _target236250236276_
                           _tl236252236278_)
                          (let () (declare (not safe)) (_g236148236263_)))))
                  (let () (declare (not safe)) (_g236148236263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl236155236479_))
                                                  (let ((___splice241902241903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl236155236479_
                                                            '0))))
                                                    (let ((_tl236252236278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241902241903_
                                                              '1)))
                                                          (_target236250236276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241902241903_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236252236278_))
                                                          (___match242151242152_
                                                           _e236157236474_
                                                           _hd236156236477_
                                                           _tl236155236479_
                                                           ___splice241902241903_
                                                           _target236250236276_
                                                           _tl236252236278_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g236148236263_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236148236263_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl236155236479_))
                                              (let ((___splice241902241903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl236155236479_
                                                        '0))))
                                                (let ((_tl236252236278_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241902241903_
                                                          '1)))
                                                      (_target236250236276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241902241903_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236252236278_))
                                                      (___match242151242152_
                                                       _e236157236474_
                                                       _hd236156236477_
                                                       _tl236155236479_
                                                       ___splice241902241903_
                                                       _target236250236276_
                                                       _tl236252236278_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236148236263_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236148236263_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl236155236479_))
                                          (let ((___splice241902241903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl236155236479_
                                                    '0))))
                                            (let ((_tl236252236278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241902241903_
                                                      '1)))
                                                  (_target236250236276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241902241903_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236252236278_))
                                                  (___match242151242152_
                                                   _e236157236474_
                                                   _hd236156236477_
                                                   _tl236155236479_
                                                   ___splice241902241903_
                                                   _target236250236276_
                                                   _tl236252236278_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236148236263_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236148236263_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl236155236479_))
                                  (let ((___splice241902241903_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl236155236479_
                                            '0))))
                                    (let ((_tl236252236278_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241902241903_
                                              '1)))
                                          (_target236250236276_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241902241903_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236252236278_))
                                          (___match242151242152_
                                           _e236157236474_
                                           _hd236156236477_
                                           _tl236155236479_
                                           ___splice241902241903_
                                           _target236250236276_
                                           _tl236252236278_)
                                          (let ()
                                            (declare (not safe))
                                            (_g236148236263_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236148236263_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl236155236479_))
                          (let ((___splice241902241903_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl236155236479_
                                    '0))))
                            (let ((_tl236252236278_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241902241903_ '1)))
                                  (_target236250236276_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241902241903_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236252236278_))
                                  (___match242151242152_
                                   _e236157236474_
                                   _hd236156236477_
                                   _tl236155236479_
                                   ___splice241902241903_
                                   _target236250236276_
                                   _tl236252236278_)
                                  (let ()
                                    (declare (not safe))
                                    (_g236148236263_)))))
                          (let () (declare (not safe)) (_g236148236263_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl236155236479_))
                      (let ((___splice241902241903_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl236155236479_ '0))))
                        (let ((_tl236252236278_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241902241903_ '1)))
                              (_target236250236276_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241902241903_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236252236278_))
                              (___match242151242152_
                               _e236157236474_
                               _hd236156236477_
                               _tl236155236479_
                               ___splice241902241903_
                               _target236250236276_
                               _tl236252236278_)
                              (let ()
                                (declare (not safe))
                                (_g236148236263_)))))
                      (let () (declare (not safe)) (_g236148236263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl236155236479_))
                                                      (let ((___splice241902241903_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl236155236479_ '0))))
                (let ((_tl236252236278_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241902241903_ '1)))
                      (_target236250236276_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241902241903_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236252236278_))
                      (___match242151242152_
                       _e236157236474_
                       _hd236156236477_
                       _tl236155236479_
                       ___splice241902241903_
                       _target236250236276_
                       _tl236252236278_)
                      (let () (declare (not safe)) (_g236148236263_)))))
              (let () (declare (not safe)) (_g236148236263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl236155236479_))
                                                  (let ((___splice241902241903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl236155236479_
                                                            '0))))
                                                    (let ((_tl236252236278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241902241903_
                                                              '1)))
                                                          (_target236250236276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241902241903_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236252236278_))
                                                          (___match242151242152_
                                                           _e236157236474_
                                                           _hd236156236477_
                                                           _tl236155236479_
                                                           ___splice241902241903_
                                                           _target236250236276_
                                                           _tl236252236278_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g236148236263_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236148236263_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl236155236479_))
                                              (let ((___splice241902241903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl236155236479_
                                                        '0))))
                                                (let ((_tl236252236278_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241902241903_
                                                          '1)))
                                                      (_target236250236276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241902241903_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236252236278_))
                                                      (___match242151242152_
                                                       _e236157236474_
                                                       _hd236156236477_
                                                       _tl236155236479_
                                                       ___splice241902241903_
                                                       _target236250236276_
                                                       _tl236252236278_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236148236263_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236148236263_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl236155236479_))
                                      (let ((___splice241902241903_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl236155236479_
                                                '0))))
                                        (let ((_tl236252236278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241902241903_
                                                  '1)))
                                              (_target236250236276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241902241903_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236252236278_))
                                              (___match242151242152_
                                               _e236157236474_
                                               _hd236156236477_
                                               _tl236155236479_
                                               ___splice241902241903_
                                               _target236250236276_
                                               _tl236252236278_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236148236263_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236148236263_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl236155236479_))
                              (let ((___splice241902241903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl236155236479_
                                        '0))))
                                (let ((_tl236252236278_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241902241903_
                                          '1)))
                                      (_target236250236276_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241902241903_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236252236278_))
                                      (___match242151242152_
                                       _e236157236474_
                                       _hd236156236477_
                                       _tl236155236479_
                                       ___splice241902241903_
                                       _target236250236276_
                                       _tl236252236278_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236148236263_)))))
                              (let ()
                                (declare (not safe))
                                (_g236148236263_))))))
                  (let () (declare (not safe)) (_g236148236263_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx236084_)
        (let* ((___stx242154242155_ _stx236084_)
               (_g236087236100_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242154242155_)))))
          (let ((___kont242156242157_
                 (lambda (_L236128_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L236128_))))
                (___kont242158242159_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242154242155_))
                (let ((_e236092236112_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242154242155_))))
                  (let ((_tl236090236117_
                         (let () (declare (not safe)) (##cdr _e236092236112_)))
                        (_hd236091236115_
                         (let ()
                           (declare (not safe))
                           (##car _e236092236112_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl236090236117_))
                        (let ((_e236095236120_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl236090236117_))))
                          (let ((_tl236093236125_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236095236120_)))
                                (_hd236094236123_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236095236120_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl236093236125_))
                                (___kont242156242157_ _hd236094236123_)
                                (___kont242158242159_))))
                        (___kont242158242159_))))
                (___kont242158242159_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx235964_)
        (let* ((_g235966235983_
                (lambda (_g235967235980_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235967235980_))))
               (_g235965236081_
                (lambda (_g235967235986_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235967235986_))
                      (let ((_e235972235988_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235967235986_))))
                        (let ((_hd235971235991_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235972235988_)))
                              (_tl235970235993_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235972235988_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235970235993_))
                              (let ((_e235975235996_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235970235993_))))
                                (let ((_hd235974235999_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235975235996_)))
                                      (_tl235973236001_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235975235996_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235973236001_))
                                      (let ((_e235978236004_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235973236001_))))
                                        (let ((_hd235977236007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235978236004_)))
                                              (_tl235976236009_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235978236004_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235976236009_))
                                              ((lambda (_L236012_ _L236013_)
                                                 (let* ((___stx242176242177_
                                                         _L236013_)
                                                        (_g236029236040_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx242176242177_)))))
                                                   (let ((___kont242178242179_
                                                          (lambda (_L236060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L236061_)
                    (let ((_$e236073_
                           (let ((__tmp243901
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L236061_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp243901
                              '#f))))
                      (if _$e236073_
                          ((lambda (_type-e236076_)
                             (_type-e236076_ _stx235964_ _L236013_))
                           _$e236073_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L236012_))))))
                 (___kont242180242181_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L236012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match242187242188_
                                                            (lambda (_e236035236052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd236034236055_
                             _tl236033236057_)
                      (let ((_L236060_ _tl236033236057_)
                            (_L236061_ _hd236034236055_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L236061_))
                            (___kont242178242179_ _L236060_ _L236061_)
                            (___kont242180242181_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx242176242177_))
                   (let ((_e236035236052_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx242176242177_))))
                     (let ((_tl236033236057_
                            (let ()
                              (declare (not safe))
                              (##cdr _e236035236052_)))
                           (_hd236034236055_
                            (let ()
                              (declare (not safe))
                              (##car _e236035236052_))))
                       (___match242187242188_
                        _e236035236052_
                        _hd236034236055_
                        _tl236033236057_)))
                   (___kont242180242181_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd235977236007_
                                               _hd235974235999_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235966235983_
                                                 _g235967235986_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235966235983_ _g235967235986_)))))
                              (let ()
                                (declare (not safe))
                                (_g235966235983_ _g235967235986_)))))
                      (let ()
                        (declare (not safe))
                        (_g235966235983_ _g235967235986_))))))
          (declare (not safe))
          (_g235965236081_ _stx235964_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx235825_ _ann235826_)
        (let* ((_g235828235861_
                (lambda (_g235829235858_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235829235858_))))
               (_g235827235961_
                (lambda (_g235829235864_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235829235864_))
                      (let ((_e235838235866_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235829235864_))))
                        (let ((_hd235837235869_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235838235866_)))
                              (_tl235836235871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235838235866_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235836235871_))
                              (let ((_e235841235874_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235836235871_))))
                                (let ((_hd235840235877_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235841235874_)))
                                      (_tl235839235879_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235841235874_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235839235879_))
                                      (let ((_e235844235882_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235839235879_))))
                                        (let ((_hd235843235885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235844235882_)))
                                              (_tl235842235887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235844235882_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235842235887_))
                                              (let ((_e235847235890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235842235887_))))
                                                (let ((_hd235846235893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235847235890_)))
                                                      (_tl235845235895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235847235890_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235845235895_))
                                                      (let ((_e235850235898_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235845235895_))))
                (let ((_hd235849235901_
                       (let () (declare (not safe)) (##car _e235850235898_)))
                      (_tl235848235903_
                       (let () (declare (not safe)) (##cdr _e235850235898_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl235848235903_))
                      (let ((_e235853235906_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235848235903_))))
                        (let ((_hd235852235909_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235853235906_)))
                              (_tl235851235911_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235853235906_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235851235911_))
                              (let ((_e235856235914_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235851235911_))))
                                (let ((_hd235855235917_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235856235914_)))
                                      (_tl235854235919_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235856235914_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235854235919_))
                                      ((lambda (_L235922_
                                                _L235923_
                                                _L235924_
                                                _L235925_
                                                _L235926_
                                                _L235927_)
                                         (let ((_type-id235954_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235927_)))
                                               (_super235955_
                                                (map gxc#identifier-symbol
                                                     _L235926_))
                                               (_slots235956_
                                                (map gx#stx-e _L235925_))
                                               (_ctor-method235957_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235924_)))
                                               (_struct?235958_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235923_)))
                                               (_final?235959_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235922_))))
                                           (let ((__obj243859
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
                                              __obj243859
                                              _type-id235954_
                                              _super235955_
                                              _slots235956_
                                              _ctor-method235957_
                                              _struct?235958_
                                              _final?235959_)
                                             __obj243859)))
                                       _hd235855235917_
                                       _hd235852235909_
                                       _hd235849235901_
                                       _hd235846235893_
                                       _hd235843235885_
                                       _hd235840235877_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235828235861_ _g235829235864_)))))
                              (let ()
                                (declare (not safe))
                                (_g235828235861_ _g235829235864_)))))
                      (let ()
                        (declare (not safe))
                        (_g235828235861_ _g235829235864_)))))
              (let ()
                (declare (not safe))
                (_g235828235861_ _g235829235864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235828235861_
                                                 _g235829235864_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235828235861_ _g235829235864_)))))
                              (let ()
                                (declare (not safe))
                                (_g235828235861_ _g235829235864_)))))
                      (let ()
                        (declare (not safe))
                        (_g235828235861_ _g235829235864_))))))
          (declare (not safe))
          (_g235827235961_ _ann235826_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx235773_ _ann235774_)
        (let* ((_g235776235789_
                (lambda (_g235777235786_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235777235786_))))
               (_g235775235822_
                (lambda (_g235777235792_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235777235792_))
                      (let ((_e235781235794_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235777235792_))))
                        (let ((_hd235780235797_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235781235794_)))
                              (_tl235779235799_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235781235794_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235779235799_))
                              (let ((_e235784235802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235779235799_))))
                                (let ((_hd235783235805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235784235802_)))
                                      (_tl235782235807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235784235802_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235782235807_))
                                      ((lambda (_L235810_)
                                         (let ((__tmp243902
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235810_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp243902)))
                                       _hd235783235805_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235776235789_ _g235777235792_)))))
                              (let ()
                                (declare (not safe))
                                (_g235776235789_ _g235777235792_)))))
                      (let ()
                        (declare (not safe))
                        (_g235776235789_ _g235777235792_))))))
          (declare (not safe))
          (_g235775235822_ _ann235774_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx235721_ _ann235722_)
        (let* ((_g235724235737_
                (lambda (_g235725235734_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235725235734_))))
               (_g235723235770_
                (lambda (_g235725235740_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235725235740_))
                      (let ((_e235729235742_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235725235740_))))
                        (let ((_hd235728235745_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235729235742_)))
                              (_tl235727235747_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235729235742_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235727235747_))
                              (let ((_e235732235750_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235727235747_))))
                                (let ((_hd235731235753_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235732235750_)))
                                      (_tl235730235755_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235732235750_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235730235755_))
                                      ((lambda (_L235758_)
                                         (let ((__tmp243903
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235758_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp243903)))
                                       _hd235731235753_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235724235737_ _g235725235740_)))))
                              (let ()
                                (declare (not safe))
                                (_g235724235737_ _g235725235740_)))))
                      (let ()
                        (declare (not safe))
                        (_g235724235737_ _g235725235740_))))))
          (declare (not safe))
          (_g235723235770_ _ann235722_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx235637_ _ann235638_)
        (let* ((_g235640235661_
                (lambda (_g235641235658_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235641235658_))))
               (_g235639235718_
                (lambda (_g235641235664_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235641235664_))
                      (let ((_e235647235666_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235641235664_))))
                        (let ((_hd235646235669_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235647235666_)))
                              (_tl235645235671_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235647235666_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235645235671_))
                              (let ((_e235650235674_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235645235671_))))
                                (let ((_hd235649235677_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235650235674_)))
                                      (_tl235648235679_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235650235674_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235648235679_))
                                      (let ((_e235653235682_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235648235679_))))
                                        (let ((_hd235652235685_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235653235682_)))
                                              (_tl235651235687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235653235682_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235651235687_))
                                              (let ((_e235656235690_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235651235687_))))
                                                (let ((_hd235655235693_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235656235690_)))
                                                      (_tl235654235695_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235656235690_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235654235695_))
                                                      ((lambda (_L235698_
                                                                _L235699_
                                                                _L235700_)
                                                         (let ((__tmp243906
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235700_)))
                       (__tmp243905
                        (let () (declare (not safe)) (gx#stx-e _L235699_)))
                       (__tmp243904
                        (let () (declare (not safe)) (gx#stx-e _L235698_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp243906
                    __tmp243905
                    __tmp243904)))
               _hd235655235693_
               _hd235652235685_
               _hd235649235677_)
              (let ()
                (declare (not safe))
                (_g235640235661_ _g235641235664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235640235661_
                                                 _g235641235664_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235640235661_ _g235641235664_)))))
                              (let ()
                                (declare (not safe))
                                (_g235640235661_ _g235641235664_)))))
                      (let ()
                        (declare (not safe))
                        (_g235640235661_ _g235641235664_))))))
          (declare (not safe))
          (_g235639235718_ _ann235638_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx235553_ _ann235554_)
        (let* ((_g235556235577_
                (lambda (_g235557235574_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235557235574_))))
               (_g235555235634_
                (lambda (_g235557235580_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235557235580_))
                      (let ((_e235563235582_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235557235580_))))
                        (let ((_hd235562235585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235563235582_)))
                              (_tl235561235587_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235563235582_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235561235587_))
                              (let ((_e235566235590_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235561235587_))))
                                (let ((_hd235565235593_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235566235590_)))
                                      (_tl235564235595_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235566235590_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235564235595_))
                                      (let ((_e235569235598_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235564235595_))))
                                        (let ((_hd235568235601_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235569235598_)))
                                              (_tl235567235603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235569235598_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235567235603_))
                                              (let ((_e235572235606_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235567235603_))))
                                                (let ((_hd235571235609_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235572235606_)))
                                                      (_tl235570235611_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235572235606_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235570235611_))
                                                      ((lambda (_L235614_
                                                                _L235615_
                                                                _L235616_)
                                                         (let ((__tmp243909
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235616_)))
                       (__tmp243908
                        (let () (declare (not safe)) (gx#stx-e _L235615_)))
                       (__tmp243907
                        (let () (declare (not safe)) (gx#stx-e _L235614_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp243909
                    __tmp243908
                    __tmp243907)))
               _hd235571235609_
               _hd235568235601_
               _hd235565235593_)
              (let ()
                (declare (not safe))
                (_g235556235577_ _g235557235580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235556235577_
                                                 _g235557235580_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235556235577_ _g235557235580_)))))
                              (let ()
                                (declare (not safe))
                                (_g235556235577_ _g235557235580_)))))
                      (let ()
                        (declare (not safe))
                        (_g235556235577_ _g235557235580_))))))
          (declare (not safe))
          (_g235555235634_ _ann235554_))))
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
      (lambda (_stx234673_)
        (let* ((___stx242190242191_ _stx234673_)
               (_g234679234875_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242190242191_)))))
          (let ((___kont242192242193_
                 (lambda (_L235541_)
                   (let ((__obj243860
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243860
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L235541_))
                      '#f)
                     __obj243860)))
                (___kont242194242195_
                 (lambda (_L235468_
                          _L235469_
                          _L235470_
                          _L235471_
                          _L235472_
                          _L235473_)
                   (let* ((_tab235523_
                           (let () (declare (not safe)) (gx#stx-e _L235470_)))
                          (_keys235525_
                           (if _tab235523_
                               (let ((__tmp243910 (vector->list _tab235523_)))
                                 (declare (not safe))
                                 (filter values __tmp243910))
                               '#f)))
                     (let ((__tmp243911
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L235469_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys235525_
                        __tmp243911)))))
                (___kont242196242197_
                 (lambda (_L235201_
                          _L235202_
                          _L235203_
                          _L235204_
                          _L235205_
                          _L235206_
                          _L235207_
                          _L235208_
                          _L235209_
                          _L235210_)
                   (let ((__tmp243913
                          (map gx#stx-e
                               (let ((__tmp243914
                                      (lambda (_g235303235306_ _g235304235308_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g235303235306_
                                                _g235304235308_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp243914 '() _L235203_))))
                         (__tmp243912
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L235207_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp243913
                      __tmp243912))))
                (___kont242200242201_
                 (lambda (_L234911_)
                   (let ((__obj243861
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243861
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234911_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L234911_)))
                     __obj243861)))
                (___kont242202242203_
                 (lambda (_L234888_)
                   (let ((__obj243862
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243862
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234888_))
                      '#f)
                     __obj243862))))
            (let* ((___match242509242510_
                    (lambda (_e234866234903_ _hd234865234906_ _tl234864234908_)
                      (let ((_L234911_ _tl234864234908_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L234911_))
                            (___kont242200242201_ _L234911_)
                            (___kont242202242203_ _tl234864234908_)))))
                   (___match242503242504_
                    (lambda (_e234760234925_
                             _hd234759234928_
                             _tl234758234930_
                             _e234763234933_
                             _hd234762234936_
                             _tl234761234938_
                             _e234766234941_
                             _hd234765234944_
                             _tl234764234946_
                             _e234769234949_
                             _hd234768234952_
                             _tl234767234954_
                             _e234772234957_
                             _hd234771234960_
                             _tl234770234962_
                             _e234775234965_
                             _hd234774234968_
                             _tl234773234970_
                             _e234778234973_
                             _hd234777234976_
                             _tl234776234978_
                             _e234781234981_
                             _hd234780234984_
                             _tl234779234986_
                             _e234784234989_
                             _hd234783234992_
                             _tl234782234994_
                             _e234787234997_
                             _hd234786235000_
                             _tl234785235002_
                             _e234790235005_
                             _hd234789235008_
                             _tl234788235010_
                             _e234793235013_
                             _hd234792235016_
                             _tl234791235018_
                             _e234796235021_
                             _hd234795235024_
                             _tl234794235026_
                             _e234799235029_
                             _hd234798235032_
                             _tl234797235034_
                             ___splice242198242199_
                             _target234800235037_
                             _tl234802235039_
                             _e234817235042_
                             _hd234816235045_
                             _tl234815235047_
                             _e234820235050_
                             _hd234819235053_
                             _tl234818235055_
                             _e234823235058_
                             _hd234822235061_
                             _tl234821235063_)
                      (letrec ((_loop234803235066_
                                (lambda (_hd234801235069_
                                         _-absent-value234807235071_
                                         _key234808235073_
                                         _-xkwvar234809235075_
                                         _-hash-ref234810235077_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234801235069_))
                                      (let ((_e234804235080_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234801235069_))))
                                        (let ((_lp-tl234806235085_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234804235080_)))
                                              (_lp-hd234805235083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234804235080_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd234805235083_))
                                              (let ((_e234826235088_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd234805235083_))))
                                                (let ((_tl234824235093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234826235088_)))
                                                      (_hd234825235091_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234826235088_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd234825235091_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd234825235091_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl234824235093_))
                      (let ((_e234829235096_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234824235093_))))
                        (let ((_tl234827235101_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234829235096_)))
                              (_hd234828235099_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234829235096_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd234828235099_))
                              (let ((_e234832235104_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd234828235099_))))
                                (let ((_tl234830235109_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234832235104_)))
                                      (_hd234831235107_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234832235104_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd234831235107_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd234831235107_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234830235109_))
                                              (let ((_e234835235112_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234830235109_))))
                                                (let ((_tl234833235117_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234835235112_)))
                                                      (_hd234834235115_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234835235112_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234833235117_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234827235101_))
                                                          (let ((_e234838235120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234827235101_))))
                    (let ((_tl234836235125_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234838235120_)))
                          (_hd234837235123_
                           (let ()
                             (declare (not safe))
                             (##car _e234838235120_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234837235123_))
                          (let ((_e234841235128_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234837235123_))))
                            (let ((_tl234839235133_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234841235128_)))
                                  (_hd234840235131_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234841235128_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234840235131_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234840235131_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234839235133_))
                                          (let ((_e234844235136_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234839235133_))))
                                            (let ((_tl234842235141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234844235136_)))
                                                  (_hd234843235139_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234844235136_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234842235141_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234836235125_))
                                                      (let ((_e234847235144_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234836235125_))))
                (let ((_tl234845235149_
                       (let () (declare (not safe)) (##cdr _e234847235144_)))
                      (_hd234846235147_
                       (let () (declare (not safe)) (##car _e234847235144_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234846235147_))
                      (let ((_e234850235152_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234846235147_))))
                        (let ((_tl234848235157_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234850235152_)))
                              (_hd234849235155_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234850235152_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234849235155_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd234849235155_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234848235157_))
                                      (let ((_e234853235160_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234848235157_))))
                                        (let ((_tl234851235165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234853235160_)))
                                              (_hd234852235163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234853235160_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234851235165_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234845235149_))
                                                  (let ((_e234856235168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234845235149_))))
                                                    (let ((_tl234854235173_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234856235168_)))
                                                          (_hd234855235171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234856235168_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234855235171_))
                                                          (let ((_e234859235176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234855235171_))))
                    (let ((_tl234857235181_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234859235176_)))
                          (_hd234858235179_
                           (let ()
                             (declare (not safe))
                             (##car _e234859235176_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234858235179_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234858235179_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234857235181_))
                                  (let ((_e234862235184_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234857235181_))))
                                    (let ((_tl234860235189_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234862235184_)))
                                          (_hd234861235187_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234862235184_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234860235189_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234854235173_))
                                              (let ((__tmp243929
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234861235187_
                                                             _-absent-value234807235071_)))
                                                    (__tmp243928
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234852235163_
                                                             _key234808235073_)))
                                                    (__tmp243927
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234843235139_
                                                             _-xkwvar234809235075_)))
                                                    (__tmp243926
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234834235115_
                                                             _-hash-ref234810235077_))))
                                                (declare (not safe))
                                                (_loop234803235066_
                                                 _lp-tl234806235085_
                                                 __tmp243929
                                                 __tmp243928
                                                 __tmp243927
                                                 __tmp243926))
                                              (___match242509242510_
                                               _e234760234925_
                                               _hd234759234928_
                                               _tl234758234930_))
                                          (___match242509242510_
                                           _e234760234925_
                                           _hd234759234928_
                                           _tl234758234930_))))
                                  (___match242509242510_
                                   _e234760234925_
                                   _hd234759234928_
                                   _tl234758234930_))
                              (___match242509242510_
                               _e234760234925_
                               _hd234759234928_
                               _tl234758234930_))
                          (___match242509242510_
                           _e234760234925_
                           _hd234759234928_
                           _tl234758234930_))))
                  (___match242509242510_
                   _e234760234925_
                   _hd234759234928_
                   _tl234758234930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242509242510_
                                                   _e234760234925_
                                                   _hd234759234928_
                                                   _tl234758234930_))
                                              (___match242509242510_
                                               _e234760234925_
                                               _hd234759234928_
                                               _tl234758234930_))))
                                      (___match242509242510_
                                       _e234760234925_
                                       _hd234759234928_
                                       _tl234758234930_))
                                  (___match242509242510_
                                   _e234760234925_
                                   _hd234759234928_
                                   _tl234758234930_))
                              (___match242509242510_
                               _e234760234925_
                               _hd234759234928_
                               _tl234758234930_))))
                      (___match242509242510_
                       _e234760234925_
                       _hd234759234928_
                       _tl234758234930_))))
              (___match242509242510_
               _e234760234925_
               _hd234759234928_
               _tl234758234930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242509242510_
                                                   _e234760234925_
                                                   _hd234759234928_
                                                   _tl234758234930_))))
                                          (___match242509242510_
                                           _e234760234925_
                                           _hd234759234928_
                                           _tl234758234930_))
                                      (___match242509242510_
                                       _e234760234925_
                                       _hd234759234928_
                                       _tl234758234930_))
                                  (___match242509242510_
                                   _e234760234925_
                                   _hd234759234928_
                                   _tl234758234930_))))
                          (___match242509242510_
                           _e234760234925_
                           _hd234759234928_
                           _tl234758234930_))))
                  (___match242509242510_
                   _e234760234925_
                   _hd234759234928_
                   _tl234758234930_))
              (___match242509242510_
               _e234760234925_
               _hd234759234928_
               _tl234758234930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242509242510_
                                               _e234760234925_
                                               _hd234759234928_
                                               _tl234758234930_))
                                          (___match242509242510_
                                           _e234760234925_
                                           _hd234759234928_
                                           _tl234758234930_))
                                      (___match242509242510_
                                       _e234760234925_
                                       _hd234759234928_
                                       _tl234758234930_))))
                              (___match242509242510_
                               _e234760234925_
                               _hd234759234928_
                               _tl234758234930_))))
                      (___match242509242510_
                       _e234760234925_
                       _hd234759234928_
                       _tl234758234930_))
                  (___match242509242510_
                   _e234760234925_
                   _hd234759234928_
                   _tl234758234930_))
              (___match242509242510_
               _e234760234925_
               _hd234759234928_
               _tl234758234930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242509242510_
                                               _e234760234925_
                                               _hd234759234928_
                                               _tl234758234930_))))
                                      (let ((_-hash-ref234814235198_
                                             (reverse _-hash-ref234810235077_))
                                            (_-xkwvar234813235196_
                                             (reverse _-xkwvar234809235075_))
                                            (_key234812235194_
                                             (reverse _key234808235073_))
                                            (_-absent-value234811235192_
                                             (reverse _-absent-value234807235071_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl234767234954_))
                                            (let ((_L235201_ _hd234822235061_)
                                                  (_L235202_
                                                   _-absent-value234811235192_)
                                                  (_L235203_ _key234812235194_)
                                                  (_L235204_
                                                   _-xkwvar234813235196_)
                                                  (_L235205_
                                                   _-hash-ref234814235198_)
                                                  (_L235206_ _hd234798235032_)
                                                  (_L235207_ _hd234789235008_)
                                                  (_L235208_ _hd234780234984_)
                                                  (_L235209_ _tl234764234946_)
                                                  (_L235210_ _hd234765234944_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L235210_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L235209_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L235208_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L235210_
                                                          _L235206_))
                                                       (let ((__tmp243924
                                                              (let ((__tmp243925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g235263235266_ _g235264235268_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235263235266_ _g235264235268_)))))
                        (declare (not safe))
                        (foldr1 __tmp243925 '() _L235203_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp243924))
               (let ((__tmp243923
                      (lambda (_g235270235272_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235270235272_
                           'hash-ref))))
                     (__tmp243921
                      (let ((__tmp243922
                             (lambda (_g235274235277_ _g235275235279_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235274235277_ _g235275235279_)))))
                        (declare (not safe))
                        (foldr1 __tmp243922 '() _L235205_))))
                 (declare (not safe))
                 (andmap1 __tmp243923 __tmp243921))
               (let ((__tmp243920
                      (lambda (_g235281235283_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235281235283_
                           'absent-value))))
                     (__tmp243918
                      (let ((__tmp243919
                             (lambda (_g235285235288_ _g235286235290_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235285235288_ _g235286235290_)))))
                        (declare (not safe))
                        (foldr1 __tmp243919 '() _L235202_))))
                 (declare (not safe))
                 (andmap1 __tmp243920 __tmp243918))
               (let ((__tmp243917
                      (lambda (_g235292235294_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g235292235294_ _L235210_))))
                     (__tmp243915
                      (let ((__tmp243916
                             (lambda (_g235296235299_ _g235297235301_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235296235299_ _g235297235301_)))))
                        (declare (not safe))
                        (foldr1 __tmp243916 '() _L235204_))))
                 (declare (not safe))
                 (andmap1 __tmp243917 __tmp243915)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242196242197_
                                                   _L235201_
                                                   _L235202_
                                                   _L235203_
                                                   _L235204_
                                                   _L235205_
                                                   _L235206_
                                                   _L235207_
                                                   _L235208_
                                                   _L235209_
                                                   _L235210_)
                                                  (___match242509242510_
                                                   _e234760234925_
                                                   _hd234759234928_
                                                   _tl234758234930_)))
                                            (___match242509242510_
                                             _e234760234925_
                                             _hd234759234928_
                                             _tl234758234930_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234803235066_
                           _target234800235037_
                           '()
                           '()
                           '()
                           '())))))
                   (___match242375242376_
                    (lambda (_e234760234925_
                             _hd234759234928_
                             _tl234758234930_
                             _e234763234933_
                             _hd234762234936_
                             _tl234761234938_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234762234936_))
                          (let ((_e234766234941_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234762234936_))))
                            (let ((_tl234764234946_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234766234941_)))
                                  (_hd234765234944_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234766234941_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234761234938_))
                                  (let ((_e234769234949_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234761234938_))))
                                    (let ((_tl234767234954_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234769234949_)))
                                          (_hd234768234952_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234769234949_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234768234952_))
                                          (let ((_e234772234957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234768234952_))))
                                            (let ((_tl234770234962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234772234957_)))
                                                  (_hd234771234960_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234772234957_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234771234960_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234771234960_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234770234962_))
                                                          (let ((_e234775234965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234770234962_))))
                    (let ((_tl234773234970_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234775234965_)))
                          (_hd234774234968_
                           (let ()
                             (declare (not safe))
                             (##car _e234775234965_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234774234968_))
                          (let ((_e234778234973_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234774234968_))))
                            (let ((_tl234776234978_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234778234973_)))
                                  (_hd234777234976_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234778234973_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234777234976_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234777234976_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234776234978_))
                                          (let ((_e234781234981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234776234978_))))
                                            (let ((_tl234779234986_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234781234981_)))
                                                  (_hd234780234984_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234781234981_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234779234986_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234773234970_))
                                                      (let ((_e234784234989_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234773234970_))))
                (let ((_tl234782234994_
                       (let () (declare (not safe)) (##cdr _e234784234989_)))
                      (_hd234783234992_
                       (let () (declare (not safe)) (##car _e234784234989_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234783234992_))
                      (let ((_e234787234997_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234783234992_))))
                        (let ((_tl234785235002_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234787234997_)))
                              (_hd234786235000_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234787234997_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234786235000_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234786235000_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234785235002_))
                                      (let ((_e234790235005_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234785235002_))))
                                        (let ((_tl234788235010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234790235005_)))
                                              (_hd234789235008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234790235005_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234788235010_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234782234994_))
                                                  (let ((_e234793235013_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234782234994_))))
                                                    (let ((_tl234791235018_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234793235013_)))
                                                          (_hd234792235016_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234793235013_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234792235016_))
                                                          (let ((_e234796235021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234792235016_))))
                    (let ((_tl234794235026_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234796235021_)))
                          (_hd234795235024_
                           (let ()
                             (declare (not safe))
                             (##car _e234796235021_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234795235024_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234795235024_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234794235026_))
                                  (let ((_e234799235029_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234794235026_))))
                                    (let ((_tl234797235034_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234799235029_)))
                                          (_hd234798235032_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234799235029_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234797235034_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl234791235018_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl234791235018_))
                                                        '1)
                                                  (let ((___splice242198242199_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl234791235018_
                                                            '1))))
                                                    (let ((_tl234802235039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242198242199_
                                                              '1)))
                                                          (_target234800235037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242198242199_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234802235039_))
                                                          (let ((_e234817235042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234802235039_))))
                    (let ((_tl234815235047_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234817235042_)))
                          (_hd234816235045_
                           (let ()
                             (declare (not safe))
                             (##car _e234817235042_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234816235045_))
                          (let ((_e234820235050_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234816235045_))))
                            (let ((_tl234818235055_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234820235050_)))
                                  (_hd234819235053_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234820235050_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234819235053_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234819235053_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234818235055_))
                                          (let ((_e234823235058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234818235055_))))
                                            (let ((_tl234821235063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234823235058_)))
                                                  (_hd234822235061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234823235058_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234821235063_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234815235047_))
                                                      (___match242503242504_
                                                       _e234760234925_
                                                       _hd234759234928_
                                                       _tl234758234930_
                                                       _e234763234933_
                                                       _hd234762234936_
                                                       _tl234761234938_
                                                       _e234766234941_
                                                       _hd234765234944_
                                                       _tl234764234946_
                                                       _e234769234949_
                                                       _hd234768234952_
                                                       _tl234767234954_
                                                       _e234772234957_
                                                       _hd234771234960_
                                                       _tl234770234962_
                                                       _e234775234965_
                                                       _hd234774234968_
                                                       _tl234773234970_
                                                       _e234778234973_
                                                       _hd234777234976_
                                                       _tl234776234978_
                                                       _e234781234981_
                                                       _hd234780234984_
                                                       _tl234779234986_
                                                       _e234784234989_
                                                       _hd234783234992_
                                                       _tl234782234994_
                                                       _e234787234997_
                                                       _hd234786235000_
                                                       _tl234785235002_
                                                       _e234790235005_
                                                       _hd234789235008_
                                                       _tl234788235010_
                                                       _e234793235013_
                                                       _hd234792235016_
                                                       _tl234791235018_
                                                       _e234796235021_
                                                       _hd234795235024_
                                                       _tl234794235026_
                                                       _e234799235029_
                                                       _hd234798235032_
                                                       _tl234797235034_
                                                       ___splice242198242199_
                                                       _target234800235037_
                                                       _tl234802235039_
                                                       _e234817235042_
                                                       _hd234816235045_
                                                       _tl234815235047_
                                                       _e234820235050_
                                                       _hd234819235053_
                                                       _tl234818235055_
                                                       _e234823235058_
                                                       _hd234822235061_
                                                       _tl234821235063_)
                                                      (___match242509242510_
                                                       _e234760234925_
                                                       _hd234759234928_
                                                       _tl234758234930_))
                                                  (___match242509242510_
                                                   _e234760234925_
                                                   _hd234759234928_
                                                   _tl234758234930_))))
                                          (___match242509242510_
                                           _e234760234925_
                                           _hd234759234928_
                                           _tl234758234930_))
                                      (___match242509242510_
                                       _e234760234925_
                                       _hd234759234928_
                                       _tl234758234930_))
                                  (___match242509242510_
                                   _e234760234925_
                                   _hd234759234928_
                                   _tl234758234930_))))
                          (___match242509242510_
                           _e234760234925_
                           _hd234759234928_
                           _tl234758234930_))))
                  (___match242509242510_
                   _e234760234925_
                   _hd234759234928_
                   _tl234758234930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242509242510_
                                                   _e234760234925_
                                                   _hd234759234928_
                                                   _tl234758234930_))
                                              (___match242509242510_
                                               _e234760234925_
                                               _hd234759234928_
                                               _tl234758234930_))
                                          (___match242509242510_
                                           _e234760234925_
                                           _hd234759234928_
                                           _tl234758234930_))))
                                  (___match242509242510_
                                   _e234760234925_
                                   _hd234759234928_
                                   _tl234758234930_))
                              (___match242509242510_
                               _e234760234925_
                               _hd234759234928_
                               _tl234758234930_))
                          (___match242509242510_
                           _e234760234925_
                           _hd234759234928_
                           _tl234758234930_))))
                  (___match242509242510_
                   _e234760234925_
                   _hd234759234928_
                   _tl234758234930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242509242510_
                                                   _e234760234925_
                                                   _hd234759234928_
                                                   _tl234758234930_))
                                              (___match242509242510_
                                               _e234760234925_
                                               _hd234759234928_
                                               _tl234758234930_))))
                                      (___match242509242510_
                                       _e234760234925_
                                       _hd234759234928_
                                       _tl234758234930_))
                                  (___match242509242510_
                                   _e234760234925_
                                   _hd234759234928_
                                   _tl234758234930_))
                              (___match242509242510_
                               _e234760234925_
                               _hd234759234928_
                               _tl234758234930_))))
                      (___match242509242510_
                       _e234760234925_
                       _hd234759234928_
                       _tl234758234930_))))
              (___match242509242510_
               _e234760234925_
               _hd234759234928_
               _tl234758234930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242509242510_
                                                   _e234760234925_
                                                   _hd234759234928_
                                                   _tl234758234930_))))
                                          (___match242509242510_
                                           _e234760234925_
                                           _hd234759234928_
                                           _tl234758234930_))
                                      (___match242509242510_
                                       _e234760234925_
                                       _hd234759234928_
                                       _tl234758234930_))
                                  (___match242509242510_
                                   _e234760234925_
                                   _hd234759234928_
                                   _tl234758234930_))))
                          (___match242509242510_
                           _e234760234925_
                           _hd234759234928_
                           _tl234758234930_))))
                  (___match242509242510_
                   _e234760234925_
                   _hd234759234928_
                   _tl234758234930_))
              (___match242509242510_
               _e234760234925_
               _hd234759234928_
               _tl234758234930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242509242510_
                                                   _e234760234925_
                                                   _hd234759234928_
                                                   _tl234758234930_))))
                                          (___match242509242510_
                                           _e234760234925_
                                           _hd234759234928_
                                           _tl234758234930_))))
                                  (___match242509242510_
                                   _e234760234925_
                                   _hd234759234928_
                                   _tl234758234930_))))
                          (___match242509242510_
                           _e234760234925_
                           _hd234759234928_
                           _tl234758234930_))))
                   (___match242363242364_
                    (lambda (_e234693235316_
                             _hd234692235319_
                             _tl234691235321_
                             _e234696235324_
                             _hd234695235327_
                             _tl234694235329_
                             _e234699235332_
                             _hd234698235335_
                             _tl234697235337_
                             _e234702235340_
                             _hd234701235343_
                             _tl234700235345_
                             _e234705235348_
                             _hd234704235351_
                             _tl234703235353_
                             _e234708235356_
                             _hd234707235359_
                             _tl234706235361_
                             _e234711235364_
                             _hd234710235367_
                             _tl234709235369_
                             _e234714235372_
                             _hd234713235375_
                             _tl234712235377_
                             _e234717235380_
                             _hd234716235383_
                             _tl234715235385_
                             _e234720235388_
                             _hd234719235391_
                             _tl234718235393_
                             _e234723235396_
                             _hd234722235399_
                             _tl234721235401_
                             _e234726235404_
                             _hd234725235407_
                             _tl234724235409_
                             _e234729235412_
                             _hd234728235415_
                             _tl234727235417_
                             _e234732235420_
                             _hd234731235423_
                             _tl234730235425_
                             _e234735235428_
                             _hd234734235431_
                             _tl234733235433_
                             _e234738235436_
                             _hd234737235439_
                             _tl234736235441_
                             _e234741235444_
                             _hd234740235447_
                             _tl234739235449_
                             _e234744235452_
                             _hd234743235455_
                             _tl234742235457_
                             _e234747235460_
                             _hd234746235463_
                             _tl234745235465_)
                      (let ((_L235468_ _hd234746235463_)
                            (_L235469_ _hd234737235439_)
                            (_L235470_ _hd234728235415_)
                            (_L235471_ _hd234719235391_)
                            (_L235472_ _hd234710235367_)
                            (_L235473_ _hd234695235327_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L235473_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L235472_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L235471_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L235473_ _L235468_)))
                            (___kont242194242195_
                             _L235468_
                             _L235469_
                             _L235470_
                             _L235471_
                             _L235472_
                             _L235473_)
                            (___match242375242376_
                             _e234693235316_
                             _hd234692235319_
                             _tl234691235321_
                             _e234696235324_
                             _hd234695235327_
                             _tl234694235329_)))))
                   (___match242217242218_
                    (lambda (_e234693235316_ _hd234692235319_ _tl234691235321_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234691235321_))
                          (let ((_e234696235324_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234691235321_))))
                            (let ((_tl234694235329_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234696235324_)))
                                  (_hd234695235327_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234696235324_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234694235329_))
                                  (let ((_e234699235332_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234694235329_))))
                                    (let ((_tl234697235337_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234699235332_)))
                                          (_hd234698235335_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234699235332_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234698235335_))
                                          (let ((_e234702235340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234698235335_))))
                                            (let ((_tl234700235345_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234702235340_)))
                                                  (_hd234701235343_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234702235340_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234701235343_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234701235343_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234700235345_))
                                                          (let ((_e234705235348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234700235345_))))
                    (let ((_tl234703235353_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234705235348_)))
                          (_hd234704235351_
                           (let ()
                             (declare (not safe))
                             (##car _e234705235348_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234704235351_))
                          (let ((_e234708235356_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234704235351_))))
                            (let ((_tl234706235361_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234708235356_)))
                                  (_hd234707235359_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234708235356_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234707235359_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234707235359_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234706235361_))
                                          (let ((_e234711235364_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234706235361_))))
                                            (let ((_tl234709235369_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234711235364_)))
                                                  (_hd234710235367_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234711235364_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234709235369_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234703235353_))
                                                      (let ((_e234714235372_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234703235353_))))
                (let ((_tl234712235377_
                       (let () (declare (not safe)) (##cdr _e234714235372_)))
                      (_hd234713235375_
                       (let () (declare (not safe)) (##car _e234714235372_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234713235375_))
                      (let ((_e234717235380_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234713235375_))))
                        (let ((_tl234715235385_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234717235380_)))
                              (_hd234716235383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234717235380_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234716235383_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234716235383_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234715235385_))
                                      (let ((_e234720235388_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234715235385_))))
                                        (let ((_tl234718235393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234720235388_)))
                                              (_hd234719235391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234720235388_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234718235393_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234712235377_))
                                                  (let ((_e234723235396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234712235377_))))
                                                    (let ((_tl234721235401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234723235396_)))
                                                          (_hd234722235399_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234723235396_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234722235399_))
                                                          (let ((_e234726235404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234722235399_))))
                    (let ((_tl234724235409_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234726235404_)))
                          (_hd234725235407_
                           (let ()
                             (declare (not safe))
                             (##car _e234726235404_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234725235407_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd234725235407_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234724235409_))
                                  (let ((_e234729235412_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234724235409_))))
                                    (let ((_tl234727235417_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234729235412_)))
                                          (_hd234728235415_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234729235412_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234727235417_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234721235401_))
                                              (let ((_e234732235420_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234721235401_))))
                                                (let ((_tl234730235425_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234732235420_)))
                                                      (_hd234731235423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234732235420_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234731235423_))
                                                      (let ((_e234735235428_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234731235423_))))
                (let ((_tl234733235433_
                       (let () (declare (not safe)) (##cdr _e234735235428_)))
                      (_hd234734235431_
                       (let () (declare (not safe)) (##car _e234735235428_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd234734235431_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234734235431_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234733235433_))
                              (let ((_e234738235436_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234733235433_))))
                                (let ((_tl234736235441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234738235436_)))
                                      (_hd234737235439_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234738235436_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234736235441_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234730235425_))
                                          (let ((_e234741235444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234730235425_))))
                                            (let ((_tl234739235449_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234741235444_)))
                                                  (_hd234740235447_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234741235444_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd234740235447_))
                                                  (let ((_e234744235452_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd234740235447_))))
                                                    (let ((_tl234742235457_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234744235452_)))
                                                          (_hd234743235455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234744235452_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd234743235455_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd234743235455_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234742235457_))
                          (let ((_e234747235460_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234742235457_))))
                            (let ((_tl234745235465_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234747235460_)))
                                  (_hd234746235463_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234747235460_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234745235465_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234739235449_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234697235337_))
                                          (___match242363242364_
                                           _e234693235316_
                                           _hd234692235319_
                                           _tl234691235321_
                                           _e234696235324_
                                           _hd234695235327_
                                           _tl234694235329_
                                           _e234699235332_
                                           _hd234698235335_
                                           _tl234697235337_
                                           _e234702235340_
                                           _hd234701235343_
                                           _tl234700235345_
                                           _e234705235348_
                                           _hd234704235351_
                                           _tl234703235353_
                                           _e234708235356_
                                           _hd234707235359_
                                           _tl234706235361_
                                           _e234711235364_
                                           _hd234710235367_
                                           _tl234709235369_
                                           _e234714235372_
                                           _hd234713235375_
                                           _tl234712235377_
                                           _e234717235380_
                                           _hd234716235383_
                                           _tl234715235385_
                                           _e234720235388_
                                           _hd234719235391_
                                           _tl234718235393_
                                           _e234723235396_
                                           _hd234722235399_
                                           _tl234721235401_
                                           _e234726235404_
                                           _hd234725235407_
                                           _tl234724235409_
                                           _e234729235412_
                                           _hd234728235415_
                                           _tl234727235417_
                                           _e234732235420_
                                           _hd234731235423_
                                           _tl234730235425_
                                           _e234735235428_
                                           _hd234734235431_
                                           _tl234733235433_
                                           _e234738235436_
                                           _hd234737235439_
                                           _tl234736235441_
                                           _e234741235444_
                                           _hd234740235447_
                                           _tl234739235449_
                                           _e234744235452_
                                           _hd234743235455_
                                           _tl234742235457_
                                           _e234747235460_
                                           _hd234746235463_
                                           _tl234745235465_)
                                          (___match242375242376_
                                           _e234693235316_
                                           _hd234692235319_
                                           _tl234691235321_
                                           _e234696235324_
                                           _hd234695235327_
                                           _tl234694235329_))
                                      (___match242375242376_
                                       _e234693235316_
                                       _hd234692235319_
                                       _tl234691235321_
                                       _e234696235324_
                                       _hd234695235327_
                                       _tl234694235329_))
                                  (___match242375242376_
                                   _e234693235316_
                                   _hd234692235319_
                                   _tl234691235321_
                                   _e234696235324_
                                   _hd234695235327_
                                   _tl234694235329_))))
                          (___match242375242376_
                           _e234693235316_
                           _hd234692235319_
                           _tl234691235321_
                           _e234696235324_
                           _hd234695235327_
                           _tl234694235329_))
                      (___match242375242376_
                       _e234693235316_
                       _hd234692235319_
                       _tl234691235321_
                       _e234696235324_
                       _hd234695235327_
                       _tl234694235329_))
                  (___match242375242376_
                   _e234693235316_
                   _hd234692235319_
                   _tl234691235321_
                   _e234696235324_
                   _hd234695235327_
                   _tl234694235329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242375242376_
                                                   _e234693235316_
                                                   _hd234692235319_
                                                   _tl234691235321_
                                                   _e234696235324_
                                                   _hd234695235327_
                                                   _tl234694235329_))))
                                          (___match242375242376_
                                           _e234693235316_
                                           _hd234692235319_
                                           _tl234691235321_
                                           _e234696235324_
                                           _hd234695235327_
                                           _tl234694235329_))
                                      (___match242375242376_
                                       _e234693235316_
                                       _hd234692235319_
                                       _tl234691235321_
                                       _e234696235324_
                                       _hd234695235327_
                                       _tl234694235329_))))
                              (___match242375242376_
                               _e234693235316_
                               _hd234692235319_
                               _tl234691235321_
                               _e234696235324_
                               _hd234695235327_
                               _tl234694235329_))
                          (___match242375242376_
                           _e234693235316_
                           _hd234692235319_
                           _tl234691235321_
                           _e234696235324_
                           _hd234695235327_
                           _tl234694235329_))
                      (___match242375242376_
                       _e234693235316_
                       _hd234692235319_
                       _tl234691235321_
                       _e234696235324_
                       _hd234695235327_
                       _tl234694235329_))))
              (___match242375242376_
               _e234693235316_
               _hd234692235319_
               _tl234691235321_
               _e234696235324_
               _hd234695235327_
               _tl234694235329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242375242376_
                                               _e234693235316_
                                               _hd234692235319_
                                               _tl234691235321_
                                               _e234696235324_
                                               _hd234695235327_
                                               _tl234694235329_))
                                          (___match242375242376_
                                           _e234693235316_
                                           _hd234692235319_
                                           _tl234691235321_
                                           _e234696235324_
                                           _hd234695235327_
                                           _tl234694235329_))))
                                  (___match242375242376_
                                   _e234693235316_
                                   _hd234692235319_
                                   _tl234691235321_
                                   _e234696235324_
                                   _hd234695235327_
                                   _tl234694235329_))
                              (___match242375242376_
                               _e234693235316_
                               _hd234692235319_
                               _tl234691235321_
                               _e234696235324_
                               _hd234695235327_
                               _tl234694235329_))
                          (___match242375242376_
                           _e234693235316_
                           _hd234692235319_
                           _tl234691235321_
                           _e234696235324_
                           _hd234695235327_
                           _tl234694235329_))))
                  (___match242375242376_
                   _e234693235316_
                   _hd234692235319_
                   _tl234691235321_
                   _e234696235324_
                   _hd234695235327_
                   _tl234694235329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242375242376_
                                                   _e234693235316_
                                                   _hd234692235319_
                                                   _tl234691235321_
                                                   _e234696235324_
                                                   _hd234695235327_
                                                   _tl234694235329_))
                                              (___match242375242376_
                                               _e234693235316_
                                               _hd234692235319_
                                               _tl234691235321_
                                               _e234696235324_
                                               _hd234695235327_
                                               _tl234694235329_))))
                                      (___match242375242376_
                                       _e234693235316_
                                       _hd234692235319_
                                       _tl234691235321_
                                       _e234696235324_
                                       _hd234695235327_
                                       _tl234694235329_))
                                  (___match242375242376_
                                   _e234693235316_
                                   _hd234692235319_
                                   _tl234691235321_
                                   _e234696235324_
                                   _hd234695235327_
                                   _tl234694235329_))
                              (___match242375242376_
                               _e234693235316_
                               _hd234692235319_
                               _tl234691235321_
                               _e234696235324_
                               _hd234695235327_
                               _tl234694235329_))))
                      (___match242375242376_
                       _e234693235316_
                       _hd234692235319_
                       _tl234691235321_
                       _e234696235324_
                       _hd234695235327_
                       _tl234694235329_))))
              (___match242375242376_
               _e234693235316_
               _hd234692235319_
               _tl234691235321_
               _e234696235324_
               _hd234695235327_
               _tl234694235329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242375242376_
                                                   _e234693235316_
                                                   _hd234692235319_
                                                   _tl234691235321_
                                                   _e234696235324_
                                                   _hd234695235327_
                                                   _tl234694235329_))))
                                          (___match242375242376_
                                           _e234693235316_
                                           _hd234692235319_
                                           _tl234691235321_
                                           _e234696235324_
                                           _hd234695235327_
                                           _tl234694235329_))
                                      (___match242375242376_
                                       _e234693235316_
                                       _hd234692235319_
                                       _tl234691235321_
                                       _e234696235324_
                                       _hd234695235327_
                                       _tl234694235329_))
                                  (___match242375242376_
                                   _e234693235316_
                                   _hd234692235319_
                                   _tl234691235321_
                                   _e234696235324_
                                   _hd234695235327_
                                   _tl234694235329_))))
                          (___match242375242376_
                           _e234693235316_
                           _hd234692235319_
                           _tl234691235321_
                           _e234696235324_
                           _hd234695235327_
                           _tl234694235329_))))
                  (___match242375242376_
                   _e234693235316_
                   _hd234692235319_
                   _tl234691235321_
                   _e234696235324_
                   _hd234695235327_
                   _tl234694235329_))
              (___match242375242376_
               _e234693235316_
               _hd234692235319_
               _tl234691235321_
               _e234696235324_
               _hd234695235327_
               _tl234694235329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242375242376_
                                                   _e234693235316_
                                                   _hd234692235319_
                                                   _tl234691235321_
                                                   _e234696235324_
                                                   _hd234695235327_
                                                   _tl234694235329_))))
                                          (___match242375242376_
                                           _e234693235316_
                                           _hd234692235319_
                                           _tl234691235321_
                                           _e234696235324_
                                           _hd234695235327_
                                           _tl234694235329_))))
                                  (___match242375242376_
                                   _e234693235316_
                                   _hd234692235319_
                                   _tl234691235321_
                                   _e234696235324_
                                   _hd234695235327_
                                   _tl234694235329_))))
                          (___match242509242510_
                           _e234693235316_
                           _hd234692235319_
                           _tl234691235321_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242190242191_))
                  (let ((_e234684235533_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242190242191_))))
                    (let ((_tl234682235538_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234684235533_)))
                          (_hd234683235536_
                           (let ()
                             (declare (not safe))
                             (##car _e234684235533_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L235541_ _tl234682235538_))
                            (___kont242192242193_ _L235541_))
                          (___match242217242218_
                           _e234684235533_
                           _hd234683235536_
                           _tl234682235538_))))
                  (let () (declare (not safe)) (_g234679234875_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx234628_)
        (letrec ((_clause-e234630_
                  (lambda (_form234671_)
                    (let ((__obj243863
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
                       __obj243863
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form234671_))
                       (if (let ((__tmp243930
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp243930))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form234671_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form234671_))
                               '#f)
                           '#f))
                      __obj243863))))
          (let* ((_g234632234642_
                  (lambda (_g234633234639_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g234633234639_))))
                 (_g234631234668_
                  (lambda (_g234633234645_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g234633234645_))
                        (let ((_e234637234647_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g234633234645_))))
                          (let ((_hd234636234650_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234637234647_)))
                                (_tl234635234652_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234637234647_))))
                            ((lambda (_L234655_)
                               (let ((_clauses234666_
                                      (map _clause-e234630_ _L234655_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses234666_)))
                             _tl234635234652_)))
                        (let ()
                          (declare (not safe))
                          (_g234632234642_ _g234633234645_))))))
            (declare (not safe))
            (_g234631234668_ _stx234628_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx234560_)
        (let* ((_g234562234579_
                (lambda (_g234563234576_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234563234576_))))
               (_g234561234625_
                (lambda (_g234563234582_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234563234582_))
                      (let ((_e234568234584_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234563234582_))))
                        (let ((_hd234567234587_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234568234584_)))
                              (_tl234566234589_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234568234584_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234566234589_))
                              (let ((_e234571234592_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234566234589_))))
                                (let ((_hd234570234595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234571234592_)))
                                      (_tl234569234597_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234571234592_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234569234597_))
                                      (let ((_e234574234600_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234569234597_))))
                                        (let ((_hd234573234603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234574234600_)))
                                              (_tl234572234605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234574234600_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234572234605_))
                                              ((lambda (_L234608_ _L234609_)
                                                 (let ((__tmp243931
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L234608_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp243931
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd234573234603_
                                               _hd234570234595_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234562234579_
                                                 _g234563234582_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234562234579_ _g234563234582_)))))
                              (let ()
                                (declare (not safe))
                                (_g234562234579_ _g234563234582_)))))
                      (let ()
                        (declare (not safe))
                        (_g234562234579_ _g234563234582_))))))
          (declare (not safe))
          (_g234561234625_ _stx234560_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx234465_)
        (let* ((___stx242518242519_ _stx234465_)
               (_g234468234488_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242518242519_)))))
          (let ((___kont242520242521_
                 (lambda (_L234532_ _L234533_)
                   (let ((_type-e234550234552_
                          (let ((__tmp243932
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L234533_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp243932
                             '#f))))
                     (if _type-e234550234552_
                         (let ((_type-e234555_ _type-e234550234552_))
                           (_type-e234555_ _stx234465_ _L234532_))
                         '#f))))
                (___kont242522242523_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242518242519_))
                (let ((_e234474234500_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242518242519_))))
                  (let ((_tl234472234505_
                         (let () (declare (not safe)) (##cdr _e234474234500_)))
                        (_hd234473234503_
                         (let ()
                           (declare (not safe))
                           (##car _e234474234500_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234472234505_))
                        (let ((_e234477234508_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234472234505_))))
                          (let ((_tl234475234513_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234477234508_)))
                                (_hd234476234511_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234477234508_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234476234511_))
                                (let ((_e234480234516_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234476234511_))))
                                  (let ((_tl234478234521_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234480234516_)))
                                        (_hd234479234519_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234480234516_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234479234519_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234479234519_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234478234521_))
                                                (let ((_e234483234524_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234478234521_))))
                                                  (let ((_tl234481234529_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234483234524_)))
                                                        (_hd234482234527_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234483234524_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234481234529_))
                                                        (___kont242520242521_
                                                         _tl234475234513_
                                                         _hd234482234527_)
                                                        (___kont242522242523_))))
                                                (___kont242522242523_))
                                            (___kont242522242523_))
                                        (___kont242522242523_))))
                                (___kont242522242523_))))
                        (___kont242522242523_))))
                (___kont242522242523_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx234414_)
        (let* ((_g234416234429_
                (lambda (_g234417234426_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234417234426_))))
               (_g234415234462_
                (lambda (_g234417234432_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234417234432_))
                      (let ((_e234421234434_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234417234432_))))
                        (let ((_hd234420234437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234421234434_)))
                              (_tl234419234439_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234421234434_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234419234439_))
                              (let ((_e234424234442_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234419234439_))))
                                (let ((_hd234423234445_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234424234442_)))
                                      (_tl234422234447_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234424234442_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234422234447_))
                                      ((lambda (_L234450_)
                                         (let ((__tmp243933
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L234450_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp243933)))
                                       _hd234423234445_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234416234429_ _g234417234432_)))))
                              (let ()
                                (declare (not safe))
                                (_g234416234429_ _g234417234432_)))))
                      (let ()
                        (declare (not safe))
                        (_g234416234429_ _g234417234432_))))))
          (declare (not safe))
          (_g234415234462_ _stx234414_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form233648_)
        (let* ((___stx242556242557_ _form233648_)
               (_g233653233810_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242556242557_)))))
          (let ((___kont242558242559_
                 (lambda (_L234334_ _L234335_ _L234336_) '#t))
                (___kont242564242565_
                 (lambda (_L234122_
                          _L234123_
                          _L234124_
                          _L234125_
                          _L234126_
                          _L234127_)
                   '#t))
                (___kont242570242571_
                 (lambda (_L233918_ _L233919_ _L233920_ _L233921_) '#t))
                (___kont242572242573_ (lambda () '#f)))
            (let* ((___match242697242698_
                    (lambda (_e233772233822_
                             _hd233771233825_
                             _tl233770233827_
                             _e233775233830_
                             _hd233774233833_
                             _tl233773233835_
                             _e233778233838_
                             _hd233777233841_
                             _tl233776233843_
                             _e233781233846_
                             _hd233780233849_
                             _tl233779233851_
                             _e233784233854_
                             _hd233783233857_
                             _tl233782233859_
                             _e233787233862_
                             _hd233786233865_
                             _tl233785233867_
                             _e233790233870_
                             _hd233789233873_
                             _tl233788233875_
                             _e233793233878_
                             _hd233792233881_
                             _tl233791233883_
                             _e233796233886_
                             _hd233795233889_
                             _tl233794233891_
                             _e233799233894_
                             _hd233798233897_
                             _tl233797233899_
                             _e233802233902_
                             _hd233801233905_
                             _tl233800233907_
                             _e233805233910_
                             _hd233804233913_
                             _tl233803233915_)
                      (let ((_L233918_ _hd233804233913_)
                            (_L233919_ _hd233795233889_)
                            (_L233920_ _hd233786233865_)
                            (_L233921_ _hd233771233825_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L233921_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L233920_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L233921_ _L233918_))
                                 (let ((__tmp243934
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L233919_
                                           _L233921_))))
                                   (declare (not safe))
                                   (not __tmp243934)))
                            (___kont242570242571_
                             _L233918_
                             _L233919_
                             _L233920_
                             _L233921_)
                            (___kont242572242573_)))))
                   (___match242669242670_
                    (lambda (_e233772233822_
                             _hd233771233825_
                             _tl233770233827_
                             _e233775233830_
                             _hd233774233833_
                             _tl233773233835_
                             _e233778233838_
                             _hd233777233841_
                             _tl233776233843_
                             _e233781233846_
                             _hd233780233849_
                             _tl233779233851_
                             _e233784233854_
                             _hd233783233857_
                             _tl233782233859_
                             _e233787233862_
                             _hd233786233865_
                             _tl233785233867_
                             _e233790233870_
                             _hd233789233873_
                             _tl233788233875_
                             _e233793233878_
                             _hd233792233881_
                             _tl233791233883_
                             _e233796233886_
                             _hd233795233889_
                             _tl233794233891_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233788233875_))
                          (let ((_e233799233894_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233788233875_))))
                            (let ((_tl233797233899_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233799233894_)))
                                  (_hd233798233897_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233799233894_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233798233897_))
                                  (let ((_e233802233902_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233798233897_))))
                                    (let ((_tl233800233907_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233802233902_)))
                                          (_hd233801233905_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233802233902_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233801233905_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233801233905_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233800233907_))
                                                  (let ((_e233805233910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233800233907_))))
                                                    (let ((_tl233803233915_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233805233910_)))
                                                          (_hd233804233913_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233805233910_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233803233915_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl233797233899_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233773233835_))
                          (___match242697242698_
                           _e233772233822_
                           _hd233771233825_
                           _tl233770233827_
                           _e233775233830_
                           _hd233774233833_
                           _tl233773233835_
                           _e233778233838_
                           _hd233777233841_
                           _tl233776233843_
                           _e233781233846_
                           _hd233780233849_
                           _tl233779233851_
                           _e233784233854_
                           _hd233783233857_
                           _tl233782233859_
                           _e233787233862_
                           _hd233786233865_
                           _tl233785233867_
                           _e233790233870_
                           _hd233789233873_
                           _tl233788233875_
                           _e233793233878_
                           _hd233792233881_
                           _tl233791233883_
                           _e233796233886_
                           _hd233795233889_
                           _tl233794233891_
                           _e233799233894_
                           _hd233798233897_
                           _tl233797233899_
                           _e233802233902_
                           _hd233801233905_
                           _tl233800233907_
                           _e233805233910_
                           _hd233804233913_
                           _tl233803233915_)
                          (___kont242572242573_))
                      (___kont242572242573_))
                  (___kont242572242573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242572242573_))
                                              (___kont242572242573_))
                                          (___kont242572242573_))))
                                  (___kont242572242573_))))
                          (___kont242572242573_))))
                   (___match242599242600_
                    (lambda (_e233708233962_
                             _hd233707233965_
                             _tl233706233967_
                             ___splice242566242567_
                             _target233709233970_
                             _tl233711233972_)
                      (letrec ((_loop233712233975_
                                (lambda (_hd233710233978_ _arg233716233980_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233710233978_))
                                      (let ((_e233713233983_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233710233978_))))
                                        (let ((_lp-tl233715233988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233713233983_)))
                                              (_lp-hd233714233986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233713233983_))))
                                          (let ((__tmp243949
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233714233986_
                                                         _arg233716233980_))))
                                            (declare (not safe))
                                            (_loop233712233975_
                                             _lp-tl233715233988_
                                             __tmp243949))))
                                      (let ((_arg233717233991_
                                             (reverse _arg233716233980_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233706233967_))
                                            (let ((_e233720233994_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233706233967_))))
                                              (let ((_tl233718233999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233720233994_)))
                                                    (_hd233719233997_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233720233994_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233719233997_))
                                                    (let ((_e233723234002_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233719233997_))))
                                                      (let ((_tl233721234007_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233723234002_)))
                    (_hd233722234005_
                     (let () (declare (not safe)) (##car _e233723234002_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233722234005_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233722234005_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233721234007_))
                            (let ((_e233726234010_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233721234007_))))
                              (let ((_tl233724234015_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233726234010_)))
                                    (_hd233725234013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233726234010_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233725234013_))
                                    (let ((_e233729234018_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233725234013_))))
                                      (let ((_tl233727234023_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233729234018_)))
                                            (_hd233728234021_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233729234018_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233728234021_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233728234021_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233727234023_))
                                                    (let ((_e233732234026_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233727234023_))))
                                                      (let ((_tl233730234031_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233732234026_)))
                    (_hd233731234029_
                     (let () (declare (not safe)) (##car _e233732234026_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233730234031_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233724234015_))
                        (let ((_e233735234034_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233724234015_))))
                          (let ((_tl233733234039_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233735234034_)))
                                (_hd233734234037_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233735234034_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233734234037_))
                                (let ((_e233738234042_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233734234037_))))
                                  (let ((_tl233736234047_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233738234042_)))
                                        (_hd233737234045_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233738234042_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233737234045_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233737234045_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233736234047_))
                                                (let ((_e233741234050_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233736234047_))))
                                                  (let ((_tl233739234055_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233741234050_)))
                                                        (_hd233740234053_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233741234050_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233739234055_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl233733234039_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl233733234039_))
                              '1)
                        (let ((___splice242568242569_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233733234039_
                                  '1))))
                          (let ((_tl233744234060_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242568242569_ '1)))
                                (_target233742234058_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242568242569_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233744234060_))
                                (let ((_e233753234063_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233744234060_))))
                                  (let ((_tl233751234068_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233753234063_)))
                                        (_hd233752234066_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233753234063_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233752234066_))
                                        (let ((_e233756234071_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233752234066_))))
                                          (let ((_tl233754234076_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233756234071_)))
                                                (_hd233755234074_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233756234071_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd233755234074_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd233755234074_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl233754234076_))
                                                        (let ((_e233759234079_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl233754234076_))))
                  (let ((_tl233757234084_
                         (let () (declare (not safe)) (##cdr _e233759234079_)))
                        (_hd233758234082_
                         (let ()
                           (declare (not safe))
                           (##car _e233759234079_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233757234084_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233751234068_))
                            (letrec ((_loop233745234087_
                                      (lambda (_hd233743234090_
                                               _xarg233749234092_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd233743234090_))
                                            (let ((_e233746234095_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd233743234090_))))
                                              (let ((_lp-tl233748234100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233746234095_)))
                                                    (_lp-hd233747234098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233746234095_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd233747234098_))
                                                    (let ((_e233762234103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd233747234098_))))
                                                      (let ((_tl233760234108_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233762234103_)))
                    (_hd233761234106_
                     (let () (declare (not safe)) (##car _e233762234103_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233761234106_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd233761234106_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233760234108_))
                            (let ((_e233765234111_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233760234108_))))
                              (let ((_tl233763234116_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233765234111_)))
                                    (_hd233764234114_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233765234111_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233763234116_))
                                    (let ((__tmp243948
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd233764234114_
                                                   _xarg233749234092_))))
                                      (declare (not safe))
                                      (_loop233745234087_
                                       _lp-tl233748234100_
                                       __tmp243948))
                                    (___match242669242670_
                                     _e233708233962_
                                     _hd233707233965_
                                     _tl233706233967_
                                     _e233720233994_
                                     _hd233719233997_
                                     _tl233718233999_
                                     _e233723234002_
                                     _hd233722234005_
                                     _tl233721234007_
                                     _e233726234010_
                                     _hd233725234013_
                                     _tl233724234015_
                                     _e233729234018_
                                     _hd233728234021_
                                     _tl233727234023_
                                     _e233732234026_
                                     _hd233731234029_
                                     _tl233730234031_
                                     _e233735234034_
                                     _hd233734234037_
                                     _tl233733234039_
                                     _e233738234042_
                                     _hd233737234045_
                                     _tl233736234047_
                                     _e233741234050_
                                     _hd233740234053_
                                     _tl233739234055_))))
                            (___match242669242670_
                             _e233708233962_
                             _hd233707233965_
                             _tl233706233967_
                             _e233720233994_
                             _hd233719233997_
                             _tl233718233999_
                             _e233723234002_
                             _hd233722234005_
                             _tl233721234007_
                             _e233726234010_
                             _hd233725234013_
                             _tl233724234015_
                             _e233729234018_
                             _hd233728234021_
                             _tl233727234023_
                             _e233732234026_
                             _hd233731234029_
                             _tl233730234031_
                             _e233735234034_
                             _hd233734234037_
                             _tl233733234039_
                             _e233738234042_
                             _hd233737234045_
                             _tl233736234047_
                             _e233741234050_
                             _hd233740234053_
                             _tl233739234055_))
                        (___match242669242670_
                         _e233708233962_
                         _hd233707233965_
                         _tl233706233967_
                         _e233720233994_
                         _hd233719233997_
                         _tl233718233999_
                         _e233723234002_
                         _hd233722234005_
                         _tl233721234007_
                         _e233726234010_
                         _hd233725234013_
                         _tl233724234015_
                         _e233729234018_
                         _hd233728234021_
                         _tl233727234023_
                         _e233732234026_
                         _hd233731234029_
                         _tl233730234031_
                         _e233735234034_
                         _hd233734234037_
                         _tl233733234039_
                         _e233738234042_
                         _hd233737234045_
                         _tl233736234047_
                         _e233741234050_
                         _hd233740234053_
                         _tl233739234055_))
                    (___match242669242670_
                     _e233708233962_
                     _hd233707233965_
                     _tl233706233967_
                     _e233720233994_
                     _hd233719233997_
                     _tl233718233999_
                     _e233723234002_
                     _hd233722234005_
                     _tl233721234007_
                     _e233726234010_
                     _hd233725234013_
                     _tl233724234015_
                     _e233729234018_
                     _hd233728234021_
                     _tl233727234023_
                     _e233732234026_
                     _hd233731234029_
                     _tl233730234031_
                     _e233735234034_
                     _hd233734234037_
                     _tl233733234039_
                     _e233738234042_
                     _hd233737234045_
                     _tl233736234047_
                     _e233741234050_
                     _hd233740234053_
                     _tl233739234055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242669242670_
                                                     _e233708233962_
                                                     _hd233707233965_
                                                     _tl233706233967_
                                                     _e233720233994_
                                                     _hd233719233997_
                                                     _tl233718233999_
                                                     _e233723234002_
                                                     _hd233722234005_
                                                     _tl233721234007_
                                                     _e233726234010_
                                                     _hd233725234013_
                                                     _tl233724234015_
                                                     _e233729234018_
                                                     _hd233728234021_
                                                     _tl233727234023_
                                                     _e233732234026_
                                                     _hd233731234029_
                                                     _tl233730234031_
                                                     _e233735234034_
                                                     _hd233734234037_
                                                     _tl233733234039_
                                                     _e233738234042_
                                                     _hd233737234045_
                                                     _tl233736234047_
                                                     _e233741234050_
                                                     _hd233740234053_
                                                     _tl233739234055_))))
                                            (let ((_xarg233750234119_
                                                   (reverse _xarg233749234092_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233718233999_))
                                                  (let ((_L234122_
                                                         _hd233758234082_)
                                                        (_L234123_
                                                         _xarg233750234119_)
                                                        (_L234124_
                                                         _hd233740234053_)
                                                        (_L234125_
                                                         _hd233731234029_)
                                                        (_L234126_
                                                         _tl233711233972_)
                                                        (_L234127_
                                                         _arg233717233991_))
                                                    (if (and (let ((__tmp243946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp243947
                                   (lambda (_g234170234173_ _g234171234175_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g234170234173_
                                             _g234171234175_)))))
                              (declare (not safe))
                              (foldr1 __tmp243947 '() _L234127_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp243946))
                     (let () (declare (not safe)) (gx#identifier? _L234126_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L234125_ 'apply))
                     (fx= (length (let ((__tmp243944
                                         (lambda (_g234177234180_
                                                  _g234178234182_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g234177234180_
                                                   _g234178234182_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243944 '() _L234127_)))
                          (length (let ((__tmp243945
                                         (lambda (_g234184234187_
                                                  _g234185234189_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g234184234187_
                                                   _g234185234189_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243945 '() _L234123_))))
                     (let ((__tmp243942
                            (let ((__tmp243943
                                   (lambda (_g234191234194_ _g234192234196_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g234191234194_
                                             _g234192234196_)))))
                              (declare (not safe))
                              (foldr1 __tmp243943 '() _L234127_)))
                           (__tmp243940
                            (let ((__tmp243941
                                   (lambda (_g234198234201_ _g234199234203_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g234198234201_
                                             _g234199234203_)))))
                              (declare (not safe))
                              (foldr1 __tmp243941 '() _L234123_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp243942 __tmp243940))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L234126_ _L234122_))
                     (let ((__tmp243935
                            (let ((__tmp243939
                                   (lambda (_g234205234207_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g234205234207_
                                        _L234124_))))
                                  (__tmp243936
                                   (let ((__tmp243938
                                          (lambda (_g234209234212_
                                                   _g234210234214_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g234209234212_
                                                    _g234210234214_))))
                                         (__tmp243937
                                          (let ()
                                            (declare (not safe))
                                            (cons _L234126_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp243938
                                             __tmp243937
                                             _L234127_))))
                              (declare (not safe))
                              (find __tmp243939 __tmp243936))))
                       (declare (not safe))
                       (not __tmp243935)))
                (___kont242564242565_
                 _L234122_
                 _L234123_
                 _L234124_
                 _L234125_
                 _L234126_
                 _L234127_)
                (___match242669242670_
                 _e233708233962_
                 _hd233707233965_
                 _tl233706233967_
                 _e233720233994_
                 _hd233719233997_
                 _tl233718233999_
                 _e233723234002_
                 _hd233722234005_
                 _tl233721234007_
                 _e233726234010_
                 _hd233725234013_
                 _tl233724234015_
                 _e233729234018_
                 _hd233728234021_
                 _tl233727234023_
                 _e233732234026_
                 _hd233731234029_
                 _tl233730234031_
                 _e233735234034_
                 _hd233734234037_
                 _tl233733234039_
                 _e233738234042_
                 _hd233737234045_
                 _tl233736234047_
                 _e233741234050_
                 _hd233740234053_
                 _tl233739234055_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242669242670_
                                                   _e233708233962_
                                                   _hd233707233965_
                                                   _tl233706233967_
                                                   _e233720233994_
                                                   _hd233719233997_
                                                   _tl233718233999_
                                                   _e233723234002_
                                                   _hd233722234005_
                                                   _tl233721234007_
                                                   _e233726234010_
                                                   _hd233725234013_
                                                   _tl233724234015_
                                                   _e233729234018_
                                                   _hd233728234021_
                                                   _tl233727234023_
                                                   _e233732234026_
                                                   _hd233731234029_
                                                   _tl233730234031_
                                                   _e233735234034_
                                                   _hd233734234037_
                                                   _tl233733234039_
                                                   _e233738234042_
                                                   _hd233737234045_
                                                   _tl233736234047_
                                                   _e233741234050_
                                                   _hd233740234053_
                                                   _tl233739234055_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop233745234087_ _target233742234058_ '())))
                            (___match242669242670_
                             _e233708233962_
                             _hd233707233965_
                             _tl233706233967_
                             _e233720233994_
                             _hd233719233997_
                             _tl233718233999_
                             _e233723234002_
                             _hd233722234005_
                             _tl233721234007_
                             _e233726234010_
                             _hd233725234013_
                             _tl233724234015_
                             _e233729234018_
                             _hd233728234021_
                             _tl233727234023_
                             _e233732234026_
                             _hd233731234029_
                             _tl233730234031_
                             _e233735234034_
                             _hd233734234037_
                             _tl233733234039_
                             _e233738234042_
                             _hd233737234045_
                             _tl233736234047_
                             _e233741234050_
                             _hd233740234053_
                             _tl233739234055_))
                        (___match242669242670_
                         _e233708233962_
                         _hd233707233965_
                         _tl233706233967_
                         _e233720233994_
                         _hd233719233997_
                         _tl233718233999_
                         _e233723234002_
                         _hd233722234005_
                         _tl233721234007_
                         _e233726234010_
                         _hd233725234013_
                         _tl233724234015_
                         _e233729234018_
                         _hd233728234021_
                         _tl233727234023_
                         _e233732234026_
                         _hd233731234029_
                         _tl233730234031_
                         _e233735234034_
                         _hd233734234037_
                         _tl233733234039_
                         _e233738234042_
                         _hd233737234045_
                         _tl233736234047_
                         _e233741234050_
                         _hd233740234053_
                         _tl233739234055_))))
                (___match242669242670_
                 _e233708233962_
                 _hd233707233965_
                 _tl233706233967_
                 _e233720233994_
                 _hd233719233997_
                 _tl233718233999_
                 _e233723234002_
                 _hd233722234005_
                 _tl233721234007_
                 _e233726234010_
                 _hd233725234013_
                 _tl233724234015_
                 _e233729234018_
                 _hd233728234021_
                 _tl233727234023_
                 _e233732234026_
                 _hd233731234029_
                 _tl233730234031_
                 _e233735234034_
                 _hd233734234037_
                 _tl233733234039_
                 _e233738234042_
                 _hd233737234045_
                 _tl233736234047_
                 _e233741234050_
                 _hd233740234053_
                 _tl233739234055_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242669242670_
                                                     _e233708233962_
                                                     _hd233707233965_
                                                     _tl233706233967_
                                                     _e233720233994_
                                                     _hd233719233997_
                                                     _tl233718233999_
                                                     _e233723234002_
                                                     _hd233722234005_
                                                     _tl233721234007_
                                                     _e233726234010_
                                                     _hd233725234013_
                                                     _tl233724234015_
                                                     _e233729234018_
                                                     _hd233728234021_
                                                     _tl233727234023_
                                                     _e233732234026_
                                                     _hd233731234029_
                                                     _tl233730234031_
                                                     _e233735234034_
                                                     _hd233734234037_
                                                     _tl233733234039_
                                                     _e233738234042_
                                                     _hd233737234045_
                                                     _tl233736234047_
                                                     _e233741234050_
                                                     _hd233740234053_
                                                     _tl233739234055_))
                                                (___match242669242670_
                                                 _e233708233962_
                                                 _hd233707233965_
                                                 _tl233706233967_
                                                 _e233720233994_
                                                 _hd233719233997_
                                                 _tl233718233999_
                                                 _e233723234002_
                                                 _hd233722234005_
                                                 _tl233721234007_
                                                 _e233726234010_
                                                 _hd233725234013_
                                                 _tl233724234015_
                                                 _e233729234018_
                                                 _hd233728234021_
                                                 _tl233727234023_
                                                 _e233732234026_
                                                 _hd233731234029_
                                                 _tl233730234031_
                                                 _e233735234034_
                                                 _hd233734234037_
                                                 _tl233733234039_
                                                 _e233738234042_
                                                 _hd233737234045_
                                                 _tl233736234047_
                                                 _e233741234050_
                                                 _hd233740234053_
                                                 _tl233739234055_))))
                                        (___match242669242670_
                                         _e233708233962_
                                         _hd233707233965_
                                         _tl233706233967_
                                         _e233720233994_
                                         _hd233719233997_
                                         _tl233718233999_
                                         _e233723234002_
                                         _hd233722234005_
                                         _tl233721234007_
                                         _e233726234010_
                                         _hd233725234013_
                                         _tl233724234015_
                                         _e233729234018_
                                         _hd233728234021_
                                         _tl233727234023_
                                         _e233732234026_
                                         _hd233731234029_
                                         _tl233730234031_
                                         _e233735234034_
                                         _hd233734234037_
                                         _tl233733234039_
                                         _e233738234042_
                                         _hd233737234045_
                                         _tl233736234047_
                                         _e233741234050_
                                         _hd233740234053_
                                         _tl233739234055_))))
                                (___match242669242670_
                                 _e233708233962_
                                 _hd233707233965_
                                 _tl233706233967_
                                 _e233720233994_
                                 _hd233719233997_
                                 _tl233718233999_
                                 _e233723234002_
                                 _hd233722234005_
                                 _tl233721234007_
                                 _e233726234010_
                                 _hd233725234013_
                                 _tl233724234015_
                                 _e233729234018_
                                 _hd233728234021_
                                 _tl233727234023_
                                 _e233732234026_
                                 _hd233731234029_
                                 _tl233730234031_
                                 _e233735234034_
                                 _hd233734234037_
                                 _tl233733234039_
                                 _e233738234042_
                                 _hd233737234045_
                                 _tl233736234047_
                                 _e233741234050_
                                 _hd233740234053_
                                 _tl233739234055_))))
                        (___match242669242670_
                         _e233708233962_
                         _hd233707233965_
                         _tl233706233967_
                         _e233720233994_
                         _hd233719233997_
                         _tl233718233999_
                         _e233723234002_
                         _hd233722234005_
                         _tl233721234007_
                         _e233726234010_
                         _hd233725234013_
                         _tl233724234015_
                         _e233729234018_
                         _hd233728234021_
                         _tl233727234023_
                         _e233732234026_
                         _hd233731234029_
                         _tl233730234031_
                         _e233735234034_
                         _hd233734234037_
                         _tl233733234039_
                         _e233738234042_
                         _hd233737234045_
                         _tl233736234047_
                         _e233741234050_
                         _hd233740234053_
                         _tl233739234055_))
                    (___match242669242670_
                     _e233708233962_
                     _hd233707233965_
                     _tl233706233967_
                     _e233720233994_
                     _hd233719233997_
                     _tl233718233999_
                     _e233723234002_
                     _hd233722234005_
                     _tl233721234007_
                     _e233726234010_
                     _hd233725234013_
                     _tl233724234015_
                     _e233729234018_
                     _hd233728234021_
                     _tl233727234023_
                     _e233732234026_
                     _hd233731234029_
                     _tl233730234031_
                     _e233735234034_
                     _hd233734234037_
                     _tl233733234039_
                     _e233738234042_
                     _hd233737234045_
                     _tl233736234047_
                     _e233741234050_
                     _hd233740234053_
                     _tl233739234055_))
                (___kont242572242573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242572242573_))
                                            (___kont242572242573_))
                                        (___kont242572242573_))))
                                (___kont242572242573_))))
                        (___kont242572242573_))
                    (___kont242572242573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242572242573_))
                                                (___kont242572242573_))
                                            (___kont242572242573_))))
                                    (___kont242572242573_))))
                            (___kont242572242573_))
                        (___kont242572242573_))
                    (___kont242572242573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242572242573_))))
                                            (___kont242572242573_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233712233975_ _target233709233970_ '())))))
                   (___match242587242588_
                    (lambda (_e233660234222_
                             _hd233659234225_
                             _tl233658234227_
                             ___splice242560242561_
                             _target233661234230_
                             _tl233663234232_)
                      (letrec ((_loop233664234235_
                                (lambda (_hd233662234238_ _arg233668234240_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233662234238_))
                                      (let ((_e233665234243_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233662234238_))))
                                        (let ((_lp-tl233667234248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233665234243_)))
                                              (_lp-hd233666234246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233665234243_))))
                                          (let ((__tmp243963
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233666234246_
                                                         _arg233668234240_))))
                                            (declare (not safe))
                                            (_loop233664234235_
                                             _lp-tl233667234248_
                                             __tmp243963))))
                                      (let ((_arg233669234251_
                                             (reverse _arg233668234240_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233658234227_))
                                            (let ((_e233672234254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233658234227_))))
                                              (let ((_tl233670234259_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233672234254_)))
                                                    (_hd233671234257_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233672234254_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233671234257_))
                                                    (let ((_e233675234262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233671234257_))))
                                                      (let ((_tl233673234267_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233675234262_)))
                    (_hd233674234265_
                     (let () (declare (not safe)) (##car _e233675234262_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233674234265_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233674234265_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233673234267_))
                            (let ((_e233678234270_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233673234267_))))
                              (let ((_tl233676234275_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233678234270_)))
                                    (_hd233677234273_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233678234270_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233677234273_))
                                    (let ((_e233681234278_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233677234273_))))
                                      (let ((_tl233679234283_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233681234278_)))
                                            (_hd233680234281_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233681234278_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233680234281_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233680234281_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233679234283_))
                                                    (let ((_e233684234286_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233679234283_))))
                                                      (let ((_tl233682234291_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233684234286_)))
                    (_hd233683234289_
                     (let () (declare (not safe)) (##car _e233684234286_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233682234291_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl233676234275_))
                        (let ((___splice242562242563_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233676234275_
                                  '0))))
                          (let ((_tl233687234296_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242562242563_ '1)))
                                (_target233685234294_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242562242563_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233687234296_))
                                (letrec ((_loop233688234299_
                                          (lambda (_hd233686234302_
                                                   _xarg233692234304_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233686234302_))
                                                (let ((_e233689234307_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233686234302_))))
                                                  (let ((_lp-tl233691234312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233689234307_)))
                                                        (_lp-hd233690234310_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233689234307_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd233690234310_))
                                                        (let ((_e233696234315_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd233690234310_))))
                  (let ((_tl233694234320_
                         (let () (declare (not safe)) (##cdr _e233696234315_)))
                        (_hd233695234318_
                         (let ()
                           (declare (not safe))
                           (##car _e233696234315_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233695234318_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233695234318_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233694234320_))
                                (let ((_e233699234323_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233694234320_))))
                                  (let ((_tl233697234328_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233699234323_)))
                                        (_hd233698234326_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233699234323_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233697234328_))
                                        (let ((__tmp243962
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd233698234326_
                                                       _xarg233692234304_))))
                                          (declare (not safe))
                                          (_loop233688234299_
                                           _lp-tl233691234312_
                                           __tmp243962))
                                        (___match242599242600_
                                         _e233660234222_
                                         _hd233659234225_
                                         _tl233658234227_
                                         ___splice242560242561_
                                         _target233661234230_
                                         _tl233663234232_))))
                                (___match242599242600_
                                 _e233660234222_
                                 _hd233659234225_
                                 _tl233658234227_
                                 ___splice242560242561_
                                 _target233661234230_
                                 _tl233663234232_))
                            (___match242599242600_
                             _e233660234222_
                             _hd233659234225_
                             _tl233658234227_
                             ___splice242560242561_
                             _target233661234230_
                             _tl233663234232_))
                        (___match242599242600_
                         _e233660234222_
                         _hd233659234225_
                         _tl233658234227_
                         ___splice242560242561_
                         _target233661234230_
                         _tl233663234232_))))
                (___match242599242600_
                 _e233660234222_
                 _hd233659234225_
                 _tl233658234227_
                 ___splice242560242561_
                 _target233661234230_
                 _tl233663234232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg233693234331_
                                                       (reverse _xarg233692234304_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233670234259_))
                                                      (let ((_L234334_
                                                             _xarg233693234331_)
                                                            (_L234335_
                                                             _hd233683234289_)
                                                            (_L234336_
                                                             _arg233669234251_))
                                                        (if (and (let ((__tmp243960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp243961
                                       (lambda (_g234364234367_
                                                _g234365234369_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234364234367_
                                                 _g234365234369_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243961 '() _L234336_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp243960))
                         (fx= (length (let ((__tmp243958
                                             (lambda (_g234371234374_
                                                      _g234372234376_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234371234374_
                                                       _g234372234376_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243958 '() _L234336_)))
                              (length (let ((__tmp243959
                                             (lambda (_g234378234381_
                                                      _g234379234383_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234378234381_
                                                       _g234379234383_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243959 '() _L234334_))))
                         (let ((__tmp243956
                                (let ((__tmp243957
                                       (lambda (_g234385234388_
                                                _g234386234390_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234385234388_
                                                 _g234386234390_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243957 '() _L234336_)))
                               (__tmp243954
                                (let ((__tmp243955
                                       (lambda (_g234392234395_
                                                _g234393234397_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234392234395_
                                                 _g234393234397_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243955 '() _L234334_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp243956
                                    __tmp243954))
                         (let ((__tmp243950
                                (let ((__tmp243953
                                       (lambda (_g234399234401_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g234399234401_
                                            _L234335_))))
                                      (__tmp243951
                                       (let ((__tmp243952
                                              (lambda (_g234403234406_
                                                       _g234404234408_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g234403234406_
                                                        _g234404234408_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp243952 '() _L234336_))))
                                  (declare (not safe))
                                  (find __tmp243953 __tmp243951))))
                           (declare (not safe))
                           (not __tmp243950)))
                    (___kont242558242559_ _L234334_ _L234335_ _L234336_)
                    (___match242599242600_
                     _e233660234222_
                     _hd233659234225_
                     _tl233658234227_
                     ___splice242560242561_
                     _target233661234230_
                     _tl233663234232_)))
              (___match242599242600_
               _e233660234222_
               _hd233659234225_
               _tl233658234227_
               ___splice242560242561_
               _target233661234230_
               _tl233663234232_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop233688234299_
                                     _target233685234294_
                                     '())))
                                (___match242599242600_
                                 _e233660234222_
                                 _hd233659234225_
                                 _tl233658234227_
                                 ___splice242560242561_
                                 _target233661234230_
                                 _tl233663234232_))))
                        (___match242599242600_
                         _e233660234222_
                         _hd233659234225_
                         _tl233658234227_
                         ___splice242560242561_
                         _target233661234230_
                         _tl233663234232_))
                    (___match242599242600_
                     _e233660234222_
                     _hd233659234225_
                     _tl233658234227_
                     ___splice242560242561_
                     _target233661234230_
                     _tl233663234232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242599242600_
                                                     _e233660234222_
                                                     _hd233659234225_
                                                     _tl233658234227_
                                                     ___splice242560242561_
                                                     _target233661234230_
                                                     _tl233663234232_))
                                                (___match242599242600_
                                                 _e233660234222_
                                                 _hd233659234225_
                                                 _tl233658234227_
                                                 ___splice242560242561_
                                                 _target233661234230_
                                                 _tl233663234232_))
                                            (___match242599242600_
                                             _e233660234222_
                                             _hd233659234225_
                                             _tl233658234227_
                                             ___splice242560242561_
                                             _target233661234230_
                                             _tl233663234232_))))
                                    (___match242599242600_
                                     _e233660234222_
                                     _hd233659234225_
                                     _tl233658234227_
                                     ___splice242560242561_
                                     _target233661234230_
                                     _tl233663234232_))))
                            (___match242599242600_
                             _e233660234222_
                             _hd233659234225_
                             _tl233658234227_
                             ___splice242560242561_
                             _target233661234230_
                             _tl233663234232_))
                        (___match242599242600_
                         _e233660234222_
                         _hd233659234225_
                         _tl233658234227_
                         ___splice242560242561_
                         _target233661234230_
                         _tl233663234232_))
                    (___match242599242600_
                     _e233660234222_
                     _hd233659234225_
                     _tl233658234227_
                     ___splice242560242561_
                     _target233661234230_
                     _tl233663234232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242599242600_
                                                     _e233660234222_
                                                     _hd233659234225_
                                                     _tl233658234227_
                                                     ___splice242560242561_
                                                     _target233661234230_
                                                     _tl233663234232_))))
                                            (___match242599242600_
                                             _e233660234222_
                                             _hd233659234225_
                                             _tl233658234227_
                                             ___splice242560242561_
                                             _target233661234230_
                                             _tl233663234232_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233664234235_ _target233661234230_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242556242557_))
                  (let ((_e233660234222_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242556242557_))))
                    (let ((_tl233658234227_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233660234222_)))
                          (_hd233659234225_
                           (let ()
                             (declare (not safe))
                             (##car _e233660234222_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd233659234225_))
                          (let ((___splice242560242561_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd233659234225_
                                    '0))))
                            (let ((_tl233663234232_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242560242561_ '1)))
                                  (_target233661234230_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242560242561_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233663234232_))
                                  (___match242587242588_
                                   _e233660234222_
                                   _hd233659234225_
                                   _tl233658234227_
                                   ___splice242560242561_
                                   _target233661234230_
                                   _tl233663234232_)
                                  (___match242599242600_
                                   _e233660234222_
                                   _hd233659234225_
                                   _tl233658234227_
                                   ___splice242560242561_
                                   _target233661234230_
                                   _tl233663234232_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233658234227_))
                              (let ((_e233775233830_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233658234227_))))
                                (let ((_tl233773233835_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233775233830_)))
                                      (_hd233774233833_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233775233830_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233774233833_))
                                      (let ((_e233778233838_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233774233833_))))
                                        (let ((_tl233776233843_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233778233838_)))
                                              (_hd233777233841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233778233838_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd233777233841_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd233777233841_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233776233843_))
                                                      (let ((_e233781233846_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233776233843_))))
                (let ((_tl233779233851_
                       (let () (declare (not safe)) (##cdr _e233781233846_)))
                      (_hd233780233849_
                       (let () (declare (not safe)) (##car _e233781233846_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233780233849_))
                      (let ((_e233784233854_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233780233849_))))
                        (let ((_tl233782233859_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233784233854_)))
                              (_hd233783233857_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233784233854_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233783233857_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233783233857_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233782233859_))
                                      (let ((_e233787233862_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233782233859_))))
                                        (let ((_tl233785233867_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233787233862_)))
                                              (_hd233786233865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233787233862_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233785233867_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233779233851_))
                                                  (let ((_e233790233870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233779233851_))))
                                                    (let ((_tl233788233875_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233790233870_)))
                                                          (_hd233789233873_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233790233870_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233789233873_))
                                                          (let ((_e233793233878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233789233873_))))
                    (let ((_tl233791233883_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233793233878_)))
                          (_hd233792233881_
                           (let ()
                             (declare (not safe))
                             (##car _e233793233878_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233792233881_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233792233881_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233791233883_))
                                  (let ((_e233796233886_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233791233883_))))
                                    (let ((_tl233794233891_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233796233886_)))
                                          (_hd233795233889_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233796233886_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233794233891_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233788233875_))
                                              (let ((_e233799233894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233788233875_))))
                                                (let ((_tl233797233899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233799233894_)))
                                                      (_hd233798233897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233799233894_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd233798233897_))
                                                      (let ((_e233802233902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd233798233897_))))
                (let ((_tl233800233907_
                       (let () (declare (not safe)) (##cdr _e233802233902_)))
                      (_hd233801233905_
                       (let () (declare (not safe)) (##car _e233802233902_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd233801233905_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd233801233905_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233800233907_))
                              (let ((_e233805233910_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233800233907_))))
                                (let ((_tl233803233915_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233805233910_)))
                                      (_hd233804233913_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233805233910_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233803233915_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233797233899_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233773233835_))
                                              (___match242697242698_
                                               _e233660234222_
                                               _hd233659234225_
                                               _tl233658234227_
                                               _e233775233830_
                                               _hd233774233833_
                                               _tl233773233835_
                                               _e233778233838_
                                               _hd233777233841_
                                               _tl233776233843_
                                               _e233781233846_
                                               _hd233780233849_
                                               _tl233779233851_
                                               _e233784233854_
                                               _hd233783233857_
                                               _tl233782233859_
                                               _e233787233862_
                                               _hd233786233865_
                                               _tl233785233867_
                                               _e233790233870_
                                               _hd233789233873_
                                               _tl233788233875_
                                               _e233793233878_
                                               _hd233792233881_
                                               _tl233791233883_
                                               _e233796233886_
                                               _hd233795233889_
                                               _tl233794233891_
                                               _e233799233894_
                                               _hd233798233897_
                                               _tl233797233899_
                                               _e233802233902_
                                               _hd233801233905_
                                               _tl233800233907_
                                               _e233805233910_
                                               _hd233804233913_
                                               _tl233803233915_)
                                              (___kont242572242573_))
                                          (___kont242572242573_))
                                      (___kont242572242573_))))
                              (___kont242572242573_))
                          (___kont242572242573_))
                      (___kont242572242573_))))
              (___kont242572242573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont242572242573_))
                                          (___kont242572242573_))))
                                  (___kont242572242573_))
                              (___kont242572242573_))
                          (___kont242572242573_))))
                  (___kont242572242573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242572242573_))
                                              (___kont242572242573_))))
                                      (___kont242572242573_))
                                  (___kont242572242573_))
                              (___kont242572242573_))))
                      (___kont242572242573_))))
              (___kont242572242573_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242572242573_))
                                              (___kont242572242573_))))
                                      (___kont242572242573_))))
                              (___kont242572242573_)))))
                  (___kont242572242573_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form233116_)
        (let* ((___stx242700242701_ _form233116_)
               (_g233120233244_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242700242701_)))))
          (let ((___kont242702242703_
                 (lambda (_L233614_ _L233615_ _L233616_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233615_))))
                (___kont242708242709_
                 (lambda (_L233462_ _L233463_ _L233464_ _L233465_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233462_))))
                (___kont242712242713_
                 (lambda (_L233329_ _L233330_ _L233331_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233329_)))))
            (let* ((___match242809242810_
                    (lambda (_e233212233249_
                             _hd233211233252_
                             _tl233210233254_
                             _e233215233257_
                             _hd233214233260_
                             _tl233213233262_
                             _e233218233265_
                             _hd233217233268_
                             _tl233216233270_
                             _e233221233273_
                             _hd233220233276_
                             _tl233219233278_
                             _e233224233281_
                             _hd233223233284_
                             _tl233222233286_
                             _e233227233289_
                             _hd233226233292_
                             _tl233225233294_
                             _e233230233297_
                             _hd233229233300_
                             _tl233228233302_
                             _e233233233305_
                             _hd233232233308_
                             _tl233231233310_
                             _e233236233313_
                             _hd233235233316_
                             _tl233234233318_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233228233302_))
                          (let ((_e233239233321_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233228233302_))))
                            (let ((_tl233237233326_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233239233321_)))
                                  (_hd233238233324_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233239233321_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233237233326_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233213233262_))
                                      (___kont242712242713_
                                       _hd233235233316_
                                       _hd233226233292_
                                       _hd233211233252_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233244_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g233120233244_)))))
                          (let () (declare (not safe)) (_g233120233244_)))))
                   (___match242739242740_
                    (lambda (_e233173233366_
                             _hd233172233369_
                             _tl233171233371_
                             ___splice242710242711_
                             _target233174233374_
                             _tl233176233376_)
                      (letrec ((_loop233177233379_
                                (lambda (_hd233175233382_ _arg233181233384_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233175233382_))
                                      (let ((_e233178233387_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233175233382_))))
                                        (let ((_lp-tl233180233392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233178233387_)))
                                              (_lp-hd233179233390_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233178233387_))))
                                          (let ((__tmp243964
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233179233390_
                                                         _arg233181233384_))))
                                            (declare (not safe))
                                            (_loop233177233379_
                                             _lp-tl233180233392_
                                             __tmp243964))))
                                      (let ((_arg233182233395_
                                             (reverse _arg233181233384_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233171233371_))
                                            (let ((_e233185233398_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233171233371_))))
                                              (let ((_tl233183233403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233185233398_)))
                                                    (_hd233184233401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233185233398_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233184233401_))
                                                    (let ((_e233188233406_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233184233401_))))
                                                      (let ((_tl233186233411_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233188233406_)))
                    (_hd233187233409_
                     (let () (declare (not safe)) (##car _e233188233406_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233187233409_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233187233409_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233186233411_))
                            (let ((_e233191233414_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233186233411_))))
                              (let ((_tl233189233419_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233191233414_)))
                                    (_hd233190233417_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233191233414_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233190233417_))
                                    (let ((_e233194233422_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233190233417_))))
                                      (let ((_tl233192233427_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233194233422_)))
                                            (_hd233193233425_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233194233422_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233193233425_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233193233425_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233192233427_))
                                                    (let ((_e233197233430_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233192233427_))))
                                                      (let ((_tl233195233435_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233197233430_)))
                    (_hd233196233433_
                     (let () (declare (not safe)) (##car _e233197233430_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233195233435_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233189233419_))
                        (let ((_e233200233438_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233189233419_))))
                          (let ((_tl233198233443_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233200233438_)))
                                (_hd233199233441_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233200233438_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233199233441_))
                                (let ((_e233203233446_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233199233441_))))
                                  (let ((_tl233201233451_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233203233446_)))
                                        (_hd233202233449_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233203233446_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233202233449_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233202233449_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233201233451_))
                                                (let ((_e233206233454_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233201233451_))))
                                                  (let ((_tl233204233459_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233206233454_)))
                                                        (_hd233205233457_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233206233454_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233204233459_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl233183233403_))
                                                            (___kont242708242709_
                                                             _hd233205233457_
                                                             _hd233196233433_
                                                             _tl233176233376_
                                                             _arg233182233395_)
                                                            (___match242809242810_
                                                             _e233173233366_
                                                             _hd233172233369_
                                                             _tl233171233371_
                                                             _e233185233398_
                                                             _hd233184233401_
                                                             _tl233183233403_
                                                             _e233188233406_
                                                             _hd233187233409_
                                                             _tl233186233411_
                                                             _e233191233414_
                                                             _hd233190233417_
                                                             _tl233189233419_
                                                             _e233194233422_
                                                             _hd233193233425_
                                                             _tl233192233427_
                                                             _e233197233430_
                                                             _hd233196233433_
                                                             _tl233195233435_
                                                             _e233200233438_
                                                             _hd233199233441_
                                                             _tl233198233443_
                                                             _e233203233446_
                                                             _hd233202233449_
                                                             _tl233201233451_
                                                             _e233206233454_
                                                             _hd233205233457_
                                                             _tl233204233459_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g233120233244_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g233120233244_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g233120233244_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g233120233244_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233120233244_)))))
                        (let () (declare (not safe)) (_g233120233244_)))
                    (let () (declare (not safe)) (_g233120233244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g233120233244_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g233120233244_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g233120233244_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g233120233244_)))))
                            (let () (declare (not safe)) (_g233120233244_)))
                        (let () (declare (not safe)) (_g233120233244_)))
                    (let () (declare (not safe)) (_g233120233244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g233120233244_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g233120233244_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop233177233379_ _target233174233374_ '())))))
                   (___match242727242728_
                    (lambda (_e233127233502_
                             _hd233126233505_
                             _tl233125233507_
                             ___splice242704242705_
                             _target233128233510_
                             _tl233130233512_)
                      (letrec ((_loop233131233515_
                                (lambda (_hd233129233518_ _arg233135233520_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233129233518_))
                                      (let ((_e233132233523_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233129233518_))))
                                        (let ((_lp-tl233134233528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233132233523_)))
                                              (_lp-hd233133233526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233132233523_))))
                                          (let ((__tmp243966
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233133233526_
                                                         _arg233135233520_))))
                                            (declare (not safe))
                                            (_loop233131233515_
                                             _lp-tl233134233528_
                                             __tmp243966))))
                                      (let ((_arg233136233531_
                                             (reverse _arg233135233520_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233125233507_))
                                            (let ((_e233139233534_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233125233507_))))
                                              (let ((_tl233137233539_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233139233534_)))
                                                    (_hd233138233537_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233139233534_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233138233537_))
                                                    (let ((_e233142233542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233138233537_))))
                                                      (let ((_tl233140233547_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233142233542_)))
                    (_hd233141233545_
                     (let () (declare (not safe)) (##car _e233142233542_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233141233545_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233141233545_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233140233547_))
                            (let ((_e233145233550_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233140233547_))))
                              (let ((_tl233143233555_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233145233550_)))
                                    (_hd233144233553_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233145233550_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233144233553_))
                                    (let ((_e233148233558_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233144233553_))))
                                      (let ((_tl233146233563_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233148233558_)))
                                            (_hd233147233561_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233148233558_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233147233561_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233147233561_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233146233563_))
                                                    (let ((_e233151233566_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233146233563_))))
                                                      (let ((_tl233149233571_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233151233566_)))
                    (_hd233150233569_
                     (let () (declare (not safe)) (##car _e233151233566_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233149233571_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl233143233555_))
                        (let ((___splice242706242707_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233143233555_
                                  '0))))
                          (let ((_tl233154233576_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242706242707_ '1)))
                                (_target233152233574_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242706242707_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233154233576_))
                                (letrec ((_loop233155233579_
                                          (lambda (_hd233153233582_
                                                   _xarg233159233584_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233153233582_))
                                                (let ((_e233156233587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233153233582_))))
                                                  (let ((_lp-tl233158233592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233156233587_)))
                                                        (_lp-hd233157233590_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233156233587_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd233157233590_))
                                                        (let ((_e233163233595_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd233157233590_))))
                  (let ((_tl233161233600_
                         (let () (declare (not safe)) (##cdr _e233163233595_)))
                        (_hd233162233598_
                         (let ()
                           (declare (not safe))
                           (##car _e233163233595_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233162233598_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233162233598_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233161233600_))
                                (let ((_e233166233603_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233161233600_))))
                                  (let ((_tl233164233608_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233166233603_)))
                                        (_hd233165233606_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233166233603_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233164233608_))
                                        (let ((__tmp243965
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd233165233606_
                                                       _xarg233159233584_))))
                                          (declare (not safe))
                                          (_loop233155233579_
                                           _lp-tl233158233592_
                                           __tmp243965))
                                        (___match242739242740_
                                         _e233127233502_
                                         _hd233126233505_
                                         _tl233125233507_
                                         ___splice242704242705_
                                         _target233128233510_
                                         _tl233130233512_))))
                                (___match242739242740_
                                 _e233127233502_
                                 _hd233126233505_
                                 _tl233125233507_
                                 ___splice242704242705_
                                 _target233128233510_
                                 _tl233130233512_))
                            (___match242739242740_
                             _e233127233502_
                             _hd233126233505_
                             _tl233125233507_
                             ___splice242704242705_
                             _target233128233510_
                             _tl233130233512_))
                        (___match242739242740_
                         _e233127233502_
                         _hd233126233505_
                         _tl233125233507_
                         ___splice242704242705_
                         _target233128233510_
                         _tl233130233512_))))
                (___match242739242740_
                 _e233127233502_
                 _hd233126233505_
                 _tl233125233507_
                 ___splice242704242705_
                 _target233128233510_
                 _tl233130233512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg233160233611_
                                                       (reverse _xarg233159233584_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233137233539_))
                                                      (___kont242702242703_
                                                       _xarg233160233611_
                                                       _hd233150233569_
                                                       _arg233136233531_)
                                                      (___match242739242740_
                                                       _e233127233502_
                                                       _hd233126233505_
                                                       _tl233125233507_
                                                       ___splice242704242705_
                                                       _target233128233510_
                                                       _tl233130233512_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop233155233579_
                                     _target233152233574_
                                     '())))
                                (___match242739242740_
                                 _e233127233502_
                                 _hd233126233505_
                                 _tl233125233507_
                                 ___splice242704242705_
                                 _target233128233510_
                                 _tl233130233512_))))
                        (___match242739242740_
                         _e233127233502_
                         _hd233126233505_
                         _tl233125233507_
                         ___splice242704242705_
                         _target233128233510_
                         _tl233130233512_))
                    (___match242739242740_
                     _e233127233502_
                     _hd233126233505_
                     _tl233125233507_
                     ___splice242704242705_
                     _target233128233510_
                     _tl233130233512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242739242740_
                                                     _e233127233502_
                                                     _hd233126233505_
                                                     _tl233125233507_
                                                     ___splice242704242705_
                                                     _target233128233510_
                                                     _tl233130233512_))
                                                (___match242739242740_
                                                 _e233127233502_
                                                 _hd233126233505_
                                                 _tl233125233507_
                                                 ___splice242704242705_
                                                 _target233128233510_
                                                 _tl233130233512_))
                                            (___match242739242740_
                                             _e233127233502_
                                             _hd233126233505_
                                             _tl233125233507_
                                             ___splice242704242705_
                                             _target233128233510_
                                             _tl233130233512_))))
                                    (___match242739242740_
                                     _e233127233502_
                                     _hd233126233505_
                                     _tl233125233507_
                                     ___splice242704242705_
                                     _target233128233510_
                                     _tl233130233512_))))
                            (___match242739242740_
                             _e233127233502_
                             _hd233126233505_
                             _tl233125233507_
                             ___splice242704242705_
                             _target233128233510_
                             _tl233130233512_))
                        (___match242739242740_
                         _e233127233502_
                         _hd233126233505_
                         _tl233125233507_
                         ___splice242704242705_
                         _target233128233510_
                         _tl233130233512_))
                    (___match242739242740_
                     _e233127233502_
                     _hd233126233505_
                     _tl233125233507_
                     ___splice242704242705_
                     _target233128233510_
                     _tl233130233512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242739242740_
                                                     _e233127233502_
                                                     _hd233126233505_
                                                     _tl233125233507_
                                                     ___splice242704242705_
                                                     _target233128233510_
                                                     _tl233130233512_))))
                                            (___match242739242740_
                                             _e233127233502_
                                             _hd233126233505_
                                             _tl233125233507_
                                             ___splice242704242705_
                                             _target233128233510_
                                             _tl233130233512_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233131233515_ _target233128233510_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242700242701_))
                  (let ((_e233127233502_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242700242701_))))
                    (let ((_tl233125233507_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233127233502_)))
                          (_hd233126233505_
                           (let ()
                             (declare (not safe))
                             (##car _e233127233502_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd233126233505_))
                          (let ((___splice242704242705_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd233126233505_
                                    '0))))
                            (let ((_tl233130233512_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242704242705_ '1)))
                                  (_target233128233510_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242704242705_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233130233512_))
                                  (___match242727242728_
                                   _e233127233502_
                                   _hd233126233505_
                                   _tl233125233507_
                                   ___splice242704242705_
                                   _target233128233510_
                                   _tl233130233512_)
                                  (___match242739242740_
                                   _e233127233502_
                                   _hd233126233505_
                                   _tl233125233507_
                                   ___splice242704242705_
                                   _target233128233510_
                                   _tl233130233512_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233125233507_))
                              (let ((_e233215233257_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233125233507_))))
                                (let ((_tl233213233262_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233215233257_)))
                                      (_hd233214233260_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233215233257_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233214233260_))
                                      (let ((_e233218233265_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233214233260_))))
                                        (let ((_tl233216233270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233218233265_)))
                                              (_hd233217233268_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233218233265_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd233217233268_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd233217233268_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233216233270_))
                                                      (let ((_e233221233273_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233216233270_))))
                (let ((_tl233219233278_
                       (let () (declare (not safe)) (##cdr _e233221233273_)))
                      (_hd233220233276_
                       (let () (declare (not safe)) (##car _e233221233273_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233220233276_))
                      (let ((_e233224233281_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233220233276_))))
                        (let ((_tl233222233286_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233224233281_)))
                              (_hd233223233284_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233224233281_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233223233284_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233223233284_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233222233286_))
                                      (let ((_e233227233289_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233222233286_))))
                                        (let ((_tl233225233294_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233227233289_)))
                                              (_hd233226233292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233227233289_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233225233294_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233219233278_))
                                                  (let ((_e233230233297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233219233278_))))
                                                    (let ((_tl233228233302_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233230233297_)))
                                                          (_hd233229233300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233230233297_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233229233300_))
                                                          (let ((_e233233233305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233229233300_))))
                    (let ((_tl233231233310_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233233233305_)))
                          (_hd233232233308_
                           (let ()
                             (declare (not safe))
                             (##car _e233233233305_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233232233308_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233232233308_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233231233310_))
                                  (let ((_e233236233313_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233231233310_))))
                                    (let ((_tl233234233318_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233236233313_)))
                                          (_hd233235233316_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233236233313_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233234233318_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233228233302_))
                                              (let ((_e233239233321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233228233302_))))
                                                (let ((_tl233237233326_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233239233321_)))
                                                      (_hd233238233324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233239233321_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233237233326_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233213233262_))
                                                          (___kont242712242713_
                                                           _hd233235233316_
                                                           _hd233226233292_
                                                           _hd233126233505_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233120233244_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233120233244_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233244_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g233120233244_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233120233244_)))
                              (let () (declare (not safe)) (_g233120233244_)))
                          (let () (declare (not safe)) (_g233120233244_)))))
                  (let () (declare (not safe)) (_g233120233244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233120233244_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233244_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233244_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g233120233244_)))
                              (let ()
                                (declare (not safe))
                                (_g233120233244_)))))
                      (let () (declare (not safe)) (_g233120233244_)))))
              (let () (declare (not safe)) (_g233120233244_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233120233244_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g233120233244_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233120233244_)))))
                              (let ()
                                (declare (not safe))
                                (_g233120233244_))))))
                  (let () (declare (not safe)) (_g233120233244_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form232920_)
        (let* ((_g232922232936_
                (lambda (_g232923232933_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232923232933_))))
               (_g232921233113_
                (lambda (_g232923232939_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232923232939_))
                      (let ((_e232928232941_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232923232939_))))
                        (let ((_hd232927232944_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232928232941_)))
                              (_tl232926232946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232928232941_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232926232946_))
                              (let ((_e232931232949_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232926232946_))))
                                (let ((_hd232930232952_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232931232949_)))
                                      (_tl232929232954_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232931232949_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232929232954_))
                                      ((lambda (_L232957_ _L232958_)
                                         (let* ((___stx242822242823_ _L232958_)
                                                (_g232973233001_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx242822242823_)))))
                                           (let ((___kont242824242825_
                                                  (lambda (_L233092_)
                                                    (length (let ((__tmp243967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g233102233105_ _g233103233107_)
                             (let ()
                               (declare (not safe))
                               (cons _g233102233105_ _g233103233107_)))))
                      (declare (not safe))
                      (foldr1 __tmp243967 '() _L233092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242828242829_
                                                  (lambda (_L233043_ _L233044_)
                                                    (let ((__tmp243968
                                                           (length (let ((__tmp243969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g233055233058_ _g233056233060_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g233055233058_
                                            _g233056233060_)))))
                             (declare (not safe))
                             (foldr1 __tmp243969 '() _L233044_)))))
              (declare (not safe))
              (cons __tmp243968 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242832242833_
                                                  (lambda (_L233006_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match242847242848_
                                                     (lambda (___splice242830242831_
                                                              _target232987233019_
                                                              _tl232989233021_)
                                                       (letrec ((_loop232990233024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232988233027_ _arg232994233029_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232988233027_))
                               (let ((_e232991233032_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232988233027_))))
                                 (let ((_lp-tl232993233037_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232991233032_)))
                                       (_lp-hd232992233035_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232991233032_))))
                                   (let ((__tmp243970
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232992233035_
                                                  _arg232994233029_))))
                                     (declare (not safe))
                                     (_loop232990233024_
                                      _lp-tl232993233037_
                                      __tmp243970))))
                               (let ((_arg232995233040_
                                      (reverse _arg232994233029_)))
                                 (___kont242828242829_
                                  _tl232989233021_
                                  _arg232995233040_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232990233024_ _target232987233019_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242841242842_
                                                     (lambda (___splice242826242827_
                                                              _target232976233068_
                                                              _tl232978233070_)
                                                       (letrec ((_loop232979233073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232977233076_ _arg232983233078_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232977233076_))
                               (let ((_e232980233081_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232977233076_))))
                                 (let ((_lp-tl232982233086_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232980233081_)))
                                       (_lp-hd232981233084_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232980233081_))))
                                   (let ((__tmp243971
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232981233084_
                                                  _arg232983233078_))))
                                     (declare (not safe))
                                     (_loop232979233073_
                                      _lp-tl232982233086_
                                      __tmp243971))))
                               (let ((_arg232984233089_
                                      (reverse _arg232983233078_)))
                                 (___kont242824242825_ _arg232984233089_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232979233073_ _target232976233068_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx242822242823_))
                                                   (let ((___splice242826242827_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx242822242823_
                                                             '0))))
                                                     (let ((_tl232978233070_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242826242827_
                                                               '1)))
                                                           (_target232976233068_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242826242827_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232978233070_))
                                                           (___match242841242842_
                                                            ___splice242826242827_
                                                            _target232976233068_
                                                            _tl232978233070_)
                                                           (___match242847242848_
                                                            ___splice242826242827_
                                                            _target232976233068_
                                                            _tl232978233070_))))
                                                   (___kont242832242833_
                                                    ___stx242822242823_))))))
                                       _hd232930232952_
                                       _hd232927232944_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232922232936_ _g232923232939_)))))
                              (let ()
                                (declare (not safe))
                                (_g232922232936_ _g232923232939_)))))
                      (let ()
                        (declare (not safe))
                        (_g232922232936_ _g232923232939_))))))
          (declare (not safe))
          (_g232921233113_ _form232920_))))
    (define gxc#lambda-expr?
      (lambda (_expr232873_)
        (let* ((___stx242850242851_ _expr232873_)
               (_g232876232886_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242850242851_)))))
          (let ((___kont242852242853_ (lambda (_L232906_) '#t))
                (___kont242854242855_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242850242851_))
                (let ((_e232881232898_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242850242851_))))
                  (let ((_tl232879232903_
                         (let () (declare (not safe)) (##cdr _e232881232898_)))
                        (_hd232880232901_
                         (let ()
                           (declare (not safe))
                           (##car _e232881232898_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232880232901_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd232880232901_))
                            (___kont242852242853_ _tl232879232903_)
                            (___kont242854242855_))
                        (___kont242854242855_))))
                (___kont242854242855_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr232826_)
        (let* ((___stx242868242869_ _expr232826_)
               (_g232829232839_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242868242869_)))))
          (let ((___kont242870242871_ (lambda (_L232859_) '#t))
                (___kont242872242873_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242868242869_))
                (let ((_e232834232851_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242868242869_))))
                  (let ((_tl232832232856_
                         (let () (declare (not safe)) (##cdr _e232834232851_)))
                        (_hd232833232854_
                         (let ()
                           (declare (not safe))
                           (##car _e232834232851_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232833232854_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd232833232854_))
                            (___kont242870242871_ _tl232832232856_)
                            (___kont242872242873_))
                        (___kont242872242873_))))
                (___kont242872242873_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr232695_)
        (let* ((___stx242886242887_ _expr232695_)
               (_g232698232728_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242886242887_)))))
          (let ((___kont242888242889_
                 (lambda (_L232796_ _L232797_ _L232798_)
                   (if (let () (declare (not safe)) (gx#identifier? _L232798_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L232797_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L232796_))
                           '#f)
                       '#f)))
                (___kont242890242891_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242886242887_))
                (let ((_e232705232740_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242886242887_))))
                  (let ((_tl232703232745_
                         (let () (declare (not safe)) (##cdr _e232705232740_)))
                        (_hd232704232743_
                         (let ()
                           (declare (not safe))
                           (##car _e232705232740_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232704232743_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd232704232743_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232703232745_))
                                (let ((_e232708232748_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232703232745_))))
                                  (let ((_tl232706232753_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232708232748_)))
                                        (_hd232707232751_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232708232748_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd232707232751_))
                                        (let ((_e232711232756_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd232707232751_))))
                                          (let ((_tl232709232761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232711232756_)))
                                                (_hd232710232759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232711232756_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232710232759_))
                                                (let ((_e232714232764_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232710232759_))))
                                                  (let ((_tl232712232769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232714232764_)))
                                                        (_hd232713232767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232714232764_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232713232767_))
                                                        (let ((_e232717232772_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232713232767_))))
                  (let ((_tl232715232777_
                         (let () (declare (not safe)) (##cdr _e232717232772_)))
                        (_hd232716232775_
                         (let ()
                           (declare (not safe))
                           (##car _e232717232772_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl232715232777_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232712232769_))
                            (let ((_e232720232780_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232712232769_))))
                              (let ((_tl232718232785_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232720232780_)))
                                    (_hd232719232783_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232720232780_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232718232785_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232709232761_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232706232753_))
                                            (let ((_e232723232788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232706232753_))))
                                              (let ((_tl232721232793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232723232788_)))
                                                    (_hd232722232791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232723232788_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl232721232793_))
                                                    (___kont242888242889_
                                                     _hd232722232791_
                                                     _hd232719232783_
                                                     _hd232716232775_)
                                                    (___kont242890242891_))))
                                            (___kont242890242891_))
                                        (___kont242890242891_))
                                    (___kont242890242891_))))
                            (___kont242890242891_))
                        (___kont242890242891_))))
                (___kont242890242891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242890242891_))))
                                        (___kont242890242891_))))
                                (___kont242890242891_))
                            (___kont242890242891_))
                        (___kont242890242891_))))
                (___kont242890242891_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr232020_)
        (let* ((___stx242948242949_ _expr232020_)
               (_g232023232181_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242948242949_)))))
          (let ((___kont242950242951_
                 (lambda (_L232569_
                          _L232570_
                          _L232571_
                          _L232572_
                          _L232573_
                          _L232574_
                          _L232575_
                          _L232576_
                          _L232577_
                          _L232578_
                          _L232579_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L232576_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L232572_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L232571_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L232579_
                                      _L232570_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L232578_
                                          _L232575_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232573_
                                              _L232569_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232577_
                                              _L232574_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont242952242953_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242948242949_))
                (let ((_e232038232193_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242948242949_))))
                  (let ((_tl232036232198_
                         (let () (declare (not safe)) (##cdr _e232038232193_)))
                        (_hd232037232196_
                         (let ()
                           (declare (not safe))
                           (##car _e232038232193_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232037232196_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd232037232196_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232036232198_))
                                (let ((_e232041232201_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232036232198_))))
                                  (let ((_tl232039232206_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232041232201_)))
                                        (_hd232040232204_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232041232201_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd232040232204_))
                                        (let ((_e232044232209_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd232040232204_))))
                                          (let ((_tl232042232214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232044232209_)))
                                                (_hd232043232212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232044232209_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232043232212_))
                                                (let ((_e232047232217_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232043232212_))))
                                                  (let ((_tl232045232222_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232047232217_)))
                                                        (_hd232046232220_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232047232217_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232046232220_))
                                                        (let ((_e232050232225_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232046232220_))))
                  (let ((_tl232048232230_
                         (let () (declare (not safe)) (##cdr _e232050232225_)))
                        (_hd232049232228_
                         (let ()
                           (declare (not safe))
                           (##car _e232050232225_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl232048232230_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232045232222_))
                            (let ((_e232053232233_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232045232222_))))
                              (let ((_tl232051232238_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232053232233_)))
                                    (_hd232052232236_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232053232233_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232052232236_))
                                    (let ((_e232056232241_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232052232236_))))
                                      (let ((_tl232054232246_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232056232241_)))
                                            (_hd232055232244_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232056232241_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232055232244_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd232055232244_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232054232246_))
                                                    (let ((_e232059232249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232054232246_))))
                                                      (let ((_tl232057232254_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232059232249_)))
                    (_hd232058232252_
                     (let () (declare (not safe)) (##car _e232059232249_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd232058232252_))
                    (let ((_e232062232257_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd232058232252_))))
                      (let ((_tl232060232262_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232062232257_)))
                            (_hd232061232260_
                             (let ()
                               (declare (not safe))
                               (##car _e232062232257_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd232061232260_))
                            (let ((_e232065232265_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd232061232260_))))
                              (let ((_tl232063232270_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232065232265_)))
                                    (_hd232064232268_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232065232265_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232064232268_))
                                    (let ((_e232068232273_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232064232268_))))
                                      (let ((_tl232066232278_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232068232273_)))
                                            (_hd232067232276_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232068232273_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232066232278_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232063232270_))
                                                (let ((_e232071232281_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232063232270_))))
                                                  (let ((_tl232069232286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232071232281_)))
                                                        (_hd232070232284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232071232281_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232069232286_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl232060232262_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl232057232254_))
                        (let ((_e232074232289_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232057232254_))))
                          (let ((_tl232072232294_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232074232289_)))
                                (_hd232073232292_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232074232289_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232073232292_))
                                (let ((_e232077232297_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232073232292_))))
                                  (let ((_tl232075232302_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232077232297_)))
                                        (_hd232076232300_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232077232297_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232076232300_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd232076232300_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232075232302_))
                                                (let ((_e232080232305_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232075232302_))))
                                                  (let ((_tl232078232310_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232080232305_)))
                                                        (_hd232079232308_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232080232305_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232079232308_))
                                                        (let ((_e232083232313_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232079232308_))))
                  (let ((_tl232081232318_
                         (let () (declare (not safe)) (##cdr _e232083232313_)))
                        (_hd232082232316_
                         (let ()
                           (declare (not safe))
                           (##car _e232083232313_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232078232310_))
                        (let ((_e232086232321_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232078232310_))))
                          (let ((_tl232084232326_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232086232321_)))
                                (_hd232085232324_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232086232321_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232085232324_))
                                (let ((_e232089232329_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232085232324_))))
                                  (let ((_tl232087232334_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232089232329_)))
                                        (_hd232088232332_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232089232329_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232088232332_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd232088232332_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232087232334_))
                                                (let ((_e232092232337_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232087232334_))))
                                                  (let ((_tl232090232342_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232092232337_)))
                                                        (_hd232091232340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232092232337_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232091232340_))
                                                        (let ((_e232095232345_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232091232340_))))
                  (let ((_tl232093232350_
                         (let () (declare (not safe)) (##cdr _e232095232345_)))
                        (_hd232094232348_
                         (let ()
                           (declare (not safe))
                           (##car _e232095232345_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232094232348_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd232094232348_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232093232350_))
                                (let ((_e232098232353_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232093232350_))))
                                  (let ((_tl232096232358_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232098232353_)))
                                        (_hd232097232356_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232098232353_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232096232358_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232090232342_))
                                            (let ((_e232101232361_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232090232342_))))
                                              (let ((_tl232099232366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232101232361_)))
                                                    (_hd232100232364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232101232361_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232100232364_))
                                                    (let ((_e232104232369_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232100232364_))))
                                                      (let ((_tl232102232374_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232104232369_)))
                    (_hd232103232372_
                     (let () (declare (not safe)) (##car _e232104232369_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232103232372_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd232103232372_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232102232374_))
                            (let ((_e232107232377_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232102232374_))))
                              (let ((_tl232105232382_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232107232377_)))
                                    (_hd232106232380_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232107232377_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232105232382_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl232099232366_))
                                        (let ((_e232110232385_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl232099232366_))))
                                          (let ((_tl232108232390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232110232385_)))
                                                (_hd232109232388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232110232385_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232109232388_))
                                                (let ((_e232113232393_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232109232388_))))
                                                  (let ((_tl232111232398_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232113232393_)))
                                                        (_hd232112232396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232113232393_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd232112232396_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd232112232396_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl232111232398_))
                        (let ((_e232116232401_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232111232398_))))
                          (let ((_tl232114232406_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232116232401_)))
                                (_hd232115232404_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232116232401_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl232114232406_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232084232326_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232072232294_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232051232238_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232042232214_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232039232206_))
                                                    (let ((_e232119232409_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232039232206_))))
                                                      (let ((_tl232117232414_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232119232409_)))
                    (_hd232118232412_
                     (let () (declare (not safe)) (##car _e232119232409_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd232118232412_))
                    (let ((_e232122232417_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd232118232412_))))
                      (let ((_tl232120232422_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232122232417_)))
                            (_hd232121232420_
                             (let ()
                               (declare (not safe))
                               (##car _e232122232417_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd232121232420_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd232121232420_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl232120232422_))
                                    (let ((_e232125232425_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl232120232422_))))
                                      (let ((_tl232123232430_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232125232425_)))
                                            (_hd232124232428_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232125232425_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232123232430_))
                                            (let ((_e232128232433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232123232430_))))
                                              (let ((_tl232126232438_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232128232433_)))
                                                    (_hd232127232436_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232128232433_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232127232436_))
                                                    (let ((_e232131232441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232127232436_))))
                                                      (let ((_tl232129232446_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232131232441_)))
                    (_hd232130232444_
                     (let () (declare (not safe)) (##car _e232131232441_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232130232444_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232130232444_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232129232446_))
                            (let ((_e232134232449_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232129232446_))))
                              (let ((_tl232132232454_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232134232449_)))
                                    (_hd232133232452_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232134232449_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232133232452_))
                                    (let ((_e232137232457_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232133232452_))))
                                      (let ((_tl232135232462_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232137232457_)))
                                            (_hd232136232460_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232137232457_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232136232460_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232136232460_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232135232462_))
                                                    (let ((_e232140232465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232135232462_))))
                                                      (let ((_tl232138232470_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232140232465_)))
                    (_hd232139232468_
                     (let () (declare (not safe)) (##car _e232140232465_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232138232470_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232132232454_))
                        (let ((_e232143232473_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232132232454_))))
                          (let ((_tl232141232478_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232143232473_)))
                                (_hd232142232476_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232143232473_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232142232476_))
                                (let ((_e232146232481_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232142232476_))))
                                  (let ((_tl232144232486_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232146232481_)))
                                        (_hd232145232484_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232146232481_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232145232484_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd232145232484_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232144232486_))
                                                (let ((_e232149232489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232144232486_))))
                                                  (let ((_tl232147232494_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232149232489_)))
                                                        (_hd232148232492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232149232489_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232147232494_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl232141232478_))
                                                            (let ((_e232152232497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl232141232478_))))
                      (let ((_tl232150232502_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232152232497_)))
                            (_hd232151232500_
                             (let ()
                               (declare (not safe))
                               (##car _e232152232497_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd232151232500_))
                            (let ((_e232155232505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd232151232500_))))
                              (let ((_tl232153232510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232155232505_)))
                                    (_hd232154232508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232155232505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd232154232508_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd232154232508_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232153232510_))
                                            (let ((_e232158232513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232153232510_))))
                                              (let ((_tl232156232518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232158232513_)))
                                                    (_hd232157232516_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232158232513_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl232156232518_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl232150232502_))
                                                        (let ((_e232161232521_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl232150232502_))))
                  (let ((_tl232159232526_
                         (let () (declare (not safe)) (##cdr _e232161232521_)))
                        (_hd232160232524_
                         (let ()
                           (declare (not safe))
                           (##car _e232161232521_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd232160232524_))
                        (let ((_e232164232529_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd232160232524_))))
                          (let ((_tl232162232534_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232164232529_)))
                                (_hd232163232532_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232164232529_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd232163232532_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd232163232532_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl232162232534_))
                                        (let ((_e232167232537_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl232162232534_))))
                                          (let ((_tl232165232542_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232167232537_)))
                                                (_hd232166232540_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232167232537_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232165232542_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232159232526_))
                                                    (let ((_e232170232545_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232159232526_))))
                                                      (let ((_tl232168232550_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232170232545_)))
                    (_hd232169232548_
                     (let () (declare (not safe)) (##car _e232170232545_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd232169232548_))
                    (let ((_e232173232553_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd232169232548_))))
                      (let ((_tl232171232558_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232173232553_)))
                            (_hd232172232556_
                             (let ()
                               (declare (not safe))
                               (##car _e232173232553_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd232172232556_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd232172232556_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl232171232558_))
                                    (let ((_e232176232561_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl232171232558_))))
                                      (let ((_tl232174232566_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232176232561_)))
                                            (_hd232175232564_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232176232561_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232174232566_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232168232550_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl232126232438_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232117232414_))
                                                        (___kont242950242951_
                                                         _hd232175232564_
                                                         _hd232166232540_
                                                         _hd232148232492_
                                                         _hd232139232468_
                                                         _hd232124232428_
                                                         _hd232115232404_
                                                         _hd232106232380_
                                                         _hd232097232356_
                                                         _hd232082232316_
                                                         _hd232067232276_
                                                         _hd232049232228_)
                                                        (___kont242952242953_))
                                                    (___kont242952242953_))
                                                (___kont242952242953_))
                                            (___kont242952242953_))))
                                    (___kont242952242953_))
                                (___kont242952242953_))
                            (___kont242952242953_))))
                    (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242952242953_))
                                                (___kont242952242953_))))
                                        (___kont242952242953_))
                                    (___kont242952242953_))
                                (___kont242952242953_))))
                        (___kont242952242953_))))
                (___kont242952242953_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242952242953_))))
                                            (___kont242952242953_))
                                        (___kont242952242953_))
                                    (___kont242952242953_))))
                            (___kont242952242953_))))
                    (___kont242952242953_))
                (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242952242953_))
                                            (___kont242952242953_))
                                        (___kont242952242953_))))
                                (___kont242952242953_))))
                        (___kont242952242953_))
                    (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242952242953_))
                                                (___kont242952242953_))
                                            (___kont242952242953_))))
                                    (___kont242952242953_))))
                            (___kont242952242953_))
                        (___kont242952242953_))
                    (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242952242953_))))
                                            (___kont242952242953_))))
                                    (___kont242952242953_))
                                (___kont242952242953_))
                            (___kont242952242953_))))
                    (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242952242953_))
                                                (___kont242952242953_))
                                            (___kont242952242953_))
                                        (___kont242952242953_))
                                    (___kont242952242953_))
                                (___kont242952242953_))))
                        (___kont242952242953_))
                    (___kont242952242953_))
                (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242952242953_))))
                                        (___kont242952242953_))
                                    (___kont242952242953_))))
                            (___kont242952242953_))
                        (___kont242952242953_))
                    (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242952242953_))))
                                            (___kont242952242953_))
                                        (___kont242952242953_))))
                                (___kont242952242953_))
                            (___kont242952242953_))
                        (___kont242952242953_))))
                (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242952242953_))
                                            (___kont242952242953_))
                                        (___kont242952242953_))))
                                (___kont242952242953_))))
                        (___kont242952242953_))))
                (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242952242953_))
                                            (___kont242952242953_))
                                        (___kont242952242953_))))
                                (___kont242952242953_))))
                        (___kont242952242953_))
                    (___kont242952242953_))
                (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242952242953_))
                                            (___kont242952242953_))))
                                    (___kont242952242953_))))
                            (___kont242952242953_))))
                    (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242952242953_))
                                                (___kont242952242953_))
                                            (___kont242952242953_))))
                                    (___kont242952242953_))))
                            (___kont242952242953_))
                        (___kont242952242953_))))
                (___kont242952242953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242952242953_))))
                                        (___kont242952242953_))))
                                (___kont242952242953_))
                            (___kont242952242953_))
                        (___kont242952242953_))))
                (___kont242952242953_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx231762_ _id231763_ _clauses231764_ _gensym?231765_)
        (let _lp231767_ ((_rest231769_ _clauses231764_)
                         (_ids231770_ '())
                         (_impls231771_ '())
                         (_clauses231772_ '()))
          (let* ((_rest231773231781_ _rest231769_)
                 (_else231775231789_
                  (lambda ()
                    (values (reverse _ids231770_)
                            (reverse _impls231771_)
                            (reverse _clauses231772_))))
                 (_K231777231994_
                  (lambda (_rest231792_ _clause231793_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause231793_))
                        (let ((__tmp244027
                               (let ()
                                 (declare (not safe))
                                 (cons _clause231793_ _clauses231772_))))
                          (declare (not safe))
                          (_lp231767_
                           _rest231792_
                           _ids231770_
                           _impls231771_
                           __tmp244027))
                        (let* ((_g231795231806_
                                (lambda (_g231796231803_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g231796231803_))))
                               (_g231794231991_
                                (lambda (_g231796231809_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g231796231809_))
                                      (let ((_e231801231811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g231796231809_))))
                                        (let ((_hd231800231814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231801231811_)))
                                              (_tl231799231816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231801231811_))))
                                          ((lambda (_L231819_ _L231820_)
                                             (let* ((_id231837_
                                                     (let ((__tmp243974
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id231763_)))
                                                           (__tmp243973
                                                            (length _clauses231772_))
                                                           (__tmp243972
                                                            (if _gensym?231765_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp243974
                                                        '"__"
                                                        __tmp243973
                                                        __tmp243972)))
                                                    (_id231839_
                                                     (let ((__tmp243975
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx231762_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id231837_
                                                        __tmp243975)))
                                                    (_impl231841_
                                                     (let ((__tmp243976
                                                            (let ((__tmp243978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp243977
                           (let ()
                             (declare (not safe))
                             (cons _L231820_ _L231819_))))
                      (declare (not safe))
                      (cons __tmp243978 __tmp243977))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp243976 _stx231762_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause231988_
                                                     (let* ((___stx243332243333_
                                                             _L231820_)
                                                            (_g231845231873_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx243332243333_)))))
               (let ((___kont243334243335_
                      (lambda (_L231967_)
                        (let ((__tmp243979
                               (let ((__tmp243980
                                      (let ((__tmp243981
                                             (let ((__tmp243982
                                                    (let ((__tmp243988
                                                           (let ((__tmp243989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id231839_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243989)))
                  (__tmp243983
                   (let ((__tmp243984
                          (lambda (_g231977231980_ _g231978231982_)
                            (let ((__tmp243985
                                   (let ((__tmp243987
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp243986
                                          (let ()
                                            (declare (not safe))
                                            (cons _g231977231980_ '()))))
                                     (declare (not safe))
                                     (cons __tmp243987 __tmp243986))))
                              (declare (not safe))
                              (cons __tmp243985 _g231978231982_)))))
                     (declare (not safe))
                     (foldr1 __tmp243984 '() _L231967_))))
              (declare (not safe))
              (cons __tmp243988 __tmp243983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243982))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243981
                                         _stx231762_))))
                                 (declare (not safe))
                                 (cons __tmp243980 '()))))
                          (declare (not safe))
                          (cons _L231820_ __tmp243979))))
                     (___kont243338243339_
                      (lambda (_L231918_ _L231919_)
                        (let ((__tmp243990
                               (let ((__tmp243991
                                      (let ((__tmp243992
                                             (let ((__tmp243993
                                                    (let ((__tmp244007
                                                           (let ((__tmp244008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp244008)))
                  (__tmp243994
                   (let ((__tmp244005
                          (let ((__tmp244006
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231839_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp244006)))
                         (__tmp243995
                          (let ((__tmp244001
                                 (let ((__tmp244002
                                        (let ((__tmp244004
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp244003
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L231918_ '()))))
                                          (declare (not safe))
                                          (cons __tmp244004 __tmp244003))))
                                   (declare (not safe))
                                   (cons __tmp244002 '())))
                                (__tmp243996
                                 (let ((__tmp243997
                                        (lambda (_g231930231933_
                                                 _g231931231935_)
                                          (let ((__tmp243998
                                                 (let ((__tmp244000
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp243999
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g231930231933_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp244000
                                                         __tmp243999))))
                                            (declare (not safe))
                                            (cons __tmp243998
                                                  _g231931231935_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp243997 '() _L231919_))))
                            (declare (not safe))
                            (foldr1 cons __tmp244001 __tmp243996))))
                     (declare (not safe))
                     (cons __tmp244005 __tmp243995))))
              (declare (not safe))
              (cons __tmp244007 __tmp243994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243993))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243992
                                         _stx231762_))))
                                 (declare (not safe))
                                 (cons __tmp243991 '()))))
                          (declare (not safe))
                          (cons _L231820_ __tmp243990))))
                     (___kont243342243343_
                      (lambda (_L231878_)
                        (let ((__tmp244009
                               (let ((__tmp244010
                                      (let ((__tmp244011
                                             (let ((__tmp244012
                                                    (let ((__tmp244020
                                                           (let ((__tmp244021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp244021)))
                  (__tmp244013
                   (let ((__tmp244018
                          (let ((__tmp244019
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231839_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp244019)))
                         (__tmp244014
                          (let ((__tmp244015
                                 (let ((__tmp244017
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp244016
                                        (let ()
                                          (declare (not safe))
                                          (cons _L231878_ '()))))
                                   (declare (not safe))
                                   (cons __tmp244017 __tmp244016))))
                            (declare (not safe))
                            (cons __tmp244015 '()))))
                     (declare (not safe))
                     (cons __tmp244018 __tmp244014))))
              (declare (not safe))
              (cons __tmp244020 __tmp244013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp244012))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp244011
                                         _stx231762_))))
                                 (declare (not safe))
                                 (cons __tmp244010 '()))))
                          (declare (not safe))
                          (cons _L231820_ __tmp244009)))))
                 (let* ((___match243357243358_
                         (lambda (___splice243340243341_
                                  _target231859231894_
                                  _tl231861231896_)
                           (letrec ((_loop231862231899_
                                     (lambda (_hd231860231902_
                                              _arg231866231904_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231860231902_))
                                           (let ((_e231863231907_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231860231902_))))
                                             (let ((_lp-tl231865231912_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231863231907_)))
                                                   (_lp-hd231864231910_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231863231907_))))
                                               (let ((__tmp244022
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231864231910_
                                                              _arg231866231904_))))
                                                 (declare (not safe))
                                                 (_loop231862231899_
                                                  _lp-tl231865231912_
                                                  __tmp244022))))
                                           (let ((_arg231867231915_
                                                  (reverse _arg231866231904_)))
                                             (___kont243338243339_
                                              _tl231861231896_
                                              _arg231867231915_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231862231899_
                                _target231859231894_
                                '())))))
                        (___match243351243352_
                         (lambda (___splice243336243337_
                                  _target231848231943_
                                  _tl231850231945_)
                           (letrec ((_loop231851231948_
                                     (lambda (_hd231849231951_
                                              _arg231855231953_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231849231951_))
                                           (let ((_e231852231956_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231849231951_))))
                                             (let ((_lp-tl231854231961_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231852231956_)))
                                                   (_lp-hd231853231959_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231852231956_))))
                                               (let ((__tmp244023
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231853231959_
                                                              _arg231855231953_))))
                                                 (declare (not safe))
                                                 (_loop231851231948_
                                                  _lp-tl231854231961_
                                                  __tmp244023))))
                                           (let ((_arg231856231964_
                                                  (reverse _arg231855231953_)))
                                             (___kont243334243335_
                                              _arg231856231964_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231851231948_
                                _target231848231943_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx243332243333_))
                       (let ((___splice243336243337_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx243332243333_
                                 '0))))
                         (let ((_tl231850231945_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243336243337_ '1)))
                               (_target231848231943_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243336243337_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231850231945_))
                               (___match243351243352_
                                ___splice243336243337_
                                _target231848231943_
                                _tl231850231945_)
                               (___match243357243358_
                                ___splice243336243337_
                                _target231848231943_
                                _tl231850231945_))))
                       (___kont243342243343_ ___stx243332243333_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp244026
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id231839_
                                                              _ids231770_)))
                                                     (__tmp244025
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl231841_
                                                              _impls231771_)))
                                                     (__tmp244024
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause231988_
                                                              _clauses231772_))))
                                                 (declare (not safe))
                                                 (_lp231767_
                                                  _rest231792_
                                                  __tmp244026
                                                  __tmp244025
                                                  __tmp244024))))
                                           _tl231799231816_
                                           _hd231800231814_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g231795231806_ _g231796231809_))))))
                          (declare (not safe))
                          (_g231794231991_ _clause231793_))))))
            (if (let () (declare (not safe)) (##pair? _rest231773231781_))
                (let ((_hd231778231997_
                       (let ()
                         (declare (not safe))
                         (##car _rest231773231781_)))
                      (_tl231779231999_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest231773231781_))))
                  (let* ((_clause232002_ _hd231778231997_)
                         (_rest232004_ _tl231779231999_))
                    (declare (not safe))
                    (_K231777231994_ _rest232004_ _clause232002_)))
                (let () (declare (not safe)) (_else231775231789_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx232009_ _id232010_ _clauses232011_)
        (let ((_gensym?232013_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx232009_
           _id232010_
           _clauses232011_
           _gensym?232013_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g244029_
        (let ((_g244028_ (let () (declare (not safe)) (##length _g244029_))))
          (cond ((let () (declare (not safe)) (##fx= _g244028_ 3))
                 (apply (lambda (_stx232009_ _id232010_ _clauses232011_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx232009_
                             _id232010_
                             _clauses232011_)))
                        _g244029_))
                ((let () (declare (not safe)) (##fx= _g244028_ 4))
                 (apply (lambda (_stx232015_
                                 _id232016_
                                 _clauses232017_
                                 _gensym?232018_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx232015_
                             _id232016_
                             _clauses232017_
                             _gensym?232018_)))
                        _g244029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g244029_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx231039_)
        (letrec ((_case-lambda-clause-def231041_
                  (lambda (_id231758_ _impl231759_)
                    (let ((__tmp244030
                           (let ((__tmp244031
                                  (let ((__tmp244034
                                         (let ()
                                           (declare (not safe))
                                           (cons _id231758_ '())))
                                        (__tmp244032
                                         (let ((__tmp244033
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl231759_))))
                                           (declare (not safe))
                                           (cons __tmp244033 '()))))
                                    (declare (not safe))
                                    (cons __tmp244034 __tmp244032))))
                             (declare (not safe))
                             (cons '%#define-values __tmp244031))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244030 _stx231039_))))
                 (_opt-lambda-dispatch-name231042_
                  (lambda (_id231754_)
                    (if (uninterned-symbol? _id231754_)
                        (let ((_str231756_ (symbol->string _id231754_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str231756_))
                              '"%"
                              _id231754_))
                        _id231754_)))
                 (_kw-lambda-dispatch-name231043_
                  (lambda (_id231749_ _name231750_)
                    (if (uninterned-symbol? _id231749_)
                        (let ((_str231752_ (symbol->string _id231749_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str231752_))
                              _name231750_
                              _id231749_))
                        _id231749_))))
          (let* ((___stx243380243381_ _stx231039_)
                 (_g231048231107_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243380243381_)))))
            (let ((___kont243382243383_
                   (lambda (_L231658_ _L231659_)
                     (let* ((___stx243360243361_ _L231658_)
                            (_g231676231690_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243360243361_)))))
                       (let ((___kont243362243363_
                              (lambda (_L231734_) _stx231039_))
                             (___kont243364243365_
                              (lambda (_L231703_)
                                (let ((_g244035_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx231039_
                                          _L231659_
                                          _L231703_))))
                                  (begin
                                    (let ((_g244036_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g244035_)
                                                 (##vector-length _g244035_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g244036_ 3)))
                                          (error "Context expects 3 values"
                                                 _g244036_)))
                                    (let ((_ids231713_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g244035_ 0)))
                                          (_impls231714_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g244035_ 1)))
                                          (_clauses231715_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g244035_ 2))))
                                      (let* ((_g244037_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids231713_))
                                             (_defs231718_
                                              (map _case-lambda-clause-def231041_
                                                   _ids231713_
                                                   _impls231714_)))
                                        (let ((__tmp244039
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L231659_)))
                                              (__tmp244038
                                               (map gxc#identifier-symbol
                                                    _ids231713_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp244039
                                           '" => "
                                           __tmp244038))
                                        (let ((__tmp244040
                                               (let ((__tmp244041
                                                      (let ((__tmp244042
                                                             (let ((__tmp244043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp244044
                                   (let ((__tmp244045
                                          (let ((__tmp244050
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L231659_ '())))
                                                (__tmp244046
                                                 (let ((__tmp244047
                                                        (let ((__tmp244049
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses231715_)))
                      (__tmp244048
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp244049 __tmp244048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp244047 '()))))
                                            (declare (not safe))
                                            (cons __tmp244050 __tmp244046))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp244045))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp244044
                               _stx231039_))))
                       (declare (not safe))
                       (cons __tmp244043 '()))))
                (declare (not safe))
                (foldr1 cons __tmp244042 _defs231718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp244041))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp244040
                                           _stx231039_)))))))))
                         (let ((___match243371243372_
                                (lambda (_e231681231726_
                                         _hd231680231729_
                                         _tl231679231731_)
                                  (let ((_L231734_ _tl231679231731_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L231734_))
                                        (___kont243362243363_ _L231734_)
                                        (___kont243364243365_
                                         _tl231679231731_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx243360243361_))
                               (let ((_e231681231726_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx243360243361_))))
                                 (let ((_tl231679231731_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231681231726_)))
                                       (_hd231680231729_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231681231726_))))
                                   (___match243371243372_
                                    _e231681231726_
                                    _hd231680231729_
                                    _tl231679231731_)))
                               (let ()
                                 (declare (not safe))
                                 (_g231676231690_))))))))
                  (___kont243384243385_
                   (lambda (_L231476_ _L231477_)
                     (let* ((_g231493231523_
                             (lambda (_g231494231520_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g231494231520_))))
                            (_g231492231618_
                             (lambda (_g231494231526_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g231494231526_))
                                   (let ((_e231500231528_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g231494231526_))))
                                     (let ((_hd231499231531_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e231500231528_)))
                                           (_tl231498231533_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e231500231528_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl231498231533_))
                                           (let ((_e231503231536_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl231498231533_))))
                                             (let ((_hd231502231539_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231503231536_)))
                                                   (_tl231501231541_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231503231536_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231502231539_))
                                                   (let ((_e231506231544_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231502231539_))))
                                                     (let ((_hd231505231547_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231506231544_)))
                                                           (_tl231504231549_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231506231544_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd231505231547_))
                                                           (let ((_e231509231552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd231505231547_))))
                     (let ((_hd231508231555_
                            (let ()
                              (declare (not safe))
                              (##car _e231509231552_)))
                           (_tl231507231557_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231509231552_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd231508231555_))
                           (let ((_e231512231560_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd231508231555_))))
                             (let ((_hd231511231563_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231512231560_)))
                                   (_tl231510231565_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231512231560_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231510231565_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl231507231557_))
                                       (let ((_e231515231568_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl231507231557_))))
                                         (let ((_hd231514231571_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231515231568_)))
                                               (_tl231513231573_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231515231568_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231513231573_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl231504231549_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231501231541_))
                                                       (let ((_e231518231576_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231501231541_))))
                 (let ((_hd231517231579_
                        (let () (declare (not safe)) (##car _e231518231576_)))
                       (_tl231516231581_
                        (let () (declare (not safe)) (##cdr _e231518231576_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231516231581_))
                       ((lambda (_L231584_ _L231585_ _L231586_)
                          (let* ((_lambda-id231610_
                                  (let ((__tmp244053
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L231477_)))
                                        (__tmp244051
                                         (let ((__tmp244052
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L231586_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name231042_
                                            __tmp244052))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp244053
                                     '"__"
                                     __tmp244051)))
                                 (_lambda-id231612_
                                  (let ((__tmp244054
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx231039_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id231610_
                                     __tmp244054)))
                                 (_g244055_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id231612_)))
                                 (_new-case-lambda-expr231615_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L231584_
                                     _L231586_
                                     _lambda-id231612_))))
                            (let ((__tmp244057
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L231477_)))
                                  (__tmp244056
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id231612_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp244057
                               '" => "
                               __tmp244056))
                            (let ((__tmp244058
                                   (let ((__tmp244059
                                          (let ((__tmp244067
                                                 (let ((__tmp244068
                                                        (let ((__tmp244069
                                                               (let ((__tmp244072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id231612_ '())))
                             (__tmp244070
                              (let ((__tmp244071
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L231585_))))
                                (declare (not safe))
                                (cons __tmp244071 '()))))
                         (declare (not safe))
                         (cons __tmp244072 __tmp244070))))
                  (declare (not safe))
                  (cons '%#define-values __tmp244069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp244068
                                                    _stx231039_)))
                                                (__tmp244060
                                                 (let ((__tmp244061
                                                        (let ((__tmp244062
                                                               (let ((__tmp244063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp244064
                                     (let ((__tmp244066
                                            (let ()
                                              (declare (not safe))
                                              (cons _L231477_ '())))
                                           (__tmp244065
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr231615_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp244066 __tmp244065))))
                                (declare (not safe))
                                (cons '%#define-values __tmp244064))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244063 _stx231039_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp244062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp244061 '()))))
                                            (declare (not safe))
                                            (cons __tmp244067 __tmp244060))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp244059))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp244058
                               _stx231039_))))
                        _hd231517231579_
                        _hd231514231571_
                        _hd231511231563_)
                       (let ()
                         (declare (not safe))
                         (_g231493231523_ _g231494231526_)))))
               (let () (declare (not safe)) (_g231493231523_ _g231494231526_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231493231523_
                                                      _g231494231526_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231493231523_
                                                  _g231494231526_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g231493231523_ _g231494231526_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g231493231523_ _g231494231526_)))))
                           (let ()
                             (declare (not safe))
                             (_g231493231523_ _g231494231526_)))))
                   (let ()
                     (declare (not safe))
                     (_g231493231523_ _g231494231526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231493231523_
                                                      _g231494231526_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g231493231523_
                                              _g231494231526_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g231493231523_ _g231494231526_))))))
                       (declare (not safe))
                       (_g231492231618_ _L231476_))))
                  (___kont243386243387_
                   (lambda (_L231190_ _L231191_)
                     (let* ((_g231207231260_
                             (lambda (_g231208231257_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g231208231257_))))
                            (_g231206231436_
                             (lambda (_g231208231263_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g231208231263_))
                                   (let ((_e231216231265_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g231208231263_))))
                                     (let ((_hd231215231268_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e231216231265_)))
                                           (_tl231214231270_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e231216231265_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl231214231270_))
                                           (let ((_e231219231273_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl231214231270_))))
                                             (let ((_hd231218231276_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231219231273_)))
                                                   (_tl231217231278_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231219231273_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231218231276_))
                                                   (let ((_e231222231281_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231218231276_))))
                                                     (let ((_hd231221231284_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231222231281_)))
                                                           (_tl231220231286_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231222231281_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd231221231284_))
                                                           (let ((_e231225231289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd231221231284_))))
                     (let ((_hd231224231292_
                            (let ()
                              (declare (not safe))
                              (##car _e231225231289_)))
                           (_tl231223231294_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231225231289_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd231224231292_))
                           (let ((_e231228231297_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd231224231292_))))
                             (let ((_hd231227231300_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231228231297_)))
                                   (_tl231226231302_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231228231297_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231226231302_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl231223231294_))
                                       (let ((_e231231231305_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl231223231294_))))
                                         (let ((_hd231230231308_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231231231305_)))
                                               (_tl231229231310_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231231231305_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd231230231308_))
                                               (let ((_e231234231313_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd231230231308_))))
                                                 (let ((_hd231233231316_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231234231313_)))
                                                       (_tl231232231318_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231234231313_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231232231318_))
                                                       (let ((_e231237231321_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231232231318_))))
                 (let ((_hd231236231324_
                        (let () (declare (not safe)) (##car _e231237231321_)))
                       (_tl231235231326_
                        (let () (declare (not safe)) (##cdr _e231237231321_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd231236231324_))
                       (let ((_e231240231329_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd231236231324_))))
                         (let ((_hd231239231332_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231240231329_)))
                               (_tl231238231334_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231240231329_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd231239231332_))
                               (let ((_e231243231337_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd231239231332_))))
                                 (let ((_hd231242231340_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231243231337_)))
                                       (_tl231241231342_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231243231337_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231242231340_))
                                       (let ((_e231246231345_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231242231340_))))
                                         (let ((_hd231245231348_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231246231345_)))
                                               (_tl231244231350_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231246231345_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231244231350_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl231241231342_))
                                                   (let ((_e231249231353_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl231241231342_))))
                                                     (let ((_hd231248231356_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231249231353_)))
                                                           (_tl231247231358_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231249231353_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231247231358_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl231238231334_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl231235231326_))
                           (let ((_e231252231361_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl231235231326_))))
                             (let ((_hd231251231364_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231252231361_)))
                                   (_tl231250231366_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231252231361_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231250231366_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl231229231310_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl231220231286_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl231217231278_))
                                               (let ((_e231255231369_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl231217231278_))))
                                                 (let ((_hd231254231372_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231255231369_)))
                                                       (_tl231253231374_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231255231369_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl231253231374_))
                                                       ((lambda (_L231377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L231378_
                         _L231379_
                         _L231380_
                         _L231381_)
                  (let* ((_get-kws-id231421_
                          (let ((__tmp244075
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L231191_)))
                                (__tmp244073
                                 (let ((__tmp244074
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231381_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name231043_
                                    __tmp244074
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244075 '"__" __tmp244073)))
                         (_get-kws-id231423_
                          (let ((__tmp244076
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx231039_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id231421_
                             __tmp244076)))
                         (_main-id231425_
                          (let ((__tmp244079
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L231191_)))
                                (__tmp244077
                                 (let ((__tmp244078
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231380_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name231043_
                                    __tmp244078
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244079 '"__" __tmp244077)))
                         (_main-id231427_
                          (let ((__tmp244080
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx231039_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id231425_
                             __tmp244080)))
                         (_g244081_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id231423_)))
                         (_g244082_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id231427_)))
                         (_new-kw-dispatch231431_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231377_
                             _L231381_
                             _get-kws-id231423_)))
                         (_new-get-kws231433_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231378_
                             _L231380_
                             _main-id231427_))))
                    (let ((__tmp244085
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L231191_)))
                          (__tmp244084
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id231423_)))
                          (__tmp244083
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id231427_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp244085
                       '" => "
                       __tmp244084
                       '" => "
                       __tmp244083))
                    (let ((__tmp244086
                           (let ((__tmp244087
                                  (let ((__tmp244100
                                         (let ((__tmp244101
                                                (let ((__tmp244102
                                                       (let ((__tmp244103
                                                              (let ((__tmp244105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id231427_ '())))
                            (__tmp244104
                             (let ()
                               (declare (not safe))
                               (cons _L231379_ '()))))
                        (declare (not safe))
                        (cons __tmp244105 __tmp244104))))
                 (declare (not safe))
                 (cons '%#define-values __tmp244103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244102
                                                   _stx231039_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp244101)))
                                        (__tmp244088
                                         (let ((__tmp244095
                                                (let ((__tmp244096
                                                       (let ((__tmp244097
                                                              (let ((__tmp244099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id231423_ '())))
                            (__tmp244098
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws231433_ '()))))
                        (declare (not safe))
                        (cons __tmp244099 __tmp244098))))
                 (declare (not safe))
                 (cons '%#define-values __tmp244097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244096
                                                   _stx231039_)))
                                               (__tmp244089
                                                (let ((__tmp244090
                                                       (let ((__tmp244091
                                                              (let ((__tmp244092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244094
                                    (let ()
                                      (declare (not safe))
                                      (cons _L231191_ '())))
                                   (__tmp244093
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch231431_ '()))))
                               (declare (not safe))
                               (cons __tmp244094 __tmp244093))))
                        (declare (not safe))
                        (cons '%#define-values __tmp244092))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp244091 _stx231039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244090 '()))))
                                           (declare (not safe))
                                           (cons __tmp244095 __tmp244089))))
                                    (declare (not safe))
                                    (cons __tmp244100 __tmp244088))))
                             (declare (not safe))
                             (cons '%#begin __tmp244087))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244086 _stx231039_))))
                _hd231254231372_
                _hd231251231364_
                _hd231248231356_
                _hd231245231348_
                _hd231227231300_)
               (let ()
                 (declare (not safe))
                 (_g231207231260_ _g231208231263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231207231260_
                                                  _g231208231263_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g231207231260_
                                              _g231208231263_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g231207231260_ _g231208231263_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g231207231260_ _g231208231263_)))))
                           (let ()
                             (declare (not safe))
                             (_g231207231260_ _g231208231263_)))
                       (let ()
                         (declare (not safe))
                         (_g231207231260_ _g231208231263_)))
                   (let ()
                     (declare (not safe))
                     (_g231207231260_ _g231208231263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231207231260_
                                                      _g231208231263_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231207231260_
                                                  _g231208231263_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g231207231260_ _g231208231263_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g231207231260_ _g231208231263_)))))
                       (let ()
                         (declare (not safe))
                         (_g231207231260_ _g231208231263_)))))
               (let ()
                 (declare (not safe))
                 (_g231207231260_ _g231208231263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231207231260_
                                                  _g231208231263_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g231207231260_ _g231208231263_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g231207231260_ _g231208231263_)))))
                           (let ()
                             (declare (not safe))
                             (_g231207231260_ _g231208231263_)))))
                   (let ()
                     (declare (not safe))
                     (_g231207231260_ _g231208231263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231207231260_
                                                      _g231208231263_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g231207231260_
                                              _g231208231263_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g231207231260_ _g231208231263_))))))
                       (declare (not safe))
                       (_g231206231436_ _L231190_))))
                  (___kont243388243389_
                   (lambda (_L231136_ _L231137_)
                     (let ((__tmp244106
                            (let ((__tmp244107
                                   (let ((__tmp244108
                                          (let ((__tmp244109
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L231136_))))
                                            (declare (not safe))
                                            (cons __tmp244109 '()))))
                                     (declare (not safe))
                                     (cons _L231137_ __tmp244108))))
                              (declare (not safe))
                              (cons '%#define-values __tmp244107))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp244106 _stx231039_)))))
              (let* ((___match243473243474_
                      (lambda (_e231082231158_
                               _hd231081231161_
                               _tl231080231163_
                               _e231085231166_
                               _hd231084231169_
                               _tl231083231171_
                               _e231088231174_
                               _hd231087231177_
                               _tl231086231179_
                               _e231091231182_
                               _hd231090231185_
                               _tl231089231187_)
                        (let ((_L231190_ _hd231090231185_)
                              (_L231191_ _hd231087231177_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231191_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L231190_)))
                              (___kont243386243387_ _L231190_ _L231191_)
                              (___kont243388243389_
                               _hd231090231185_
                               _hd231084231169_)))))
                     (___match243445243446_
                      (lambda (_e231068231444_
                               _hd231067231447_
                               _tl231066231449_
                               _e231071231452_
                               _hd231070231455_
                               _tl231069231457_
                               _e231074231460_
                               _hd231073231463_
                               _tl231072231465_
                               _e231077231468_
                               _hd231076231471_
                               _tl231075231473_)
                        (let ((_L231476_ _hd231076231471_)
                              (_L231477_ _hd231073231463_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231477_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L231476_)))
                              (___kont243384243385_ _L231476_ _L231477_)
                              (___match243473243474_
                               _e231068231444_
                               _hd231067231447_
                               _tl231066231449_
                               _e231071231452_
                               _hd231070231455_
                               _tl231069231457_
                               _e231074231460_
                               _hd231073231463_
                               _tl231072231465_
                               _e231077231468_
                               _hd231076231471_
                               _tl231075231473_)))))
                     (___match243417243418_
                      (lambda (_e231054231626_
                               _hd231053231629_
                               _tl231052231631_
                               _e231057231634_
                               _hd231056231637_
                               _tl231055231639_
                               _e231060231642_
                               _hd231059231645_
                               _tl231058231647_
                               _e231063231650_
                               _hd231062231653_
                               _tl231061231655_)
                        (let ((_L231658_ _hd231062231653_)
                              (_L231659_ _hd231059231645_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231659_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L231658_)))
                              (___kont243382243383_ _L231658_ _L231659_)
                              (___match243445243446_
                               _e231054231626_
                               _hd231053231629_
                               _tl231052231631_
                               _e231057231634_
                               _hd231056231637_
                               _tl231055231639_
                               _e231060231642_
                               _hd231059231645_
                               _tl231058231647_
                               _e231063231650_
                               _hd231062231653_
                               _tl231061231655_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243380243381_))
                    (let ((_e231054231626_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243380243381_))))
                      (let ((_tl231052231631_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231054231626_)))
                            (_hd231053231629_
                             (let ()
                               (declare (not safe))
                               (##car _e231054231626_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231052231631_))
                            (let ((_e231057231634_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231052231631_))))
                              (let ((_tl231055231639_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231057231634_)))
                                    (_hd231056231637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231057231634_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231056231637_))
                                    (let ((_e231060231642_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231056231637_))))
                                      (let ((_tl231058231647_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231060231642_)))
                                            (_hd231059231645_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231060231642_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231058231647_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231055231639_))
                                                (let ((_e231063231650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231055231639_))))
                                                  (let ((_tl231061231655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231063231650_)))
                                                        (_hd231062231653_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231063231650_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231061231655_))
                                                        (___match243417243418_
                                                         _e231054231626_
                                                         _hd231053231629_
                                                         _tl231052231631_
                                                         _e231057231634_
                                                         _hd231056231637_
                                                         _tl231055231639_
                                                         _e231060231642_
                                                         _hd231059231645_
                                                         _tl231058231647_
                                                         _e231063231650_
                                                         _hd231062231653_
                                                         _tl231061231655_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g231048231107_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231048231107_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231055231639_))
                                                (let ((_e231102231128_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231055231639_))))
                                                  (let ((_tl231100231133_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231102231128_)))
                                                        (_hd231101231131_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231102231128_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231100231133_))
                                                        (___kont243388243389_
                                                         _hd231101231131_
                                                         _hd231056231637_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g231048231107_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231048231107_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231055231639_))
                                        (let ((_e231102231128_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231055231639_))))
                                          (let ((_tl231100231133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231102231128_)))
                                                (_hd231101231131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231102231128_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231100231133_))
                                                (___kont243388243389_
                                                 _hd231101231131_
                                                 _hd231056231637_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231048231107_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g231048231107_))))))
                            (let () (declare (not safe)) (_g231048231107_)))))
                    (let () (declare (not safe)) (_g231048231107_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx229971_)
        (letrec* ((_bind-e__241776241777_
                   (lambda (_id231023_ _expr231024_ _compile?231025_)
                     (let ((__tmp244112
                            (let ()
                              (declare (not safe))
                              (cons _id231023_ '())))
                           (__tmp244110
                            (let ((__tmp244111
                                   (if _compile?231025_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr231024_))
                                       _expr231024_)))
                              (declare (not safe))
                              (cons __tmp244111 '()))))
                       (declare (not safe))
                       (cons __tmp244112 __tmp244110))))
                  (_bind-e__0__241778241779_
                   (lambda (_id231030_ _expr231031_)
                     (let ((_compile?231033_ '#t))
                       (declare (not safe))
                       (_bind-e__241776241777_
                        _id231030_
                        _expr231031_
                        _compile?231033_))))
                  (_bind-e229973_
                   (lambda _g244114_
                     (let ((_g244113_
                            (let ()
                              (declare (not safe))
                              (##length _g244114_))))
                       (cond ((let () (declare (not safe)) (##fx= _g244113_ 2))
                              (apply (lambda (_id231030_ _expr231031_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241778241779_
                                          _id231030_
                                          _expr231031_)))
                                     _g244114_))
                             ((let () (declare (not safe)) (##fx= _g244113_ 3))
                              (apply (lambda (_id231035_
                                              _expr231036_
                                              _compile?231037_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241776241777_
                                          _id231035_
                                          _expr231036_
                                          _compile?231037_)))
                                     _g244114_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g244114_))))))
                  (_compile-bindings229974_
                   (lambda (_bindings230607_)
                     (let _lp230609_ ((_rest230611_ _bindings230607_)
                                      (_lift1230612_ '())
                                      (_lift2230613_ '())
                                      (_bind230614_ '()))
                       (let* ((_rest230615230623_ _rest230611_)
                              (_else230617230631_
                               (lambda ()
                                 (values (reverse _lift1230612_)
                                         (reverse _lift2230613_)
                                         (reverse _bind230614_))))
                              (_K230619231010_
                               (lambda (_rest230634_ _hd230635_)
                                 (let* ((___stx243516243517_ _hd230635_)
                                        (_g230639230675_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243516243517_)))))
                                   (let ((___kont243518243519_
                                          (lambda (_L230917_ _L230918_)
                                            (let* ((___stx243496243497_
                                                    _L230917_)
                                                   (_g230933230947_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243496243497_)))))
                                              (let ((___kont243498243499_
                                                     (lambda (_L230995_)
                                                       (let ((__tmp244115
                                                              (let ((__tmp244116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241776241777_
                                _L230918_
                                _L230917_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp244116 _bind230614_))))
                 (declare (not safe))
                 (_lp230609_
                  _rest230634_
                  _lift1230612_
                  _lift2230613_
                  __tmp244115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243500243501_
                                                     (lambda (_L230960_)
                                                       (let ((_g244117_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx229971_
                         _L230918_
                         _L230960_
                         '#t))))
                 (begin
                   (let ((_g244118_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244117_)
                                (##vector-length _g244117_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244118_ 3)))
                         (error "Context expects 3 values" _g244118_)))
                   (let ((_ids230970_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244117_ 0)))
                         (_impls230971_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244117_ 1)))
                         (_clauses230972_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244117_ 2))))
                     (let* ((_g244119_
                             (for-each gx#core-bind-runtime! _ids230970_))
                            (_xbind230975_
                             (map _bind-e229973_ _ids230970_ _impls230971_))
                            (_expr*230977_
                             (let ((__tmp244121
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses230972_)))
                                   (__tmp244120
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp244121
                                __tmp244120)))
                            (_bind*230979_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241776241777_
                                _L230918_
                                _expr*230977_
                                '#f))))
                       (let ((__tmp244123
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L230918_)))
                             (__tmp244122
                              (map gxc#identifier-symbol _ids230970_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp244123
                          '" => "
                          __tmp244122))
                       (let ((__tmp244125
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2230613_ _xbind230975_)))
                             (__tmp244124
                              (let ()
                                (declare (not safe))
                                (cons _bind*230979_ _bind230614_))))
                         (declare (not safe))
                         (_lp230609_
                          _rest230634_
                          _lift1230612_
                          __tmp244125
                          __tmp244124)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243507243508_
                                                       (lambda (_e230938230987_
                                                                _hd230937230990_
                                                                _tl230936230992_)
                                                         (let ((_L230995_
                                                                _tl230936230992_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L230995_))
                       (___kont243498243499_ _L230995_)
                       (___kont243500243501_ _tl230936230992_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243496243497_))
                                                      (let ((_e230938230987_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243496243497_))))
                (let ((_tl230936230992_
                       (let () (declare (not safe)) (##cdr _e230938230987_)))
                      (_hd230937230990_
                       (let () (declare (not safe)) (##car _e230938230987_))))
                  (___match243507243508_
                   _e230938230987_
                   _hd230937230990_
                   _tl230936230992_)))
              (let () (declare (not safe)) (_g230933230947_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243520243521_
                                          (lambda (_L230745_ _L230746_)
                                            (let* ((_g230760230790_
                                                    (lambda (_g230761230787_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230761230787_))))
                                                   (_g230759230885_
                                                    (lambda (_g230761230793_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230761230793_))
                                                          (let ((_e230767230795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230761230793_))))
                    (let ((_hd230766230798_
                           (let ()
                             (declare (not safe))
                             (##car _e230767230795_)))
                          (_tl230765230800_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230767230795_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230765230800_))
                          (let ((_e230770230803_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230765230800_))))
                            (let ((_hd230769230806_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230770230803_)))
                                  (_tl230768230808_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230770230803_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230769230806_))
                                  (let ((_e230773230811_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230769230806_))))
                                    (let ((_hd230772230814_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230773230811_)))
                                          (_tl230771230816_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230773230811_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230772230814_))
                                          (let ((_e230776230819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230772230814_))))
                                            (let ((_hd230775230822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230776230819_)))
                                                  (_tl230774230824_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230776230819_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230775230822_))
                                                  (let ((_e230779230827_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230775230822_))))
                                                    (let ((_hd230778230830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230779230827_)))
                                                          (_tl230777230832_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230779230827_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230777230832_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230774230824_))
                      (let ((_e230782230835_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230774230824_))))
                        (let ((_hd230781230838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230782230835_)))
                              (_tl230780230840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230782230835_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230780230840_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230771230816_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230768230808_))
                                      (let ((_e230785230843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230768230808_))))
                                        (let ((_hd230784230846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230785230843_)))
                                              (_tl230783230848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230785230843_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230783230848_))
                                              ((lambda (_L230851_
                                                        _L230852_
                                                        _L230853_)
                                                 (let* ((_lambda-id230877_
                                                         (let ((__tmp244127
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230746_)))
                       (__tmp244126 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp244127 __tmp244126)))
                (_lambda-id230879_
                 (let ((__tmp244128
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx229971_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id230877_ __tmp244128)))
                (_g244129_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id230879_)))
                (_new-case-lambda-expr230882_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L230851_
                    _L230853_
                    _lambda-id230879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp244131
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230746_)))
                                                         (__tmp244130
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id230879_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp244131
                                                      '" => "
                                                      __tmp244130))
                                                   (let ((__tmp244134
                                                          (let ((__tmp244135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241776241777_
                            _L230746_
                            _new-case-lambda-expr230882_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp244135 _rest230634_)))
                 (__tmp244132
                  (let ((__tmp244133
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241778241779_
                            _lambda-id230879_
                            _L230852_))))
                    (declare (not safe))
                    (cons __tmp244133 _lift1230612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp230609_
                                                      __tmp244134
                                                      __tmp244132
                                                      _lift2230613_
                                                      _bind230614_))))
                                               _hd230784230846_
                                               _hd230781230838_
                                               _hd230778230830_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230760230790_
                                                 _g230761230793_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230760230790_ _g230761230793_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230760230790_ _g230761230793_)))
                              (let ()
                                (declare (not safe))
                                (_g230760230790_ _g230761230793_)))))
                      (let ()
                        (declare (not safe))
                        (_g230760230790_ _g230761230793_)))
                  (let ()
                    (declare (not safe))
                    (_g230760230790_ _g230761230793_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230760230790_
                                                     _g230761230793_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230760230790_
                                             _g230761230793_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230760230790_ _g230761230793_)))))
                          (let ()
                            (declare (not safe))
                            (_g230760230790_ _g230761230793_)))))
                  (let ()
                    (declare (not safe))
                    (_g230760230790_ _g230761230793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230759230885_ _L230745_))))
                                         (___kont243522243523_
                                          (lambda (_L230696_ _L230697_)
                                            (let ((__tmp244136
                                                   (let ((__tmp244137
                                                          (let ((__tmp244138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244139
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L230696_))))
                           (declare (not safe))
                           (cons __tmp244139 '()))))
                    (declare (not safe))
                    (cons _L230697_ __tmp244138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244137
                                                           _bind230614_))))
                                              (declare (not safe))
                                              (_lp230609_
                                               _rest230634_
                                               _lift1230612_
                                               _lift2230613_
                                               __tmp244136)))))
                                     (let* ((___match243567243568_
                                             (lambda (_e230656230721_
                                                      _hd230655230724_
                                                      _tl230654230726_
                                                      _e230659230729_
                                                      _hd230658230732_
                                                      _tl230657230734_
                                                      _e230662230737_
                                                      _hd230661230740_
                                                      _tl230660230742_)
                                               (let ((_L230745_
                                                      _hd230661230740_)
                                                     (_L230746_
                                                      _hd230658230732_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230746_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230745_)))
                                                     (___kont243520243521_
                                                      _L230745_
                                                      _L230746_)
                                                     (___kont243522243523_
                                                      _hd230661230740_
                                                      _hd230655230724_)))))
                                            (___match243545243546_
                                             (lambda (_e230645230893_
                                                      _hd230644230896_
                                                      _tl230643230898_
                                                      _e230648230901_
                                                      _hd230647230904_
                                                      _tl230646230906_
                                                      _e230651230909_
                                                      _hd230650230912_
                                                      _tl230649230914_)
                                               (let ((_L230917_
                                                      _hd230650230912_)
                                                     (_L230918_
                                                      _hd230647230904_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230918_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L230917_)))
                                                     (___kont243518243519_
                                                      _L230917_
                                                      _L230918_)
                                                     (___match243567243568_
                                                      _e230645230893_
                                                      _hd230644230896_
                                                      _tl230643230898_
                                                      _e230648230901_
                                                      _hd230647230904_
                                                      _tl230646230906_
                                                      _e230651230909_
                                                      _hd230650230912_
                                                      _tl230649230914_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243516243517_))
                                           (let ((_e230645230893_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243516243517_))))
                                             (let ((_tl230643230898_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230645230893_)))
                                                   (_hd230644230896_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230645230893_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230644230896_))
                                                   (let ((_e230648230901_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230644230896_))))
                                                     (let ((_tl230646230906_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230648230901_)))
                                                           (_hd230647230904_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230648230901_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230646230906_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230643230898_))
                       (let ((_e230651230909_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230643230898_))))
                         (let ((_tl230649230914_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230651230909_)))
                               (_hd230650230912_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230651230909_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230649230914_))
                               (___match243545243546_
                                _e230645230893_
                                _hd230644230896_
                                _tl230643230898_
                                _e230648230901_
                                _hd230647230904_
                                _tl230646230906_
                                _e230651230909_
                                _hd230650230912_
                                _tl230649230914_)
                               (let ()
                                 (declare (not safe))
                                 (_g230639230675_)))))
                       (let () (declare (not safe)) (_g230639230675_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230643230898_))
                       (let ((_e230670230688_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230643230898_))))
                         (let ((_tl230668230693_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230670230688_)))
                               (_hd230669230691_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230670230688_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230668230693_))
                               (___kont243522243523_
                                _hd230669230691_
                                _hd230644230896_)
                               (let ()
                                 (declare (not safe))
                                 (_g230639230675_)))))
                       (let () (declare (not safe)) (_g230639230675_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230643230898_))
                                                       (let ((_e230670230688_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230643230898_))))
                 (let ((_tl230668230693_
                        (let () (declare (not safe)) (##cdr _e230670230688_)))
                       (_hd230669230691_
                        (let () (declare (not safe)) (##car _e230670230688_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230668230693_))
                       (___kont243522243523_ _hd230669230691_ _hd230644230896_)
                       (let () (declare (not safe)) (_g230639230675_)))))
               (let () (declare (not safe)) (_g230639230675_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230639230675_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230615230623_))
                             (let ((_hd230620231013_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230615230623_)))
                                   (_tl230621231015_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230615230623_))))
                               (let* ((_hd231018_ _hd230620231013_)
                                      (_rest231020_ _tl230621231015_))
                                 (declare (not safe))
                                 (_K230619231010_ _rest231020_ _hd231018_)))
                             (let ()
                               (declare (not safe))
                               (_else230617230631_)))))))
                  (_lift-kw-lambda?229975_
                   (lambda (_bind230531_)
                     (let* ((___stx243584243585_ _bind230531_)
                            (_g230534230551_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243584243585_)))))
                       (let ((___kont243586243587_
                              (lambda (_L230587_ _L230588_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L230588_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L230587_))
                                    '#f)))
                             (___kont243588243589_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx243584243585_))
                             (let ((_e230540230563_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx243584243585_))))
                               (let ((_tl230538230568_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e230540230563_)))
                                     (_hd230539230566_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e230540230563_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd230539230566_))
                                     (let ((_e230543230571_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd230539230566_))))
                                       (let ((_tl230541230576_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e230543230571_)))
                                             (_hd230542230574_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e230543230571_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl230541230576_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl230538230568_))
                                                 (let ((_e230546230579_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl230538230568_))))
                                                   (let ((_tl230544230584_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e230546230579_)))
                                                         (_hd230545230582_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e230546230579_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl230544230584_))
                                                         (___kont243586243587_
                                                          _hd230545230582_
                                                          _hd230542230574_)
                                                         (___kont243588243589_))))
                                                 (___kont243588243589_))
                                             (___kont243588243589_))))
                                     (___kont243588243589_))))
                             (___kont243588243589_))))))
                  (_lift-kw-lambda-bindings229976_
                   (lambda (_bindings230143_)
                     (let _lp230145_ ((_rest230147_ _bindings230143_)
                                      (_lift1230148_ '())
                                      (_lift2230149_ '())
                                      (_bind230150_ '()))
                       (let* ((_rest230151230159_ _rest230147_)
                              (_else230153230167_
                               (lambda ()
                                 (values (reverse _lift1230148_)
                                         (reverse _lift2230149_)
                                         (reverse _bind230150_))))
                              (_K230155230519_
                               (lambda (_rest230170_ _hd230171_)
                                 (let* ((___stx243614243615_ _hd230171_)
                                        (_g230174230199_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243614243615_)))))
                                   (let ((___kont243616243617_
                                          (lambda (_L230269_ _L230270_)
                                            (let* ((_g230284230337_
                                                    (lambda (_g230285230334_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230285230334_))))
                                                   (_g230283230513_
                                                    (lambda (_g230285230340_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230285230340_))
                                                          (let ((_e230293230342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230285230340_))))
                    (let ((_hd230292230345_
                           (let ()
                             (declare (not safe))
                             (##car _e230293230342_)))
                          (_tl230291230347_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230293230342_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230291230347_))
                          (let ((_e230296230350_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230291230347_))))
                            (let ((_hd230295230353_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230296230350_)))
                                  (_tl230294230355_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230296230350_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230295230353_))
                                  (let ((_e230299230358_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230295230353_))))
                                    (let ((_hd230298230361_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230299230358_)))
                                          (_tl230297230363_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230299230358_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230298230361_))
                                          (let ((_e230302230366_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230298230361_))))
                                            (let ((_hd230301230369_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230302230366_)))
                                                  (_tl230300230371_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230302230366_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230301230369_))
                                                  (let ((_e230305230374_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230301230369_))))
                                                    (let ((_hd230304230377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230305230374_)))
                                                          (_tl230303230379_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230305230374_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230303230379_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230300230371_))
                      (let ((_e230308230382_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230300230371_))))
                        (let ((_hd230307230385_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230308230382_)))
                              (_tl230306230387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230308230382_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230307230385_))
                              (let ((_e230311230390_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230307230385_))))
                                (let ((_hd230310230393_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230311230390_)))
                                      (_tl230309230395_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230311230390_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230309230395_))
                                      (let ((_e230314230398_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230309230395_))))
                                        (let ((_hd230313230401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230314230398_)))
                                              (_tl230312230403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230314230398_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230313230401_))
                                              (let ((_e230317230406_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230313230401_))))
                                                (let ((_hd230316230409_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230317230406_)))
                                                      (_tl230315230411_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230317230406_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230316230409_))
                                                      (let ((_e230320230414_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230316230409_))))
                (let ((_hd230319230417_
                       (let () (declare (not safe)) (##car _e230320230414_)))
                      (_tl230318230419_
                       (let () (declare (not safe)) (##cdr _e230320230414_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230319230417_))
                      (let ((_e230323230422_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230319230417_))))
                        (let ((_hd230322230425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230323230422_)))
                              (_tl230321230427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230323230422_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230321230427_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230318230419_))
                                  (let ((_e230326230430_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230318230419_))))
                                    (let ((_hd230325230433_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230326230430_)))
                                          (_tl230324230435_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230326230430_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230324230435_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230315230411_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230312230403_))
                                                  (let ((_e230329230438_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230312230403_))))
                                                    (let ((_hd230328230441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230329230438_)))
                                                          (_tl230327230443_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230329230438_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230327230443_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230306230387_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230297230363_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230294230355_))
                              (let ((_e230332230446_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230294230355_))))
                                (let ((_hd230331230449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230332230446_)))
                                      (_tl230330230451_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230332230446_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230330230451_))
                                      ((lambda (_L230454_
                                                _L230455_
                                                _L230456_
                                                _L230457_
                                                _L230458_)
                                         (let* ((_get-kws-id230498_
                                                 (let ((__tmp244141
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230270_)))
                                                       (__tmp244140
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp244141
                                                    __tmp244140)))
                                                (_get-kws-id230500_
                                                 (let ((__tmp244142
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229971_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230498_
                                                    __tmp244142)))
                                                (_main-id230502_
                                                 (let ((__tmp244144
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230270_)))
                                                       (__tmp244143
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp244144
                                                    __tmp244143)))
                                                (_main-id230504_
                                                 (let ((__tmp244145
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229971_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230502_
                                                    __tmp244145)))
                                                (_g244146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230500_)))
                                                (_g244147_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230504_)))
                                                (_new-kw-dispatch230508_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230454_
                                                    _L230458_
                                                    _get-kws-id230500_)))
                                                (_new-get-kws230510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230455_
                                                    _L230457_
                                                    _main-id230504_))))
                                           (let ((__tmp244150
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230270_)))
                                                 (__tmp244149
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230500_)))
                                                 (__tmp244148
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230504_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp244150
                                              '" => "
                                              __tmp244149
                                              '" => "
                                              __tmp244148))
                                           (let ((__tmp244155
                                                  (let ((__tmp244156
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241776241777_
                                                            _main-id230504_
                                                            _L230456_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp244156
                                                          _lift1230148_)))
                                                 (__tmp244153
                                                  (let ((__tmp244154
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241776241777_
                                                            _get-kws-id230500_
                                                            _new-get-kws230510_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp244154
                                                          _lift2230149_)))
                                                 (__tmp244151
                                                  (let ((__tmp244152
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241776241777_
                                                            _L230270_
                                                            _new-kw-dispatch230508_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp244152
                                                          _bind230150_))))
                                             (declare (not safe))
                                             (_lp230145_
                                              _rest230170_
                                              __tmp244155
                                              __tmp244153
                                              __tmp244151))))
                                       _hd230331230449_
                                       _hd230328230441_
                                       _hd230325230433_
                                       _hd230322230425_
                                       _hd230304230377_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230284230337_ _g230285230340_)))))
                              (let ()
                                (declare (not safe))
                                (_g230284230337_ _g230285230340_)))
                          (let ()
                            (declare (not safe))
                            (_g230284230337_ _g230285230340_)))
                      (let ()
                        (declare (not safe))
                        (_g230284230337_ _g230285230340_)))
                  (let ()
                    (declare (not safe))
                    (_g230284230337_ _g230285230340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230284230337_
                                                     _g230285230340_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230284230337_
                                                 _g230285230340_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230284230337_
                                             _g230285230340_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230284230337_ _g230285230340_)))
                              (let ()
                                (declare (not safe))
                                (_g230284230337_ _g230285230340_)))))
                      (let ()
                        (declare (not safe))
                        (_g230284230337_ _g230285230340_)))))
              (let ()
                (declare (not safe))
                (_g230284230337_ _g230285230340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230284230337_
                                                 _g230285230340_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230284230337_ _g230285230340_)))))
                              (let ()
                                (declare (not safe))
                                (_g230284230337_ _g230285230340_)))))
                      (let ()
                        (declare (not safe))
                        (_g230284230337_ _g230285230340_)))
                  (let ()
                    (declare (not safe))
                    (_g230284230337_ _g230285230340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230284230337_
                                                     _g230285230340_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230284230337_
                                             _g230285230340_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230284230337_ _g230285230340_)))))
                          (let ()
                            (declare (not safe))
                            (_g230284230337_ _g230285230340_)))))
                  (let ()
                    (declare (not safe))
                    (_g230284230337_ _g230285230340_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230283230513_ _L230269_))))
                                         (___kont243618243619_
                                          (lambda (_L230220_ _L230221_)
                                            (let ((__tmp244157
                                                   (let ((__tmp244158
                                                          (let ((__tmp244159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L230220_ '()))))
                    (declare (not safe))
                    (cons _L230221_ __tmp244159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244158
                                                           _bind230150_))))
                                              (declare (not safe))
                                              (_lp230145_
                                               _rest230170_
                                               _lift1230148_
                                               _lift2230149_
                                               __tmp244157)))))
                                     (let ((___match243641243642_
                                            (lambda (_e230180230245_
                                                     _hd230179230248_
                                                     _tl230178230250_
                                                     _e230183230253_
                                                     _hd230182230256_
                                                     _tl230181230258_
                                                     _e230186230261_
                                                     _hd230185230264_
                                                     _tl230184230266_)
                                              (let ((_L230269_
                                                     _hd230185230264_)
                                                    (_L230270_
                                                     _hd230182230256_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L230270_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L230269_)))
                                                    (___kont243616243617_
                                                     _L230269_
                                                     _L230270_)
                                                    (___kont243618243619_
                                                     _hd230185230264_
                                                     _hd230179230248_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243614243615_))
                                           (let ((_e230180230245_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243614243615_))))
                                             (let ((_tl230178230250_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230180230245_)))
                                                   (_hd230179230248_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230180230245_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230179230248_))
                                                   (let ((_e230183230253_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230179230248_))))
                                                     (let ((_tl230181230258_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230183230253_)))
                                                           (_hd230182230256_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230183230253_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230181230258_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230178230250_))
                       (let ((_e230186230261_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230178230250_))))
                         (let ((_tl230184230266_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230186230261_)))
                               (_hd230185230264_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230186230261_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230184230266_))
                               (___match243641243642_
                                _e230180230245_
                                _hd230179230248_
                                _tl230178230250_
                                _e230183230253_
                                _hd230182230256_
                                _tl230181230258_
                                _e230186230261_
                                _hd230185230264_
                                _tl230184230266_)
                               (let ()
                                 (declare (not safe))
                                 (_g230174230199_)))))
                       (let () (declare (not safe)) (_g230174230199_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230178230250_))
                       (let ((_e230194230212_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230178230250_))))
                         (let ((_tl230192230217_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230194230212_)))
                               (_hd230193230215_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230194230212_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230192230217_))
                               (___kont243618243619_
                                _hd230193230215_
                                _hd230179230248_)
                               (let ()
                                 (declare (not safe))
                                 (_g230174230199_)))))
                       (let () (declare (not safe)) (_g230174230199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230178230250_))
                                                       (let ((_e230194230212_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230178230250_))))
                 (let ((_tl230192230217_
                        (let () (declare (not safe)) (##cdr _e230194230212_)))
                       (_hd230193230215_
                        (let () (declare (not safe)) (##car _e230194230212_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230192230217_))
                       (___kont243618243619_ _hd230193230215_ _hd230179230248_)
                       (let () (declare (not safe)) (_g230174230199_)))))
               (let () (declare (not safe)) (_g230174230199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230174230199_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230151230159_))
                             (let ((_hd230156230522_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230151230159_)))
                                   (_tl230157230524_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230151230159_))))
                               (let* ((_hd230527_ _hd230156230522_)
                                      (_rest230529_ _tl230157230524_))
                                 (declare (not safe))
                                 (_K230155230519_ _rest230529_ _hd230527_)))
                             (let ()
                               (declare (not safe))
                               (_else230153230167_))))))))
          (let* ((___stx243658243659_ _stx229971_)
                 (_g229979230005_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243658243659_)))))
            (let ((___kont243660243661_
                   (lambda (_L230065_ _L230066_)
                     (let ((__tmp244161
                            (lambda ()
                              (if (let ((__tmp244188
                                         (let ((__tmp244189
                                                (lambda (_g230094230097_
                                                         _g230095230099_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g230094230097_
                                                          _g230095230099_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp244189
                                                   '()
                                                   _L230066_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?229975_
                                            __tmp244188))
                                  (let ((_g244175_
                                         (let ((__tmp244177
                                                (let ((__tmp244178
                                                       (lambda (_g230101230104_
                                                                _g230102230106_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g230101230104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g230102230106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp244178
                                                          '()
                                                          _L230066_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings229976_
                                            __tmp244177))))
                                    (begin
                                      (let ((_g244176_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g244175_)
                                                   (##vector-length _g244175_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g244176_ 3)))
                                            (error "Context expects 3 values"
                                                   _g244176_)))
                                      (let ((_lift1230109_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244175_ 0)))
                                            (_lift2230110_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244175_ 1)))
                                            (_hd230111_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244175_ 2))))
                                        (let* ((_expr230113_
                                                (let ((__tmp244179
                                                       (let ((__tmp244180
                                                              (let ((__tmp244181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L230065_ '()))))
                        (declare (not safe))
                        (cons _hd230111_ __tmp244181))))
                 (declare (not safe))
                 (cons '%#let-values __tmp244180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244179
                                                   _stx229971_)))
                                               (_expr230115_
                                                (let ((__tmp244182
                                                       (let ((__tmp244183
                                                              (let ((__tmp244184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr230113_ '()))))
                        (declare (not safe))
                        (cons _lift2230110_ __tmp244184))))
                 (declare (not safe))
                 (cons '%#let-values __tmp244183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244182
                                                   _stx229971_)))
                                               (_expr230117_
                                                (let ((__tmp244185
                                                       (let ((__tmp244186
                                                              (let ((__tmp244187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr230115_ '()))))
                        (declare (not safe))
                        (cons _lift1230109_ __tmp244187))))
                 (declare (not safe))
                 (cons '%#let-values __tmp244186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244185
                                                   _stx229971_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr230117_))))))
                                  (let ((_g244162_
                                         (let ((__tmp244164
                                                (let ((__tmp244165
                                                       (lambda (_g230119230122_
                                                                _g230120230124_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g230119230122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g230120230124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp244165
                                                          '()
                                                          _L230066_))))
                                           (declare (not safe))
                                           (_compile-bindings229974_
                                            __tmp244164))))
                                    (begin
                                      (let ((_g244163_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g244162_)
                                                   (##vector-length _g244162_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g244163_ 3)))
                                            (error "Context expects 3 values"
                                                   _g244163_)))
                                      (let ((_lift1230127_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244162_ 0)))
                                            (_lift2230128_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244162_ 1)))
                                            (_hd230129_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244162_ 2))))
                                        (let* ((_body230131_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L230065_)))
                                               (_expr230133_
                                                (let ((__tmp244166
                                                       (let ((__tmp244167
                                                              (let ((__tmp244168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body230131_ '()))))
                        (declare (not safe))
                        (cons _hd230129_ __tmp244168))))
                 (declare (not safe))
                 (cons '%#let-values __tmp244167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244166
                                                   _stx229971_)))
                                               (_expr230135_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2230128_))
                                                    _expr230133_
                                                    (let ((__tmp244169
                                                           (let ((__tmp244170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244171
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr230133_ '()))))
                            (declare (not safe))
                            (cons _lift2230128_ __tmp244171))))
                     (declare (not safe))
                     (cons '%#let-values __tmp244170))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp244169 _stx229971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr230137_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1230127_))
                                                    _expr230135_
                                                    (let ((__tmp244172
                                                           (let ((__tmp244173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244174
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr230135_ '()))))
                            (declare (not safe))
                            (cons _lift1230127_ __tmp244174))))
                     (declare (not safe))
                     (cons '%#let-values __tmp244173))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp244172 _stx229971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr230137_)))))))
                           (__tmp244160
                            (let ((__obj243864
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj243864)
                              __obj243864)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp244161
                        gx#current-expander-context
                        __tmp244160))))
                  (___kont243664243665_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx229971_)))))
              (let ((___match243685243686_
                     (lambda (_e229985230017_
                              _hd229984230020_
                              _tl229983230022_
                              _e229988230025_
                              _hd229987230028_
                              _tl229986230030_
                              ___splice243662243663_
                              _target229989230033_
                              _tl229991230035_)
                       (letrec ((_loop229992230038_
                                 (lambda (_hd229990230041_ _bind229996230043_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd229990230041_))
                                       (let ((_e229993230046_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd229990230041_))))
                                         (let ((_lp-tl229995230051_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229993230046_)))
                                               (_lp-hd229994230049_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229993230046_))))
                                           (let ((__tmp244192
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd229994230049_
                                                          _bind229996230043_))))
                                             (declare (not safe))
                                             (_loop229992230038_
                                              _lp-tl229995230051_
                                              __tmp244192))))
                                       (let ((_bind229997230054_
                                              (reverse _bind229996230043_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl229986230030_))
                                             (let ((_e230000230057_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl229986230030_))))
                                               (let ((_tl229998230062_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e230000230057_)))
                                                     (_hd229999230060_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e230000230057_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl229998230062_))
                                                     (let ((_L230065_
                                                            _hd229999230060_)
                                                           (_L230066_
                                                            _bind229997230054_))
                                                       (if (let ((__tmp244190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244191
                                 (lambda (_g230086230089_ _g230087230091_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g230086230089_ _g230087230091_)))))
                            (declare (not safe))
                            (foldr1 __tmp244191 '() _L230066_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp244190))
                   (___kont243660243661_ _L230065_ _L230066_)
                   (___kont243664243665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243664243665_))))
                                             (___kont243664243665_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop229992230038_ _target229989230033_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243658243659_))
                    (let ((_e229985230017_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243658243659_))))
                      (let ((_tl229983230022_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229985230017_)))
                            (_hd229984230020_
                             (let ()
                               (declare (not safe))
                               (##car _e229985230017_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229983230022_))
                            (let ((_e229988230025_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229983230022_))))
                              (let ((_tl229986230030_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229988230025_)))
                                    (_hd229987230028_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229988230025_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd229987230028_))
                                    (let ((___splice243662243663_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd229987230028_
                                              '0))))
                                      (let ((_tl229991230035_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243662243663_
                                                '1)))
                                            (_target229989230033_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243662243663_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229991230035_))
                                            (___match243685243686_
                                             _e229985230017_
                                             _hd229984230020_
                                             _tl229983230022_
                                             _e229988230025_
                                             _hd229987230028_
                                             _tl229986230030_
                                             ___splice243662243663_
                                             _target229989230033_
                                             _tl229991230035_)
                                            (___kont243664243665_))))
                                    (___kont243664243665_))))
                            (___kont243664243665_))))
                    (___kont243664243665_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx229115_)
        (letrec* ((_bind-e__241781241782_
                   (lambda (_id229955_ _expr229956_ _compile?229957_)
                     (let ((__tmp244195
                            (let ()
                              (declare (not safe))
                              (cons _id229955_ '())))
                           (__tmp244193
                            (let ((__tmp244194
                                   (if _compile?229957_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr229956_))
                                       _expr229956_)))
                              (declare (not safe))
                              (cons __tmp244194 '()))))
                       (declare (not safe))
                       (cons __tmp244195 __tmp244193))))
                  (_bind-e__0__241783241784_
                   (lambda (_id229962_ _expr229963_)
                     (let ((_compile?229965_ '#t))
                       (declare (not safe))
                       (_bind-e__241781241782_
                        _id229962_
                        _expr229963_
                        _compile?229965_))))
                  (_bind-e229117_
                   (lambda _g244197_
                     (let ((_g244196_
                            (let ()
                              (declare (not safe))
                              (##length _g244197_))))
                       (cond ((let () (declare (not safe)) (##fx= _g244196_ 2))
                              (apply (lambda (_id229962_ _expr229963_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241783241784_
                                          _id229962_
                                          _expr229963_)))
                                     _g244197_))
                             ((let () (declare (not safe)) (##fx= _g244196_ 3))
                              (apply (lambda (_id229967_
                                              _expr229968_
                                              _compile?229969_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241781241782_
                                          _id229967_
                                          _expr229968_
                                          _compile?229969_)))
                                     _g244197_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g244197_))))))
                  (_compile-bindings229118_
                   (lambda (_rest229253_)
                     (let _lp229255_ ((_rest229257_ _rest229253_)
                                      (_bind229258_ '()))
                       (let* ((_rest229259229267_ _rest229257_)
                              (_else229261229275_
                               (lambda () (reverse _bind229258_)))
                              (_K229263229942_
                               (lambda (_rest229278_ _hd229279_)
                                 (let* ((___stx243708243709_ _hd229279_)
                                        (_g229284229331_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243708243709_)))))
                                   (let ((___kont243710243711_
                                          (lambda (_L229849_ _L229850_)
                                            (let* ((___stx243688243689_
                                                    _L229849_)
                                                   (_g229865229879_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243688243689_)))))
                                              (let ((___kont243690243691_
                                                     (lambda (_L229927_)
                                                       (let ((__tmp244198
                                                              (let ((__tmp244199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241781241782_
                                _L229850_
                                _L229849_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp244199 _bind229258_))))
                 (declare (not safe))
                 (_lp229255_ _rest229278_ __tmp244198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243692243693_
                                                     (lambda (_L229892_)
                                                       (let ((_g244200_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx229115_
                         _L229850_
                         _L229892_
                         '#t))))
                 (begin
                   (let ((_g244201_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244200_)
                                (##vector-length _g244200_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244201_ 3)))
                         (error "Context expects 3 values" _g244201_)))
                   (let ((_ids229902_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244200_ 0)))
                         (_impls229903_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244200_ 1)))
                         (_clauses229904_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244200_ 2))))
                     (let* ((_g244202_
                             (for-each gx#core-bind-runtime! _ids229902_))
                            (_xbind229907_
                             (map _bind-e229117_ _ids229902_ _impls229903_))
                            (_expr*229909_
                             (let ((__tmp244204
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses229904_)))
                                   (__tmp244203
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp244204
                                __tmp244203)))
                            (_bind*229911_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241781241782_
                                _L229850_
                                _expr*229909_
                                '#f))))
                       (let ((__tmp244206
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L229850_)))
                             (__tmp244205
                              (map gxc#identifier-symbol _ids229902_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp244206
                          '" => "
                          __tmp244205))
                       (let ((__tmp244207
                              (let ((__tmp244208
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind229258_
                                               _xbind229907_))))
                                (declare (not safe))
                                (cons _bind*229911_ __tmp244208))))
                         (declare (not safe))
                         (_lp229255_ _rest229278_ __tmp244207)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243699243700_
                                                       (lambda (_e229870229919_
                                                                _hd229869229922_
                                                                _tl229868229924_)
                                                         (let ((_L229927_
                                                                _tl229868229924_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L229927_))
                       (___kont243690243691_ _L229927_)
                       (___kont243692243693_ _tl229868229924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243688243689_))
                                                      (let ((_e229870229919_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243688243689_))))
                (let ((_tl229868229924_
                       (let () (declare (not safe)) (##cdr _e229870229919_)))
                      (_hd229869229922_
                       (let () (declare (not safe)) (##car _e229870229919_))))
                  (___match243699243700_
                   _e229870229919_
                   _hd229869229922_
                   _tl229868229924_)))
              (let () (declare (not safe)) (_g229865229879_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243712243713_
                                          (lambda (_L229677_ _L229678_)
                                            (let* ((_g229692229722_
                                                    (lambda (_g229693229719_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229693229719_))))
                                                   (_g229691229817_
                                                    (lambda (_g229693229725_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229693229725_))
                                                          (let ((_e229699229727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229693229725_))))
                    (let ((_hd229698229730_
                           (let ()
                             (declare (not safe))
                             (##car _e229699229727_)))
                          (_tl229697229732_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229699229727_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229697229732_))
                          (let ((_e229702229735_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229697229732_))))
                            (let ((_hd229701229738_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229702229735_)))
                                  (_tl229700229740_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229702229735_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229701229738_))
                                  (let ((_e229705229743_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229701229738_))))
                                    (let ((_hd229704229746_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229705229743_)))
                                          (_tl229703229748_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229705229743_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229704229746_))
                                          (let ((_e229708229751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229704229746_))))
                                            (let ((_hd229707229754_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229708229751_)))
                                                  (_tl229706229756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229708229751_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229707229754_))
                                                  (let ((_e229711229759_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229707229754_))))
                                                    (let ((_hd229710229762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229711229759_)))
                                                          (_tl229709229764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229711229759_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229709229764_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229706229756_))
                      (let ((_e229714229767_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229706229756_))))
                        (let ((_hd229713229770_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229714229767_)))
                              (_tl229712229772_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229714229767_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229712229772_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229703229748_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229700229740_))
                                      (let ((_e229717229775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229700229740_))))
                                        (let ((_hd229716229778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229717229775_)))
                                              (_tl229715229780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229717229775_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229715229780_))
                                              ((lambda (_L229783_
                                                        _L229784_
                                                        _L229785_)
                                                 (let* ((_lambda-id229809_
                                                         (let ((__tmp244210
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L229678_)))
                       (__tmp244209 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp244210 __tmp244209)))
                (_lambda-id229811_
                 (let ((__tmp244211
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx229115_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id229809_ __tmp244211)))
                (_g244212_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id229811_)))
                (_new-case-lambda-expr229814_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L229783_
                    _L229785_
                    _lambda-id229811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp244214
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L229678_)))
                                                         (__tmp244213
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id229811_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp244214
                                                      '" => "
                                                      __tmp244213))
                                                   (let ((__tmp244217
                                                          (let ((__tmp244218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241781241782_
                            _L229678_
                            _new-case-lambda-expr229814_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp244218 _rest229278_)))
                 (__tmp244215
                  (let ((__tmp244216
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241783241784_
                            _lambda-id229811_
                            _L229784_))))
                    (declare (not safe))
                    (cons __tmp244216 _bind229258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp229255_
                                                      __tmp244217
                                                      __tmp244215))))
                                               _hd229716229778_
                                               _hd229713229770_
                                               _hd229710229762_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229692229722_
                                                 _g229693229725_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229692229722_ _g229693229725_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g229692229722_ _g229693229725_)))
                              (let ()
                                (declare (not safe))
                                (_g229692229722_ _g229693229725_)))))
                      (let ()
                        (declare (not safe))
                        (_g229692229722_ _g229693229725_)))
                  (let ()
                    (declare (not safe))
                    (_g229692229722_ _g229693229725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229692229722_
                                                     _g229693229725_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229692229722_
                                             _g229693229725_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229692229722_ _g229693229725_)))))
                          (let ()
                            (declare (not safe))
                            (_g229692229722_ _g229693229725_)))))
                  (let ()
                    (declare (not safe))
                    (_g229692229722_ _g229693229725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229691229817_ _L229677_))))
                                         (___kont243714243715_
                                          (lambda (_L229401_ _L229402_)
                                            (let* ((_g229416229469_
                                                    (lambda (_g229417229466_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229417229466_))))
                                                   (_g229415229645_
                                                    (lambda (_g229417229472_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229417229472_))
                                                          (let ((_e229425229474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229417229472_))))
                    (let ((_hd229424229477_
                           (let ()
                             (declare (not safe))
                             (##car _e229425229474_)))
                          (_tl229423229479_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229425229474_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229423229479_))
                          (let ((_e229428229482_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229423229479_))))
                            (let ((_hd229427229485_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229428229482_)))
                                  (_tl229426229487_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229428229482_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229427229485_))
                                  (let ((_e229431229490_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229427229485_))))
                                    (let ((_hd229430229493_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229431229490_)))
                                          (_tl229429229495_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229431229490_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229430229493_))
                                          (let ((_e229434229498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229430229493_))))
                                            (let ((_hd229433229501_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229434229498_)))
                                                  (_tl229432229503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229434229498_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229433229501_))
                                                  (let ((_e229437229506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229433229501_))))
                                                    (let ((_hd229436229509_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229437229506_)))
                                                          (_tl229435229511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229437229506_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229435229511_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229432229503_))
                      (let ((_e229440229514_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229432229503_))))
                        (let ((_hd229439229517_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229440229514_)))
                              (_tl229438229519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229440229514_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229439229517_))
                              (let ((_e229443229522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229439229517_))))
                                (let ((_hd229442229525_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229443229522_)))
                                      (_tl229441229527_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229443229522_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229441229527_))
                                      (let ((_e229446229530_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229441229527_))))
                                        (let ((_hd229445229533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229446229530_)))
                                              (_tl229444229535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229446229530_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd229445229533_))
                                              (let ((_e229449229538_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd229445229533_))))
                                                (let ((_hd229448229541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229449229538_)))
                                                      (_tl229447229543_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229449229538_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229448229541_))
                                                      (let ((_e229452229546_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd229448229541_))))
                (let ((_hd229451229549_
                       (let () (declare (not safe)) (##car _e229452229546_)))
                      (_tl229450229551_
                       (let () (declare (not safe)) (##cdr _e229452229546_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229451229549_))
                      (let ((_e229455229554_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229451229549_))))
                        (let ((_hd229454229557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229455229554_)))
                              (_tl229453229559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229455229554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229453229559_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229450229551_))
                                  (let ((_e229458229562_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229450229551_))))
                                    (let ((_hd229457229565_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229458229562_)))
                                          (_tl229456229567_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229458229562_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229456229567_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229447229543_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229444229535_))
                                                  (let ((_e229461229570_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229444229535_))))
                                                    (let ((_hd229460229573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229461229570_)))
                                                          (_tl229459229575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229461229570_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229459229575_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl229438229519_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229429229495_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229426229487_))
                              (let ((_e229464229578_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229426229487_))))
                                (let ((_hd229463229581_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229464229578_)))
                                      (_tl229462229583_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229464229578_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229462229583_))
                                      ((lambda (_L229586_
                                                _L229587_
                                                _L229588_
                                                _L229589_
                                                _L229590_)
                                         (let* ((_get-kws-id229630_
                                                 (let ((__tmp244220
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229402_)))
                                                       (__tmp244219
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp244220
                                                    __tmp244219)))
                                                (_get-kws-id229632_
                                                 (let ((__tmp244221
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229115_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id229630_
                                                    __tmp244221)))
                                                (_main-id229634_
                                                 (let ((__tmp244223
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229402_)))
                                                       (__tmp244222
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp244223
                                                    __tmp244222)))
                                                (_main-id229636_
                                                 (let ((__tmp244224
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229115_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id229634_
                                                    __tmp244224)))
                                                (_g244225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id229632_)))
                                                (_g244226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id229636_)))
                                                (_new-kw-dispatch229640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229586_
                                                    _L229590_
                                                    _get-kws-id229632_)))
                                                (_new-get-kws229642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229587_
                                                    _L229589_
                                                    _main-id229636_))))
                                           (let ((__tmp244229
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L229402_)))
                                                 (__tmp244228
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id229632_)))
                                                 (__tmp244227
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id229636_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp244229
                                              '" => "
                                              __tmp244228
                                              '" => "
                                              __tmp244227))
                                           (let ((__tmp244230
                                                  (let ((__tmp244235
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241781241782_
                                                            _main-id229636_
                                                            _L229588_
                                                            '#f)))
                                                        (__tmp244231
                                                         (let ((__tmp244234
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__241781241782_
                           _get-kws-id229632_
                           _new-get-kws229642_
                           '#f)))
                       (__tmp244232
                        (let ((__tmp244233
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__241781241782_
                                  _L229402_
                                  _new-kw-dispatch229640_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp244233 _rest229278_))))
                   (declare (not safe))
                   (cons __tmp244234 __tmp244232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244235
                                                          __tmp244231))))
                                             (declare (not safe))
                                             (_lp229255_
                                              __tmp244230
                                              _bind229258_))))
                                       _hd229463229581_
                                       _hd229460229573_
                                       _hd229457229565_
                                       _hd229454229557_
                                       _hd229436229509_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229416229469_ _g229417229472_)))))
                              (let ()
                                (declare (not safe))
                                (_g229416229469_ _g229417229472_)))
                          (let ()
                            (declare (not safe))
                            (_g229416229469_ _g229417229472_)))
                      (let ()
                        (declare (not safe))
                        (_g229416229469_ _g229417229472_)))
                  (let ()
                    (declare (not safe))
                    (_g229416229469_ _g229417229472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229416229469_
                                                     _g229417229472_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g229416229469_
                                                 _g229417229472_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g229416229469_
                                             _g229417229472_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229416229469_ _g229417229472_)))
                              (let ()
                                (declare (not safe))
                                (_g229416229469_ _g229417229472_)))))
                      (let ()
                        (declare (not safe))
                        (_g229416229469_ _g229417229472_)))))
              (let ()
                (declare (not safe))
                (_g229416229469_ _g229417229472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229416229469_
                                                 _g229417229472_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229416229469_ _g229417229472_)))))
                              (let ()
                                (declare (not safe))
                                (_g229416229469_ _g229417229472_)))))
                      (let ()
                        (declare (not safe))
                        (_g229416229469_ _g229417229472_)))
                  (let ()
                    (declare (not safe))
                    (_g229416229469_ _g229417229472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229416229469_
                                                     _g229417229472_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229416229469_
                                             _g229417229472_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229416229469_ _g229417229472_)))))
                          (let ()
                            (declare (not safe))
                            (_g229416229469_ _g229417229472_)))))
                  (let ()
                    (declare (not safe))
                    (_g229416229469_ _g229417229472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229415229645_ _L229401_))))
                                         (___kont243716243717_
                                          (lambda (_L229352_ _L229353_)
                                            (let ((__tmp244236
                                                   (let ((__tmp244237
                                                          (let ((__tmp244238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244239
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L229352_))))
                           (declare (not safe))
                           (cons __tmp244239 '()))))
                    (declare (not safe))
                    (cons _L229353_ __tmp244238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244237
                                                           _bind229258_))))
                                              (declare (not safe))
                                              (_lp229255_
                                               _rest229278_
                                               __tmp244236)))))
                                     (let* ((___match243783243784_
                                             (lambda (_e229312229377_
                                                      _hd229311229380_
                                                      _tl229310229382_
                                                      _e229315229385_
                                                      _hd229314229388_
                                                      _tl229313229390_
                                                      _e229318229393_
                                                      _hd229317229396_
                                                      _tl229316229398_)
                                               (let ((_L229401_
                                                      _hd229317229396_)
                                                     (_L229402_
                                                      _hd229314229388_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229402_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L229401_)))
                                                     (___kont243714243715_
                                                      _L229401_
                                                      _L229402_)
                                                     (___kont243716243717_
                                                      _hd229317229396_
                                                      _hd229311229380_)))))
                                            (___match243761243762_
                                             (lambda (_e229301229653_
                                                      _hd229300229656_
                                                      _tl229299229658_
                                                      _e229304229661_
                                                      _hd229303229664_
                                                      _tl229302229666_
                                                      _e229307229669_
                                                      _hd229306229672_
                                                      _tl229305229674_)
                                               (let ((_L229677_
                                                      _hd229306229672_)
                                                     (_L229678_
                                                      _hd229303229664_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229678_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L229677_)))
                                                     (___kont243712243713_
                                                      _L229677_
                                                      _L229678_)
                                                     (___match243783243784_
                                                      _e229301229653_
                                                      _hd229300229656_
                                                      _tl229299229658_
                                                      _e229304229661_
                                                      _hd229303229664_
                                                      _tl229302229666_
                                                      _e229307229669_
                                                      _hd229306229672_
                                                      _tl229305229674_)))))
                                            (___match243739243740_
                                             (lambda (_e229290229825_
                                                      _hd229289229828_
                                                      _tl229288229830_
                                                      _e229293229833_
                                                      _hd229292229836_
                                                      _tl229291229838_
                                                      _e229296229841_
                                                      _hd229295229844_
                                                      _tl229294229846_)
                                               (let ((_L229849_
                                                      _hd229295229844_)
                                                     (_L229850_
                                                      _hd229292229836_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229850_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L229849_)))
                                                     (___kont243710243711_
                                                      _L229849_
                                                      _L229850_)
                                                     (___match243761243762_
                                                      _e229290229825_
                                                      _hd229289229828_
                                                      _tl229288229830_
                                                      _e229293229833_
                                                      _hd229292229836_
                                                      _tl229291229838_
                                                      _e229296229841_
                                                      _hd229295229844_
                                                      _tl229294229846_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243708243709_))
                                           (let ((_e229290229825_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243708243709_))))
                                             (let ((_tl229288229830_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229290229825_)))
                                                   (_hd229289229828_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229290229825_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229289229828_))
                                                   (let ((_e229293229833_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229289229828_))))
                                                     (let ((_tl229291229838_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229293229833_)))
                                                           (_hd229292229836_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229293229833_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229291229838_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229288229830_))
                       (let ((_e229296229841_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229288229830_))))
                         (let ((_tl229294229846_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229296229841_)))
                               (_hd229295229844_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229296229841_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229294229846_))
                               (___match243739243740_
                                _e229290229825_
                                _hd229289229828_
                                _tl229288229830_
                                _e229293229833_
                                _hd229292229836_
                                _tl229291229838_
                                _e229296229841_
                                _hd229295229844_
                                _tl229294229846_)
                               (let ()
                                 (declare (not safe))
                                 (_g229284229331_)))))
                       (let () (declare (not safe)) (_g229284229331_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229288229830_))
                       (let ((_e229326229344_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229288229830_))))
                         (let ((_tl229324229349_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229326229344_)))
                               (_hd229325229347_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229326229344_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229324229349_))
                               (___kont243716243717_
                                _hd229325229347_
                                _hd229289229828_)
                               (let ()
                                 (declare (not safe))
                                 (_g229284229331_)))))
                       (let () (declare (not safe)) (_g229284229331_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229288229830_))
                                                       (let ((_e229326229344_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229288229830_))))
                 (let ((_tl229324229349_
                        (let () (declare (not safe)) (##cdr _e229326229344_)))
                       (_hd229325229347_
                        (let () (declare (not safe)) (##car _e229326229344_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229324229349_))
                       (___kont243716243717_ _hd229325229347_ _hd229289229828_)
                       (let () (declare (not safe)) (_g229284229331_)))))
               (let () (declare (not safe)) (_g229284229331_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229284229331_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229259229267_))
                             (let ((_hd229264229945_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229259229267_)))
                                   (_tl229265229947_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229259229267_))))
                               (let* ((_hd229950_ _hd229264229945_)
                                      (_rest229952_ _tl229265229947_))
                                 (declare (not safe))
                                 (_K229263229942_ _rest229952_ _hd229950_)))
                             (let ()
                               (declare (not safe))
                               (_else229261229275_))))))))
          (let* ((___stx243800243801_ _stx229115_)
                 (_g229121229148_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243800243801_)))))
            (let ((___kont243802243803_
                   (lambda (_L229208_ _L229209_ _L229210_)
                     (let ((__tmp244241
                            (lambda ()
                              (let ((_hd229247_
                                     (let ((__tmp244242
                                            (let ((__tmp244243
                                                   (lambda (_g229239229242_
                                                            _g229240229244_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g229239229242_
                                                             _g229240229244_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp244243
                                                      '()
                                                      _L229209_))))
                                       (declare (not safe))
                                       (_compile-bindings229118_ __tmp244242)))
                                    (_body229248_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L229208_))))
                                (let ((__tmp244244
                                       (let ((__tmp244245
                                              (let ((__tmp244246
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body229248_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd229247_
                                                      __tmp244246))))
                                         (declare (not safe))
                                         (cons _L229210_ __tmp244245))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp244244
                                   _stx229115_)))))
                           (__tmp244240
                            (let ((__obj243865
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj243865)
                              __obj243865)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp244241
                        gx#current-expander-context
                        __tmp244240))))
                  (___kont243806243807_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx229115_)))))
              (let ((___match243827243828_
                     (lambda (_e229128229160_
                              _hd229127229163_
                              _tl229126229165_
                              _e229131229168_
                              _hd229130229171_
                              _tl229129229173_
                              ___splice243804243805_
                              _target229132229176_
                              _tl229134229178_)
                       (letrec ((_loop229135229181_
                                 (lambda (_hd229133229184_ _bind229139229186_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd229133229184_))
                                       (let ((_e229136229189_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd229133229184_))))
                                         (let ((_lp-tl229138229194_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229136229189_)))
                                               (_lp-hd229137229192_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229136229189_))))
                                           (let ((__tmp244249
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd229137229192_
                                                          _bind229139229186_))))
                                             (declare (not safe))
                                             (_loop229135229181_
                                              _lp-tl229138229194_
                                              __tmp244249))))
                                       (let ((_bind229140229197_
                                              (reverse _bind229139229186_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl229129229173_))
                                             (let ((_e229143229200_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl229129229173_))))
                                               (let ((_tl229141229205_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e229143229200_)))
                                                     (_hd229142229203_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e229143229200_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl229141229205_))
                                                     (let ((_L229208_
                                                            _hd229142229203_)
                                                           (_L229209_
                                                            _bind229140229197_)
                                                           (_L229210_
                                                            _hd229127229163_))
                                                       (if (let ((__tmp244247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244248
                                 (lambda (_g229231229234_ _g229232229236_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229231229234_ _g229232229236_)))))
                            (declare (not safe))
                            (foldr1 __tmp244248 '() _L229209_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp244247))
                   (___kont243802243803_ _L229208_ _L229209_ _L229210_)
                   (___kont243806243807_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243806243807_))))
                                             (___kont243806243807_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop229135229181_ _target229132229176_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243800243801_))
                    (let ((_e229128229160_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243800243801_))))
                      (let ((_tl229126229165_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229128229160_)))
                            (_hd229127229163_
                             (let ()
                               (declare (not safe))
                               (##car _e229128229160_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229126229165_))
                            (let ((_e229131229168_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229126229165_))))
                              (let ((_tl229129229173_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229131229168_)))
                                    (_hd229130229171_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229131229168_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd229130229171_))
                                    (let ((___splice243804243805_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd229130229171_
                                              '0))))
                                      (let ((_tl229134229178_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243804243805_
                                                '1)))
                                            (_target229132229176_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243804243805_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229134229178_))
                                            (___match243827243828_
                                             _e229128229160_
                                             _hd229127229163_
                                             _tl229126229165_
                                             _e229131229168_
                                             _hd229130229171_
                                             _tl229129229173_
                                             ___splice243804243805_
                                             _target229132229176_
                                             _tl229134229178_)
                                            (___kont243806243807_))))
                                    (___kont243806243807_))))
                            (___kont243806243807_))))
                    (___kont243806243807_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind229033_)
        (let* ((___stx243830243831_ _bind229033_)
               (_g229036229053_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243830243831_)))))
          (let ((___kont243832243833_
                 (lambda (_L229089_ _L229090_)
                   (if (let () (declare (not safe)) (gx#identifier? _L229090_))
                       (let ((_$e229106_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L229089_))))
                         (if _$e229106_
                             _$e229106_
                             (let ((_$e229109_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L229089_))))
                               (if _$e229109_
                                   _$e229109_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L229089_))))))
                       '#f)))
                (___kont243834243835_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243830243831_))
                (let ((_e229042229065_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243830243831_))))
                  (let ((_tl229040229070_
                         (let () (declare (not safe)) (##cdr _e229042229065_)))
                        (_hd229041229068_
                         (let ()
                           (declare (not safe))
                           (##car _e229042229065_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229041229068_))
                        (let ((_e229045229073_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229041229068_))))
                          (let ((_tl229043229078_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229045229073_)))
                                (_hd229044229076_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229045229073_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229043229078_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229040229070_))
                                    (let ((_e229048229081_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229040229070_))))
                                      (let ((_tl229046229086_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229048229081_)))
                                            (_hd229047229084_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229048229081_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229046229086_))
                                            (___kont243832243833_
                                             _hd229047229084_
                                             _hd229044229076_)
                                            (___kont243834243835_))))
                                    (___kont243834243835_))
                                (___kont243834243835_))))
                        (___kont243834243835_))))
                (___kont243834243835_))))))))
