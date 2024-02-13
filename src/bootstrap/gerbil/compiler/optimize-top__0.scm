(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707844658)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl238402_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245063 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238402_ __tmp245063))
           (let ()
             (declare (not safe))
             (table-set! _tbl238402_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238402_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238402_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238402_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl238402_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx238385_ . _args238387_)
        (let ((__tmp245065
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238387_)
                     (gxc#compile-e__0 _stx238385_)
                     (let ((_arg1238392_ (car _args238387_))
                           (_rest238394_ (cdr _args238387_)))
                       (if (null? _rest238394_)
                           (gxc#compile-e__1 _stx238385_ _arg1238392_)
                           (let ((_arg2238397_ (car _rest238394_))
                                 (_rest238399_ (cdr _rest238394_)))
                             (if (null? _rest238399_)
                                 (gxc#compile-e__2
                                  _stx238385_
                                  _arg1238392_
                                  _arg2238397_)
                                 (apply gxc#compile-e
                                        _stx238385_
                                        _arg1238392_
                                        _arg2238397_
                                        _rest238399_))))))))
              (__tmp245064 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp245065
           gxc#current-compile-methods
           __tmp245064))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl238382_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245066 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl238382_ __tmp245066))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238382_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238382_ '%#call gxc#basic-expression-type-call%))
           _tbl238382_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx238365_ . _args238367_)
        (let ((__tmp245068
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238367_)
                     (gxc#compile-e__0 _stx238365_)
                     (let ((_arg1238372_ (car _args238367_))
                           (_rest238374_ (cdr _args238367_)))
                       (if (null? _rest238374_)
                           (gxc#compile-e__1 _stx238365_ _arg1238372_)
                           (let ((_arg2238377_ (car _rest238374_))
                                 (_rest238379_ (cdr _rest238374_)))
                             (if (null? _rest238379_)
                                 (gxc#compile-e__2
                                  _stx238365_
                                  _arg1238372_
                                  _arg2238377_)
                                 (apply gxc#compile-e
                                        _stx238365_
                                        _arg1238372_
                                        _arg2238377_
                                        _rest238379_))))))))
              (__tmp245067 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp245068
           gxc#current-compile-methods
           __tmp245067))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl238362_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245069 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238362_ __tmp245069))
           (let ()
             (declare (not safe))
             (table-set! _tbl238362_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238362_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238362_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238362_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238362_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238362_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238362_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238362_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238362_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238362_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238362_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238362_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl238362_ '%#set! gxc#collect-body-setq%))
           _tbl238362_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx238345_ . _args238347_)
        (let ((__tmp245071
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238347_)
                     (gxc#compile-e__0 _stx238345_)
                     (let ((_arg1238352_ (car _args238347_))
                           (_rest238354_ (cdr _args238347_)))
                       (if (null? _rest238354_)
                           (gxc#compile-e__1 _stx238345_ _arg1238352_)
                           (let ((_arg2238357_ (car _rest238354_))
                                 (_rest238359_ (cdr _rest238354_)))
                             (if (null? _rest238359_)
                                 (gxc#compile-e__2
                                  _stx238345_
                                  _arg1238352_
                                  _arg2238357_)
                                 (apply gxc#compile-e
                                        _stx238345_
                                        _arg1238352_
                                        _arg2238357_
                                        _rest238359_))))))))
              (__tmp245070 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp245071
           gxc#current-compile-methods
           __tmp245070))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl238342_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245072 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl238342_ __tmp245072))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238342_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238342_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238342_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238342_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238342_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238342_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238342_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238342_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238342_ '%#ref gxc#basic-expression-type-ref%))
           _tbl238342_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx238325_ . _args238327_)
        (let ((__tmp245074
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238327_)
                     (gxc#compile-e__0 _stx238325_)
                     (let ((_arg1238332_ (car _args238327_))
                           (_rest238334_ (cdr _args238327_)))
                       (if (null? _rest238334_)
                           (gxc#compile-e__1 _stx238325_ _arg1238332_)
                           (let ((_arg2238337_ (car _rest238334_))
                                 (_rest238339_ (cdr _rest238334_)))
                             (if (null? _rest238339_)
                                 (gxc#compile-e__2
                                  _stx238325_
                                  _arg1238332_
                                  _arg2238337_)
                                 (apply gxc#compile-e
                                        _stx238325_
                                        _arg1238332_
                                        _arg2238337_
                                        _rest238339_))))))))
              (__tmp245073 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp245074
           gxc#current-compile-methods
           __tmp245073))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl238322_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245075 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl238322_ __tmp245075))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238322_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238322_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238322_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238322_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl238322_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx238305_ . _args238307_)
        (let ((__tmp245077
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238307_)
                     (gxc#compile-e__0 _stx238305_)
                     (let ((_arg1238312_ (car _args238307_))
                           (_rest238314_ (cdr _args238307_)))
                       (if (null? _rest238314_)
                           (gxc#compile-e__1 _stx238305_ _arg1238312_)
                           (let ((_arg2238317_ (car _rest238314_))
                                 (_rest238319_ (cdr _rest238314_)))
                             (if (null? _rest238319_)
                                 (gxc#compile-e__2
                                  _stx238305_
                                  _arg1238312_
                                  _arg2238317_)
                                 (apply gxc#compile-e
                                        _stx238305_
                                        _arg1238312_
                                        _arg2238317_
                                        _rest238319_))))))))
              (__tmp245076 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp245077
           gxc#current-compile-methods
           __tmp245076))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx238208_)
        (let* ((___stx242983242984_ _stx238208_)
               (_g238211238231_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242983242984_)))))
          (let ((___kont242985242986_
                 (lambda (_L238275_ _L238276_)
                   (let ((_sym238294_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L238276_))))
                     (if (let ((__tmp245078 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp245078 _sym238294_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym238294_))
                         (let ((_type238295238297_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L238275_))))
                           (if _type238295238297_
                               (let ((_type238300_ _type238295238297_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym238294_
                                  _type238300_))
                               '#f))))))
                (___kont242987242988_ (lambda () '#!void)))
            (let ((___match243016243017_
                   (lambda (_e238217238243_
                            _hd238216238246_
                            _tl238215238248_
                            _e238220238251_
                            _hd238219238254_
                            _tl238218238256_
                            _e238223238259_
                            _hd238222238262_
                            _tl238221238264_
                            _e238226238267_
                            _hd238225238270_
                            _tl238224238272_)
                     (let ((_L238275_ _hd238225238270_)
                           (_L238276_ _hd238222238262_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L238276_))
                           (___kont242985242986_ _L238275_ _L238276_)
                           (___kont242987242988_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242983242984_))
                  (let ((_e238217238243_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242983242984_))))
                    (let ((_tl238215238248_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238217238243_)))
                          (_hd238216238246_
                           (let ()
                             (declare (not safe))
                             (##car _e238217238243_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238215238248_))
                          (let ((_e238220238251_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238215238248_))))
                            (let ((_tl238218238256_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238220238251_)))
                                  (_hd238219238254_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238220238251_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238219238254_))
                                  (let ((_e238223238259_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238219238254_))))
                                    (let ((_tl238221238264_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238223238259_)))
                                          (_hd238222238262_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238223238259_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238221238264_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238218238256_))
                                              (let ((_e238226238267_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238218238256_))))
                                                (let ((_tl238224238272_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238226238267_)))
                                                      (_hd238225238270_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238226238267_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238224238272_))
                                                      (___match243016243017_
                                                       _e238217238243_
                                                       _hd238216238246_
                                                       _tl238215238248_
                                                       _e238220238251_
                                                       _hd238219238254_
                                                       _tl238218238256_
                                                       _e238223238259_
                                                       _hd238222238262_
                                                       _tl238221238264_
                                                       _e238226238267_
                                                       _hd238225238270_
                                                       _tl238224238272_)
                                                      (___kont242987242988_))))
                                              (___kont242987242988_))
                                          (___kont242987242988_))))
                                  (___kont242987242988_))))
                          (___kont242987242988_))))
                  (___kont242987242988_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx238064_)
        (let* ((___stx243019243020_ _stx238064_)
               (_g238067238098_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243019243020_)))))
          (let ((___kont243021243022_
                 (lambda (_L238180_ _L238181_)
                   (let ((_sym238197_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L238181_))))
                     (if (let ((__tmp245079 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp245079 _sym238197_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym238197_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym238197_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym238197_))
                             (let ((_type238198238200_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L238180_))))
                               (if _type238198238200_
                                   (let ((_type238203_ _type238198238200_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym238197_
                                      _type238203_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L238180_)))))
                (___kont243023243024_
                 (lambda (_L238127_ _L238128_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L238127_)))))
            (let ((___match243052243053_
                   (lambda (_e238073238148_
                            _hd238072238151_
                            _tl238071238153_
                            _e238076238156_
                            _hd238075238159_
                            _tl238074238161_
                            _e238079238164_
                            _hd238078238167_
                            _tl238077238169_
                            _e238082238172_
                            _hd238081238175_
                            _tl238080238177_)
                     (let ((_L238180_ _hd238081238175_)
                           (_L238181_ _hd238078238167_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L238181_))
                           (___kont243021243022_ _L238180_ _L238181_)
                           (___kont243023243024_
                            _hd238081238175_
                            _hd238075238159_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243019243020_))
                  (let ((_e238073238148_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243019243020_))))
                    (let ((_tl238071238153_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238073238148_)))
                          (_hd238072238151_
                           (let ()
                             (declare (not safe))
                             (##car _e238073238148_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238071238153_))
                          (let ((_e238076238156_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238071238153_))))
                            (let ((_tl238074238161_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238076238156_)))
                                  (_hd238075238159_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238076238156_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238075238159_))
                                  (let ((_e238079238164_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238075238159_))))
                                    (let ((_tl238077238169_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238079238164_)))
                                          (_hd238078238167_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238079238164_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238077238169_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238074238161_))
                                              (let ((_e238082238172_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238074238161_))))
                                                (let ((_tl238080238177_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238082238172_)))
                                                      (_hd238081238175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238082238172_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238080238177_))
                                                      (___match243052243053_
                                                       _e238073238148_
                                                       _hd238072238151_
                                                       _tl238071238153_
                                                       _e238076238156_
                                                       _hd238075238159_
                                                       _tl238074238161_
                                                       _e238079238164_
                                                       _hd238078238167_
                                                       _tl238077238169_
                                                       _e238082238172_
                                                       _hd238081238175_
                                                       _tl238080238177_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g238067238098_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g238067238098_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238074238161_))
                                              (let ((_e238093238119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238074238161_))))
                                                (let ((_tl238091238124_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238093238119_)))
                                                      (_hd238092238122_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238093238119_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238091238124_))
                                                      (___kont243023243024_
                                                       _hd238092238122_
                                                       _hd238075238159_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g238067238098_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g238067238098_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238074238161_))
                                      (let ((_e238093238119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238074238161_))))
                                        (let ((_tl238091238124_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238093238119_)))
                                              (_hd238092238122_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238093238119_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238091238124_))
                                              (___kont243023243024_
                                               _hd238092238122_
                                               _hd238075238159_)
                                              (let ()
                                                (declare (not safe))
                                                (_g238067238098_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238067238098_))))))
                          (let () (declare (not safe)) (_g238067238098_)))))
                  (let () (declare (not safe)) (_g238067238098_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx237849_)
        (letrec ((_collect-e237851_
                  (lambda (_hd238008_ _expr238009_)
                    (let* ((___stx243075243076_ _hd238008_)
                           (_g238012238022_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx243075243076_)))))
                      (let ((___kont243077243078_
                             (lambda (_L238042_)
                               (let ((_sym238053_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L238042_))))
                                 (if (let ((__tmp245080
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp245080 _sym238053_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym238053_))
                                     (let ((_type238054238056_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr238009_))))
                                       (if _type238054238056_
                                           (let ((_type238059_
                                                  _type238054238056_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym238053_
                                              _type238059_
                                              '#t))
                                           '#f))))))
                            (___kont243079243080_ (lambda () '#!void)))
                        (let ((___match243088243089_
                               (lambda (_e238017238034_
                                        _hd238016238037_
                                        _tl238015238039_)
                                 (let ((_L238042_ _hd238016238037_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L238042_))
                                       (___kont243077243078_ _L238042_)
                                       (___kont243079243080_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx243075243076_))
                              (let ((_e238017238034_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx243075243076_))))
                                (let ((_tl238015238039_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238017238034_)))
                                      (_hd238016238037_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238017238034_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238015238039_))
                                      (___match243088243089_
                                       _e238017238034_
                                       _hd238016238037_
                                       _tl238015238039_)
                                      (___kont243079243080_))))
                              (___kont243079243080_))))))))
          (let* ((_g237853237888_
                  (lambda (_g237854237885_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g237854237885_))))
                 (_g237852238005_
                  (lambda (_g237854237891_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g237854237891_))
                        (let ((_e237860237893_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g237854237891_))))
                          (let ((_hd237859237896_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237860237893_)))
                                (_tl237858237898_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237860237893_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237858237898_))
                                (let ((_e237863237901_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237858237898_))))
                                  (let ((_hd237862237904_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237863237901_)))
                                        (_tl237861237906_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237863237901_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd237862237904_))
                                        (let ((_g245081_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd237862237904_
                                                  '0))))
                                          (begin
                                            (let ((_g245082_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g245081_)
                                                         (##vector-length
                                                          _g245081_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g245082_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g245082_)))
                                            (let ((_target237864237909_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g245081_
                                                      0)))
                                                  (_tl237866237911_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g245081_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237866237911_))
                                                  (letrec ((_loop237867237914_
                                                            (lambda (_hd237865237917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr237871237919_
                             _hd237872237921_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd237865237917_))
                          (let ((_e237868237924_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd237865237917_))))
                            (let ((_lp-hd237869237927_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237868237924_)))
                                  (_lp-tl237870237929_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237868237924_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd237869237927_))
                                  (let ((_e237877237932_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd237869237927_))))
                                    (let ((_hd237876237935_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237877237932_)))
                                          (_tl237875237937_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237877237932_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl237875237937_))
                                          (let ((_e237880237940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl237875237937_))))
                                            (let ((_hd237879237943_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237880237940_)))
                                                  (_tl237878237945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237880237940_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237878237945_))
                                                  (let ((__tmp245087
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd237879237943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr237871237919_)))
                (__tmp245086
                 (let ()
                   (declare (not safe))
                   (cons _hd237876237935_ _hd237872237921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop237867237914_
                                                     _lp-tl237870237929_
                                                     __tmp245087
                                                     __tmp245086))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237853237888_
                                                     _g237854237891_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237853237888_
                                             _g237854237891_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237853237888_ _g237854237891_)))))
                          (let ((_expr237873237948_
                                 (reverse _expr237871237919_))
                                (_hd237874237950_ (reverse _hd237872237921_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237861237906_))
                                (let ((_e237883237953_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237861237906_))))
                                  (let ((_hd237882237956_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237883237953_)))
                                        (_tl237881237958_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237883237953_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237881237958_))
                                        ((lambda (_L237961_
                                                  _L237962_
                                                  _L237963_)
                                           (for-each
                                            _collect-e237851_
                                            (let ((__tmp245083
                                                   (lambda (_g237983237986_
                                                            _g237984237988_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237983237986_
                                                             _g237984237988_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245083
                                                      '()
                                                      _L237963_))
                                            (let ((__tmp245084
                                                   (lambda (_g237990237993_
                                                            _g237991237995_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237990237993_
                                                             _g237991237995_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245084
                                                      '()
                                                      _L237962_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp245085
                                                   (lambda (_g237997238000_
                                                            _g237998238002_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237997238000_
                                                             _g237998238002_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245085
                                                      '()
                                                      _L237962_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L237961_)))
                                         _hd237882237956_
                                         _expr237873237948_
                                         _hd237874237950_)
                                        (let ()
                                          (declare (not safe))
                                          (_g237853237888_ _g237854237891_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237853237888_ _g237854237891_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop237867237914_
                                                       _target237864237909_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237853237888_
                                                     _g237854237891_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237853237888_ _g237854237891_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237853237888_ _g237854237891_)))))
                        (let ()
                          (declare (not safe))
                          (_g237853237888_ _g237854237891_))))))
            (declare (not safe))
            (_g237852238005_ _stx237849_)))))
    (define gxc#collect-type-call%
      (lambda (_stx237341_)
        (let* ((___stx243091243092_ _stx237341_)
               (_g237345237460_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243091243092_)))))
          (let ((___kont243093243094_
                 (lambda (_L237799_ _L237800_ _L237801_ _L237802_ _L237803_)
                   (let ((__tmp245091
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237802_)))
                         (__tmp245090
                          (let () (declare (not safe)) (gx#stx-e _L237801_)))
                         (__tmp245089
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237800_)))
                         (__tmp245088
                          (let () (declare (not safe)) (gx#stx-e _L237799_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp245091
                      __tmp245090
                      __tmp245089
                      __tmp245088))))
                (___kont243095243096_
                 (lambda (_L237627_ _L237628_ _L237629_ _L237630_)
                   (let ((__tmp245094
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237629_)))
                         (__tmp245093
                          (let () (declare (not safe)) (gx#stx-e _L237628_)))
                         (__tmp245092
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237627_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp245094
                      __tmp245093
                      __tmp245092
                      '#f))))
                (___kont243097243098_
                 (lambda (_L237497_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp245095
                           (lambda (_g237510237513_ _g237511237515_)
                             (let ()
                               (declare (not safe))
                               (cons _g237510237513_ _g237511237515_)))))
                      (declare (not safe))
                      (foldr1 __tmp245095 '() _L237497_))))))
            (let* ((___match243348243349_
                    (lambda (_e237446237465_
                             _hd237445237468_
                             _tl237444237470_
                             ___splice243099243100_
                             _target237447237473_
                             _tl237449237475_)
                      (letrec ((_loop237450237478_
                                (lambda (_hd237448237481_ _expr237454237483_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd237448237481_))
                                      (let ((_e237451237486_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd237448237481_))))
                                        (let ((_lp-tl237453237491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237451237486_)))
                                              (_lp-hd237452237489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237451237486_))))
                                          (let ((__tmp245096
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd237452237489_
                                                         _expr237454237483_))))
                                            (declare (not safe))
                                            (_loop237450237478_
                                             _lp-tl237453237491_
                                             __tmp245096))))
                                      (let ((_expr237455237494_
                                             (reverse _expr237454237483_)))
                                        (___kont243097243098_
                                         _expr237455237494_))))))
                        (let ()
                          (declare (not safe))
                          (_loop237450237478_ _target237447237473_ '())))))
                   (___match243228243229_
                    (lambda (_e237354237671_
                             _hd237353237674_
                             _tl237352237676_
                             _e237357237679_
                             _hd237356237682_
                             _tl237355237684_
                             _e237360237687_
                             _hd237359237690_
                             _tl237358237692_
                             _e237363237695_
                             _hd237362237698_
                             _tl237361237700_
                             _e237366237703_
                             _hd237365237706_
                             _tl237364237708_
                             _e237369237711_
                             _hd237368237714_
                             _tl237367237716_
                             _e237372237719_
                             _hd237371237722_
                             _tl237370237724_
                             _e237375237727_
                             _hd237374237730_
                             _tl237373237732_
                             _e237378237735_
                             _hd237377237738_
                             _tl237376237740_
                             _e237381237743_
                             _hd237380237746_
                             _tl237379237748_
                             _e237384237751_
                             _hd237383237754_
                             _tl237382237756_
                             _e237387237759_
                             _hd237386237762_
                             _tl237385237764_
                             _e237390237767_
                             _hd237389237770_
                             _tl237388237772_
                             _e237393237775_
                             _hd237392237778_
                             _tl237391237780_
                             _e237396237783_
                             _hd237395237786_
                             _tl237394237788_
                             _e237399237791_
                             _hd237398237794_
                             _tl237397237796_)
                      (let ((_L237799_ _hd237398237794_)
                            (_L237800_ _hd237389237770_)
                            (_L237801_ _hd237380237746_)
                            (_L237802_ _hd237371237722_)
                            (_L237803_ _hd237362237698_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L237803_
                               'bind-method!))
                            (___kont243093243094_
                             _L237799_
                             _L237800_
                             _L237801_
                             _L237802_
                             _L237803_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl237352237676_))
                                (let ((___splice243099243100_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl237352237676_
                                          '0))))
                                  (let ((_tl237449237475_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice243099243100_
                                            '1)))
                                        (_target237447237473_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice243099243100_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237449237475_))
                                        (___match243348243349_
                                         _e237354237671_
                                         _hd237353237674_
                                         _tl237352237676_
                                         ___splice243099243100_
                                         _target237447237473_
                                         _tl237449237475_)
                                        (let ()
                                          (declare (not safe))
                                          (_g237345237460_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237345237460_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243091243092_))
                  (let ((_e237354237671_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243091243092_))))
                    (let ((_tl237352237676_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237354237671_)))
                          (_hd237353237674_
                           (let ()
                             (declare (not safe))
                             (##car _e237354237671_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237352237676_))
                          (let ((_e237357237679_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237352237676_))))
                            (let ((_tl237355237684_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237357237679_)))
                                  (_hd237356237682_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237357237679_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237356237682_))
                                  (let ((_e237360237687_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237356237682_))))
                                    (let ((_tl237358237692_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237360237687_)))
                                          (_hd237359237690_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237360237687_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd237359237690_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd237359237690_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237358237692_))
                                                  (let ((_e237363237695_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237358237692_))))
                                                    (let ((_tl237361237700_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237363237695_)))
                                                          (_hd237362237698_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237363237695_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237361237700_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237355237684_))
                      (let ((_e237366237703_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237355237684_))))
                        (let ((_tl237364237708_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237366237703_)))
                              (_hd237365237706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237366237703_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd237365237706_))
                              (let ((_e237369237711_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd237365237706_))))
                                (let ((_tl237367237716_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237369237711_)))
                                      (_hd237368237714_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237369237711_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd237368237714_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd237368237714_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237367237716_))
                                              (let ((_e237372237719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237367237716_))))
                                                (let ((_tl237370237724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237372237719_)))
                                                      (_hd237371237722_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237372237719_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237370237724_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl237364237708_))
                                                          (let ((_e237375237727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl237364237708_))))
                    (let ((_tl237373237732_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237375237727_)))
                          (_hd237374237730_
                           (let ()
                             (declare (not safe))
                             (##car _e237375237727_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd237374237730_))
                          (let ((_e237378237735_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd237374237730_))))
                            (let ((_tl237376237740_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237378237735_)))
                                  (_hd237377237738_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237378237735_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd237377237738_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd237377237738_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl237376237740_))
                                          (let ((_e237381237743_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl237376237740_))))
                                            (let ((_tl237379237748_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237381237743_)))
                                                  (_hd237380237746_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237381237743_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237379237748_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl237373237732_))
                                                      (let ((_e237384237751_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl237373237732_))))
                (let ((_tl237382237756_
                       (let () (declare (not safe)) (##cdr _e237384237751_)))
                      (_hd237383237754_
                       (let () (declare (not safe)) (##car _e237384237751_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237383237754_))
                      (let ((_e237387237759_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237383237754_))))
                        (let ((_tl237385237764_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237387237759_)))
                              (_hd237386237762_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237387237759_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd237386237762_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd237386237762_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237385237764_))
                                      (let ((_e237390237767_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237385237764_))))
                                        (let ((_tl237388237772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237390237767_)))
                                              (_hd237389237770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237390237767_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237388237772_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237382237756_))
                                                  (let ((_e237393237775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237382237756_))))
                                                    (let ((_tl237391237780_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237393237775_)))
                                                          (_hd237392237778_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237393237775_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd237392237778_))
                                                          (let ((_e237396237783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd237392237778_))))
                    (let ((_tl237394237788_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237396237783_)))
                          (_hd237395237786_
                           (let ()
                             (declare (not safe))
                             (##car _e237396237783_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd237395237786_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd237395237786_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl237394237788_))
                                  (let ((_e237399237791_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl237394237788_))))
                                    (let ((_tl237397237796_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237399237791_)))
                                          (_hd237398237794_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237399237791_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237397237796_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237391237780_))
                                              (___match243228243229_
                                               _e237354237671_
                                               _hd237353237674_
                                               _tl237352237676_
                                               _e237357237679_
                                               _hd237356237682_
                                               _tl237355237684_
                                               _e237360237687_
                                               _hd237359237690_
                                               _tl237358237692_
                                               _e237363237695_
                                               _hd237362237698_
                                               _tl237361237700_
                                               _e237366237703_
                                               _hd237365237706_
                                               _tl237364237708_
                                               _e237369237711_
                                               _hd237368237714_
                                               _tl237367237716_
                                               _e237372237719_
                                               _hd237371237722_
                                               _tl237370237724_
                                               _e237375237727_
                                               _hd237374237730_
                                               _tl237373237732_
                                               _e237378237735_
                                               _hd237377237738_
                                               _tl237376237740_
                                               _e237381237743_
                                               _hd237380237746_
                                               _tl237379237748_
                                               _e237384237751_
                                               _hd237383237754_
                                               _tl237382237756_
                                               _e237387237759_
                                               _hd237386237762_
                                               _tl237385237764_
                                               _e237390237767_
                                               _hd237389237770_
                                               _tl237388237772_
                                               _e237393237775_
                                               _hd237392237778_
                                               _tl237391237780_
                                               _e237396237783_
                                               _hd237395237786_
                                               _tl237394237788_
                                               _e237399237791_
                                               _hd237398237794_
                                               _tl237397237796_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237352237676_))
                                                  (let ((___splice243099243100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237352237676_
                                                            '0))))
                                                    (let ((_tl237449237475_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243099243100_
                                                              '1)))
                                                          (_target237447237473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243099243100_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237449237475_))
                                                          (___match243348243349_
                                                           _e237354237671_
                                                           _hd237353237674_
                                                           _tl237352237676_
                                                           ___splice243099243100_
                                                           _target237447237473_
                                                           _tl237449237475_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237345237460_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237345237460_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237352237676_))
                                              (let ((___splice243099243100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237352237676_
                                                        '0))))
                                                (let ((_tl237449237475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243099243100_
                                                          '1)))
                                                      (_target237447237473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243099243100_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237449237475_))
                                                      (___match243348243349_
                                                       _e237354237671_
                                                       _hd237353237674_
                                                       _tl237352237676_
                                                       ___splice243099243100_
                                                       _target237447237473_
                                                       _tl237449237475_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237345237460_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237345237460_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237352237676_))
                                      (let ((___splice243099243100_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237352237676_
                                                '0))))
                                        (let ((_tl237449237475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243099243100_
                                                  '1)))
                                              (_target237447237473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243099243100_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237449237475_))
                                              (___match243348243349_
                                               _e237354237671_
                                               _hd237353237674_
                                               _tl237352237676_
                                               ___splice243099243100_
                                               _target237447237473_
                                               _tl237449237475_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237345237460_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237345237460_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237352237676_))
                                  (let ((___splice243099243100_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237352237676_
                                            '0))))
                                    (let ((_tl237449237475_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243099243100_
                                              '1)))
                                          (_target237447237473_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243099243100_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237449237475_))
                                          (___match243348243349_
                                           _e237354237671_
                                           _hd237353237674_
                                           _tl237352237676_
                                           ___splice243099243100_
                                           _target237447237473_
                                           _tl237449237475_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237345237460_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237345237460_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237352237676_))
                              (let ((___splice243099243100_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237352237676_
                                        '0))))
                                (let ((_tl237449237475_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243099243100_
                                          '1)))
                                      (_target237447237473_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243099243100_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237449237475_))
                                      (___match243348243349_
                                       _e237354237671_
                                       _hd237353237674_
                                       _tl237352237676_
                                       ___splice243099243100_
                                       _target237447237473_
                                       _tl237449237475_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237345237460_)))))
                              (let ()
                                (declare (not safe))
                                (_g237345237460_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237352237676_))
                      (let ((___splice243099243100_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237352237676_ '0))))
                        (let ((_tl237449237475_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243099243100_ '1)))
                              (_target237447237473_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243099243100_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237449237475_))
                              (___match243348243349_
                               _e237354237671_
                               _hd237353237674_
                               _tl237352237676_
                               ___splice243099243100_
                               _target237447237473_
                               _tl237449237475_)
                              (let ()
                                (declare (not safe))
                                (_g237345237460_)))))
                      (let () (declare (not safe)) (_g237345237460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237382237756_))
                                                      (if (let ((__tmp245097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp245097 'bind-method!))
                  (let ((_L237627_ _hd237389237770_)
                        (_L237628_ _hd237380237746_)
                        (_L237629_ _hd237371237722_)
                        (_L237630_ _hd237362237698_))
                    (___kont243095243096_
                     _L237627_
                     _L237628_
                     _L237629_
                     _L237630_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237352237676_))
                      (let ((___splice243099243100_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237352237676_ '0))))
                        (let ((_tl237449237475_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243099243100_ '1)))
                              (_target237447237473_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243099243100_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237449237475_))
                              (___match243348243349_
                               _e237354237671_
                               _hd237353237674_
                               _tl237352237676_
                               ___splice243099243100_
                               _target237447237473_
                               _tl237449237475_)
                              (let ()
                                (declare (not safe))
                                (_g237345237460_)))))
                      (let () (declare (not safe)) (_g237345237460_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237352237676_))
                  (let ((___splice243099243100_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237352237676_ '0))))
                    (let ((_tl237449237475_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243099243100_ '1)))
                          (_target237447237473_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243099243100_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237449237475_))
                          (___match243348243349_
                           _e237354237671_
                           _hd237353237674_
                           _tl237352237676_
                           ___splice243099243100_
                           _target237447237473_
                           _tl237449237475_)
                          (let () (declare (not safe)) (_g237345237460_)))))
                  (let () (declare (not safe)) (_g237345237460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237352237676_))
                                                  (let ((___splice243099243100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237352237676_
                                                            '0))))
                                                    (let ((_tl237449237475_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243099243100_
                                                              '1)))
                                                          (_target237447237473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243099243100_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237449237475_))
                                                          (___match243348243349_
                                                           _e237354237671_
                                                           _hd237353237674_
                                                           _tl237352237676_
                                                           ___splice243099243100_
                                                           _target237447237473_
                                                           _tl237449237475_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237345237460_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237345237460_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237352237676_))
                                          (let ((___splice243099243100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237352237676_
                                                    '0))))
                                            (let ((_tl237449237475_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243099243100_
                                                      '1)))
                                                  (_target237447237473_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243099243100_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237449237475_))
                                                  (___match243348243349_
                                                   _e237354237671_
                                                   _hd237353237674_
                                                   _tl237352237676_
                                                   ___splice243099243100_
                                                   _target237447237473_
                                                   _tl237449237475_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237345237460_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237345237460_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237352237676_))
                                      (let ((___splice243099243100_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237352237676_
                                                '0))))
                                        (let ((_tl237449237475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243099243100_
                                                  '1)))
                                              (_target237447237473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243099243100_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237449237475_))
                                              (___match243348243349_
                                               _e237354237671_
                                               _hd237353237674_
                                               _tl237352237676_
                                               ___splice243099243100_
                                               _target237447237473_
                                               _tl237449237475_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237345237460_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237345237460_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237352237676_))
                                  (let ((___splice243099243100_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237352237676_
                                            '0))))
                                    (let ((_tl237449237475_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243099243100_
                                              '1)))
                                          (_target237447237473_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243099243100_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237449237475_))
                                          (___match243348243349_
                                           _e237354237671_
                                           _hd237353237674_
                                           _tl237352237676_
                                           ___splice243099243100_
                                           _target237447237473_
                                           _tl237449237475_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237345237460_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237345237460_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl237352237676_))
                          (let ((___splice243099243100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl237352237676_
                                    '0))))
                            (let ((_tl237449237475_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243099243100_ '1)))
                                  (_target237447237473_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243099243100_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237449237475_))
                                  (___match243348243349_
                                   _e237354237671_
                                   _hd237353237674_
                                   _tl237352237676_
                                   ___splice243099243100_
                                   _target237447237473_
                                   _tl237449237475_)
                                  (let ()
                                    (declare (not safe))
                                    (_g237345237460_)))))
                          (let () (declare (not safe)) (_g237345237460_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237352237676_))
                  (let ((___splice243099243100_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237352237676_ '0))))
                    (let ((_tl237449237475_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243099243100_ '1)))
                          (_target237447237473_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243099243100_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237449237475_))
                          (___match243348243349_
                           _e237354237671_
                           _hd237353237674_
                           _tl237352237676_
                           ___splice243099243100_
                           _target237447237473_
                           _tl237449237475_)
                          (let () (declare (not safe)) (_g237345237460_)))))
                  (let () (declare (not safe)) (_g237345237460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl237352237676_))
                                                      (let ((___splice243099243100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl237352237676_ '0))))
                (let ((_tl237449237475_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243099243100_ '1)))
                      (_target237447237473_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243099243100_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl237449237475_))
                      (___match243348243349_
                       _e237354237671_
                       _hd237353237674_
                       _tl237352237676_
                       ___splice243099243100_
                       _target237447237473_
                       _tl237449237475_)
                      (let () (declare (not safe)) (_g237345237460_)))))
              (let () (declare (not safe)) (_g237345237460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237352237676_))
                                              (let ((___splice243099243100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237352237676_
                                                        '0))))
                                                (let ((_tl237449237475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243099243100_
                                                          '1)))
                                                      (_target237447237473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243099243100_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237449237475_))
                                                      (___match243348243349_
                                                       _e237354237671_
                                                       _hd237353237674_
                                                       _tl237352237676_
                                                       ___splice243099243100_
                                                       _target237447237473_
                                                       _tl237449237475_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237345237460_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237345237460_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237352237676_))
                                          (let ((___splice243099243100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237352237676_
                                                    '0))))
                                            (let ((_tl237449237475_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243099243100_
                                                      '1)))
                                                  (_target237447237473_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243099243100_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237449237475_))
                                                  (___match243348243349_
                                                   _e237354237671_
                                                   _hd237353237674_
                                                   _tl237352237676_
                                                   ___splice243099243100_
                                                   _target237447237473_
                                                   _tl237449237475_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237345237460_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237345237460_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237352237676_))
                                      (let ((___splice243099243100_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237352237676_
                                                '0))))
                                        (let ((_tl237449237475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243099243100_
                                                  '1)))
                                              (_target237447237473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243099243100_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237449237475_))
                                              (___match243348243349_
                                               _e237354237671_
                                               _hd237353237674_
                                               _tl237352237676_
                                               ___splice243099243100_
                                               _target237447237473_
                                               _tl237449237475_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237345237460_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237345237460_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237352237676_))
                              (let ((___splice243099243100_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237352237676_
                                        '0))))
                                (let ((_tl237449237475_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243099243100_
                                          '1)))
                                      (_target237447237473_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243099243100_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237449237475_))
                                      (___match243348243349_
                                       _e237354237671_
                                       _hd237353237674_
                                       _tl237352237676_
                                       ___splice243099243100_
                                       _target237447237473_
                                       _tl237449237475_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237345237460_)))))
                              (let ()
                                (declare (not safe))
                                (_g237345237460_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237352237676_))
                      (let ((___splice243099243100_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237352237676_ '0))))
                        (let ((_tl237449237475_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243099243100_ '1)))
                              (_target237447237473_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243099243100_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237449237475_))
                              (___match243348243349_
                               _e237354237671_
                               _hd237353237674_
                               _tl237352237676_
                               ___splice243099243100_
                               _target237447237473_
                               _tl237449237475_)
                              (let ()
                                (declare (not safe))
                                (_g237345237460_)))))
                      (let () (declare (not safe)) (_g237345237460_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237352237676_))
                  (let ((___splice243099243100_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237352237676_ '0))))
                    (let ((_tl237449237475_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243099243100_ '1)))
                          (_target237447237473_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243099243100_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237449237475_))
                          (___match243348243349_
                           _e237354237671_
                           _hd237353237674_
                           _tl237352237676_
                           ___splice243099243100_
                           _target237447237473_
                           _tl237449237475_)
                          (let () (declare (not safe)) (_g237345237460_)))))
                  (let () (declare (not safe)) (_g237345237460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237352237676_))
                                                  (let ((___splice243099243100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237352237676_
                                                            '0))))
                                                    (let ((_tl237449237475_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243099243100_
                                                              '1)))
                                                          (_target237447237473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243099243100_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237449237475_))
                                                          (___match243348243349_
                                                           _e237354237671_
                                                           _hd237353237674_
                                                           _tl237352237676_
                                                           ___splice243099243100_
                                                           _target237447237473_
                                                           _tl237449237475_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237345237460_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237345237460_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237352237676_))
                                              (let ((___splice243099243100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237352237676_
                                                        '0))))
                                                (let ((_tl237449237475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243099243100_
                                                          '1)))
                                                      (_target237447237473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243099243100_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237449237475_))
                                                      (___match243348243349_
                                                       _e237354237671_
                                                       _hd237353237674_
                                                       _tl237352237676_
                                                       ___splice243099243100_
                                                       _target237447237473_
                                                       _tl237449237475_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237345237460_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237345237460_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237352237676_))
                                          (let ((___splice243099243100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237352237676_
                                                    '0))))
                                            (let ((_tl237449237475_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243099243100_
                                                      '1)))
                                                  (_target237447237473_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243099243100_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237449237475_))
                                                  (___match243348243349_
                                                   _e237354237671_
                                                   _hd237353237674_
                                                   _tl237352237676_
                                                   ___splice243099243100_
                                                   _target237447237473_
                                                   _tl237449237475_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237345237460_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237345237460_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237352237676_))
                                  (let ((___splice243099243100_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237352237676_
                                            '0))))
                                    (let ((_tl237449237475_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243099243100_
                                              '1)))
                                          (_target237447237473_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243099243100_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237449237475_))
                                          (___match243348243349_
                                           _e237354237671_
                                           _hd237353237674_
                                           _tl237352237676_
                                           ___splice243099243100_
                                           _target237447237473_
                                           _tl237449237475_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237345237460_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237345237460_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl237352237676_))
                          (let ((___splice243099243100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl237352237676_
                                    '0))))
                            (let ((_tl237449237475_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243099243100_ '1)))
                                  (_target237447237473_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243099243100_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237449237475_))
                                  (___match243348243349_
                                   _e237354237671_
                                   _hd237353237674_
                                   _tl237352237676_
                                   ___splice243099243100_
                                   _target237447237473_
                                   _tl237449237475_)
                                  (let ()
                                    (declare (not safe))
                                    (_g237345237460_)))))
                          (let () (declare (not safe)) (_g237345237460_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237352237676_))
                      (let ((___splice243099243100_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237352237676_ '0))))
                        (let ((_tl237449237475_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243099243100_ '1)))
                              (_target237447237473_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243099243100_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237449237475_))
                              (___match243348243349_
                               _e237354237671_
                               _hd237353237674_
                               _tl237352237676_
                               ___splice243099243100_
                               _target237447237473_
                               _tl237449237475_)
                              (let ()
                                (declare (not safe))
                                (_g237345237460_)))))
                      (let () (declare (not safe)) (_g237345237460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl237352237676_))
                                                      (let ((___splice243099243100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl237352237676_ '0))))
                (let ((_tl237449237475_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243099243100_ '1)))
                      (_target237447237473_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243099243100_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl237449237475_))
                      (___match243348243349_
                       _e237354237671_
                       _hd237353237674_
                       _tl237352237676_
                       ___splice243099243100_
                       _target237447237473_
                       _tl237449237475_)
                      (let () (declare (not safe)) (_g237345237460_)))))
              (let () (declare (not safe)) (_g237345237460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237352237676_))
                                                  (let ((___splice243099243100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237352237676_
                                                            '0))))
                                                    (let ((_tl237449237475_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243099243100_
                                                              '1)))
                                                          (_target237447237473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243099243100_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237449237475_))
                                                          (___match243348243349_
                                                           _e237354237671_
                                                           _hd237353237674_
                                                           _tl237352237676_
                                                           ___splice243099243100_
                                                           _target237447237473_
                                                           _tl237449237475_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237345237460_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237345237460_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237352237676_))
                                              (let ((___splice243099243100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237352237676_
                                                        '0))))
                                                (let ((_tl237449237475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243099243100_
                                                          '1)))
                                                      (_target237447237473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243099243100_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237449237475_))
                                                      (___match243348243349_
                                                       _e237354237671_
                                                       _hd237353237674_
                                                       _tl237352237676_
                                                       ___splice243099243100_
                                                       _target237447237473_
                                                       _tl237449237475_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237345237460_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237345237460_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237352237676_))
                                      (let ((___splice243099243100_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237352237676_
                                                '0))))
                                        (let ((_tl237449237475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243099243100_
                                                  '1)))
                                              (_target237447237473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243099243100_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237449237475_))
                                              (___match243348243349_
                                               _e237354237671_
                                               _hd237353237674_
                                               _tl237352237676_
                                               ___splice243099243100_
                                               _target237447237473_
                                               _tl237449237475_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237345237460_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237345237460_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237352237676_))
                              (let ((___splice243099243100_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237352237676_
                                        '0))))
                                (let ((_tl237449237475_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243099243100_
                                          '1)))
                                      (_target237447237473_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243099243100_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237449237475_))
                                      (___match243348243349_
                                       _e237354237671_
                                       _hd237353237674_
                                       _tl237352237676_
                                       ___splice243099243100_
                                       _target237447237473_
                                       _tl237449237475_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237345237460_)))))
                              (let ()
                                (declare (not safe))
                                (_g237345237460_))))))
                  (let () (declare (not safe)) (_g237345237460_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx237281_)
        (let* ((___stx243351243352_ _stx237281_)
               (_g237284237297_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243351243352_)))))
          (let ((___kont243353243354_
                 (lambda (_L237325_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L237325_))))
                (___kont243355243356_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243351243352_))
                (let ((_e237289237309_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243351243352_))))
                  (let ((_tl237287237314_
                         (let () (declare (not safe)) (##cdr _e237289237309_)))
                        (_hd237288237312_
                         (let ()
                           (declare (not safe))
                           (##car _e237289237309_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl237287237314_))
                        (let ((_e237292237317_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237287237314_))))
                          (let ((_tl237290237322_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237292237317_)))
                                (_hd237291237320_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237292237317_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl237290237322_))
                                (___kont243353243354_ _hd237291237320_)
                                (___kont243355243356_))))
                        (___kont243355243356_))))
                (___kont243355243356_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx237161_)
        (let* ((_g237163237180_
                (lambda (_g237164237177_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237164237177_))))
               (_g237162237278_
                (lambda (_g237164237183_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237164237183_))
                      (let ((_e237169237185_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237164237183_))))
                        (let ((_hd237168237188_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237169237185_)))
                              (_tl237167237190_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237169237185_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237167237190_))
                              (let ((_e237172237193_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237167237190_))))
                                (let ((_hd237171237196_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237172237193_)))
                                      (_tl237170237198_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237172237193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237170237198_))
                                      (let ((_e237175237201_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237170237198_))))
                                        (let ((_hd237174237204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237175237201_)))
                                              (_tl237173237206_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237175237201_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237173237206_))
                                              ((lambda (_L237209_ _L237210_)
                                                 (let* ((___stx243373243374_
                                                         _L237210_)
                                                        (_g237226237237_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx243373243374_)))))
                                                   (let ((___kont243375243376_
                                                          (lambda (_L237257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L237258_)
                    (let ((_$e237270_
                           (let ((__tmp245098
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L237258_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp245098
                              '#f))))
                      (if _$e237270_
                          ((lambda (_type-e237273_)
                             (_type-e237273_ _stx237161_ _L237210_))
                           _$e237270_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L237209_))))))
                 (___kont243377243378_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L237209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match243384243385_
                                                            (lambda (_e237232237249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd237231237252_
                             _tl237230237254_)
                      (let ((_L237257_ _tl237230237254_)
                            (_L237258_ _hd237231237252_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L237258_))
                            (___kont243375243376_ _L237257_ _L237258_)
                            (___kont243377243378_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx243373243374_))
                   (let ((_e237232237249_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx243373243374_))))
                     (let ((_tl237230237254_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237232237249_)))
                           (_hd237231237252_
                            (let ()
                              (declare (not safe))
                              (##car _e237232237249_))))
                       (___match243384243385_
                        _e237232237249_
                        _hd237231237252_
                        _tl237230237254_)))
                   (___kont243377243378_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd237174237204_
                                               _hd237171237196_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237163237180_
                                                 _g237164237183_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237163237180_ _g237164237183_)))))
                              (let ()
                                (declare (not safe))
                                (_g237163237180_ _g237164237183_)))))
                      (let ()
                        (declare (not safe))
                        (_g237163237180_ _g237164237183_))))))
          (declare (not safe))
          (_g237162237278_ _stx237161_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx237005_ _ann237006_)
        (let* ((_g237008237045_
                (lambda (_g237009237042_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237009237042_))))
               (_g237007237158_
                (lambda (_g237009237048_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237009237048_))
                      (let ((_e237019237050_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237009237048_))))
                        (let ((_hd237018237053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237019237050_)))
                              (_tl237017237055_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237019237050_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237017237055_))
                              (let ((_e237022237058_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237017237055_))))
                                (let ((_hd237021237061_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237022237058_)))
                                      (_tl237020237063_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237022237058_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237020237063_))
                                      (let ((_e237025237066_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237020237063_))))
                                        (let ((_hd237024237069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237025237066_)))
                                              (_tl237023237071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237025237066_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237023237071_))
                                              (let ((_e237028237074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237023237071_))))
                                                (let ((_hd237027237077_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237028237074_)))
                                                      (_tl237026237079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237028237074_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl237026237079_))
                                                      (let ((_e237031237082_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl237026237079_))))
                (let ((_hd237030237085_
                       (let () (declare (not safe)) (##car _e237031237082_)))
                      (_tl237029237087_
                       (let () (declare (not safe)) (##cdr _e237031237082_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl237029237087_))
                      (let ((_e237034237090_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237029237087_))))
                        (let ((_hd237033237093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237034237090_)))
                              (_tl237032237095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237034237090_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237032237095_))
                              (let ((_e237037237098_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237032237095_))))
                                (let ((_hd237036237101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237037237098_)))
                                      (_tl237035237103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237037237098_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237035237103_))
                                      (let ((_e237040237106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237035237103_))))
                                        (let ((_hd237039237109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237040237106_)))
                                              (_tl237038237111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237040237106_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237038237111_))
                                              ((lambda (_L237114_
                                                        _L237115_
                                                        _L237116_
                                                        _L237117_
                                                        _L237118_
                                                        _L237119_
                                                        _L237120_)
                                                 (let ((_type-id237150_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237120_)))
                                                       (_super237151_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L237119_)))
                                                       (_slots237152_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L237118_)))
                                                       (_ctor-method237153_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237117_)))
                                                       (_struct?237154_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237116_)))
                                                       (_final?237155_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237115_)))
                                                       (_metaclass237156_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L237114_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L237114_))
                                                            '#f)))
                                                   (let ((__obj245056
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
                                                      __obj245056
                                                      _type-id237150_
                                                      _super237151_
                                                      _slots237152_
                                                      _ctor-method237153_
                                                      _struct?237154_
                                                      _final?237155_
                                                      _metaclass237156_)
                                                     __obj245056)))
                                               _hd237039237109_
                                               _hd237036237101_
                                               _hd237033237093_
                                               _hd237030237085_
                                               _hd237027237077_
                                               _hd237024237069_
                                               _hd237021237061_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237008237045_
                                                 _g237009237048_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237008237045_ _g237009237048_)))))
                              (let ()
                                (declare (not safe))
                                (_g237008237045_ _g237009237048_)))))
                      (let ()
                        (declare (not safe))
                        (_g237008237045_ _g237009237048_)))))
              (let ()
                (declare (not safe))
                (_g237008237045_ _g237009237048_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237008237045_
                                                 _g237009237048_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237008237045_ _g237009237048_)))))
                              (let ()
                                (declare (not safe))
                                (_g237008237045_ _g237009237048_)))))
                      (let ()
                        (declare (not safe))
                        (_g237008237045_ _g237009237048_))))))
          (declare (not safe))
          (_g237007237158_ _ann237006_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx236953_ _ann236954_)
        (let* ((_g236956236969_
                (lambda (_g236957236966_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236957236966_))))
               (_g236955237002_
                (lambda (_g236957236972_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236957236972_))
                      (let ((_e236961236974_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236957236972_))))
                        (let ((_hd236960236977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236961236974_)))
                              (_tl236959236979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236961236974_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236959236979_))
                              (let ((_e236964236982_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236959236979_))))
                                (let ((_hd236963236985_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236964236982_)))
                                      (_tl236962236987_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236964236982_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236962236987_))
                                      ((lambda (_L236990_)
                                         (let ((__tmp245099
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L236990_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp245099)))
                                       _hd236963236985_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236956236969_ _g236957236972_)))))
                              (let ()
                                (declare (not safe))
                                (_g236956236969_ _g236957236972_)))))
                      (let ()
                        (declare (not safe))
                        (_g236956236969_ _g236957236972_))))))
          (declare (not safe))
          (_g236955237002_ _ann236954_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx236901_ _ann236902_)
        (let* ((_g236904236917_
                (lambda (_g236905236914_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236905236914_))))
               (_g236903236950_
                (lambda (_g236905236920_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236905236920_))
                      (let ((_e236909236922_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236905236920_))))
                        (let ((_hd236908236925_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236909236922_)))
                              (_tl236907236927_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236909236922_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236907236927_))
                              (let ((_e236912236930_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236907236927_))))
                                (let ((_hd236911236933_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236912236930_)))
                                      (_tl236910236935_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236912236930_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236910236935_))
                                      ((lambda (_L236938_)
                                         (let ((__tmp245100
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L236938_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp245100)))
                                       _hd236911236933_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236904236917_ _g236905236920_)))))
                              (let ()
                                (declare (not safe))
                                (_g236904236917_ _g236905236920_)))))
                      (let ()
                        (declare (not safe))
                        (_g236904236917_ _g236905236920_))))))
          (declare (not safe))
          (_g236903236950_ _ann236902_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx236817_ _ann236818_)
        (let* ((_g236820236841_
                (lambda (_g236821236838_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236821236838_))))
               (_g236819236898_
                (lambda (_g236821236844_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236821236844_))
                      (let ((_e236827236846_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236821236844_))))
                        (let ((_hd236826236849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236827236846_)))
                              (_tl236825236851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236827236846_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236825236851_))
                              (let ((_e236830236854_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236825236851_))))
                                (let ((_hd236829236857_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236830236854_)))
                                      (_tl236828236859_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236830236854_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236828236859_))
                                      (let ((_e236833236862_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236828236859_))))
                                        (let ((_hd236832236865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236833236862_)))
                                              (_tl236831236867_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236833236862_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236831236867_))
                                              (let ((_e236836236870_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236831236867_))))
                                                (let ((_hd236835236873_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236836236870_)))
                                                      (_tl236834236875_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236836236870_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236834236875_))
                                                      ((lambda (_L236878_
                                                                _L236879_
                                                                _L236880_)
                                                         (let ((__tmp245103
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236880_)))
                       (__tmp245102
                        (let () (declare (not safe)) (gx#stx-e _L236879_)))
                       (__tmp245101
                        (let () (declare (not safe)) (gx#stx-e _L236878_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp245103
                    __tmp245102
                    __tmp245101)))
               _hd236835236873_
               _hd236832236865_
               _hd236829236857_)
              (let ()
                (declare (not safe))
                (_g236820236841_ _g236821236844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236820236841_
                                                 _g236821236844_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236820236841_ _g236821236844_)))))
                              (let ()
                                (declare (not safe))
                                (_g236820236841_ _g236821236844_)))))
                      (let ()
                        (declare (not safe))
                        (_g236820236841_ _g236821236844_))))))
          (declare (not safe))
          (_g236819236898_ _ann236818_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx236733_ _ann236734_)
        (let* ((_g236736236757_
                (lambda (_g236737236754_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236737236754_))))
               (_g236735236814_
                (lambda (_g236737236760_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236737236760_))
                      (let ((_e236743236762_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236737236760_))))
                        (let ((_hd236742236765_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236743236762_)))
                              (_tl236741236767_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236743236762_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236741236767_))
                              (let ((_e236746236770_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236741236767_))))
                                (let ((_hd236745236773_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236746236770_)))
                                      (_tl236744236775_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236746236770_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236744236775_))
                                      (let ((_e236749236778_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236744236775_))))
                                        (let ((_hd236748236781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236749236778_)))
                                              (_tl236747236783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236749236778_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236747236783_))
                                              (let ((_e236752236786_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236747236783_))))
                                                (let ((_hd236751236789_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236752236786_)))
                                                      (_tl236750236791_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236752236786_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236750236791_))
                                                      ((lambda (_L236794_
                                                                _L236795_
                                                                _L236796_)
                                                         (let ((__tmp245106
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236796_)))
                       (__tmp245105
                        (let () (declare (not safe)) (gx#stx-e _L236795_)))
                       (__tmp245104
                        (let () (declare (not safe)) (gx#stx-e _L236794_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp245106
                    __tmp245105
                    __tmp245104)))
               _hd236751236789_
               _hd236748236781_
               _hd236745236773_)
              (let ()
                (declare (not safe))
                (_g236736236757_ _g236737236760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236736236757_
                                                 _g236737236760_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236736236757_ _g236737236760_)))))
                              (let ()
                                (declare (not safe))
                                (_g236736236757_ _g236737236760_)))))
                      (let ()
                        (declare (not safe))
                        (_g236736236757_ _g236737236760_))))))
          (declare (not safe))
          (_g236735236814_ _ann236734_))))
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
      (lambda (_stx235853_)
        (let* ((___stx243387243388_ _stx235853_)
               (_g235859236055_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243387243388_)))))
          (let ((___kont243389243390_
                 (lambda (_L236721_)
                   (let ((__obj245057
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245057
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236721_))
                      '#f)
                     __obj245057)))
                (___kont243391243392_
                 (lambda (_L236648_
                          _L236649_
                          _L236650_
                          _L236651_
                          _L236652_
                          _L236653_)
                   (let* ((_tab236703_
                           (let () (declare (not safe)) (gx#stx-e _L236650_)))
                          (_keys236705_
                           (if _tab236703_
                               (let ((__tmp245107 (vector->list _tab236703_)))
                                 (declare (not safe))
                                 (filter values __tmp245107))
                               '#f)))
                     (let ((__tmp245108
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L236649_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys236705_
                        __tmp245108)))))
                (___kont243393243394_
                 (lambda (_L236381_
                          _L236382_
                          _L236383_
                          _L236384_
                          _L236385_
                          _L236386_
                          _L236387_
                          _L236388_
                          _L236389_
                          _L236390_)
                   (let ((__tmp245110
                          (map gx#stx-e
                               (let ((__tmp245111
                                      (lambda (_g236483236486_ _g236484236488_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g236483236486_
                                                _g236484236488_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp245111 '() _L236383_))))
                         (__tmp245109
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236387_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp245110
                      __tmp245109))))
                (___kont243397243398_
                 (lambda (_L236091_)
                   (let ((__obj245058
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245058
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236091_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L236091_)))
                     __obj245058)))
                (___kont243399243400_
                 (lambda (_L236068_)
                   (let ((__obj245059
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245059
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236068_))
                      '#f)
                     __obj245059))))
            (let* ((___match243706243707_
                    (lambda (_e236046236083_ _hd236045236086_ _tl236044236088_)
                      (let ((_L236091_ _tl236044236088_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L236091_))
                            (___kont243397243398_ _L236091_)
                            (___kont243399243400_ _tl236044236088_)))))
                   (___match243700243701_
                    (lambda (_e235940236105_
                             _hd235939236108_
                             _tl235938236110_
                             _e235943236113_
                             _hd235942236116_
                             _tl235941236118_
                             _e235946236121_
                             _hd235945236124_
                             _tl235944236126_
                             _e235949236129_
                             _hd235948236132_
                             _tl235947236134_
                             _e235952236137_
                             _hd235951236140_
                             _tl235950236142_
                             _e235955236145_
                             _hd235954236148_
                             _tl235953236150_
                             _e235958236153_
                             _hd235957236156_
                             _tl235956236158_
                             _e235961236161_
                             _hd235960236164_
                             _tl235959236166_
                             _e235964236169_
                             _hd235963236172_
                             _tl235962236174_
                             _e235967236177_
                             _hd235966236180_
                             _tl235965236182_
                             _e235970236185_
                             _hd235969236188_
                             _tl235968236190_
                             _e235973236193_
                             _hd235972236196_
                             _tl235971236198_
                             _e235976236201_
                             _hd235975236204_
                             _tl235974236206_
                             _e235979236209_
                             _hd235978236212_
                             _tl235977236214_
                             ___splice243395243396_
                             _target235980236217_
                             _tl235982236219_
                             _e235997236222_
                             _hd235996236225_
                             _tl235995236227_
                             _e236000236230_
                             _hd235999236233_
                             _tl235998236235_
                             _e236003236238_
                             _hd236002236241_
                             _tl236001236243_)
                      (letrec ((_loop235983236246_
                                (lambda (_hd235981236249_
                                         _-absent-value235987236251_
                                         _key235988236253_
                                         _-xkwvar235989236255_
                                         _-hash-ref235990236257_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd235981236249_))
                                      (let ((_e235984236260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd235981236249_))))
                                        (let ((_lp-tl235986236265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235984236260_)))
                                              (_lp-hd235985236263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235984236260_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd235985236263_))
                                              (let ((_e236006236268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd235985236263_))))
                                                (let ((_tl236004236273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236006236268_)))
                                                      (_hd236005236271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236006236268_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd236005236271_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd236005236271_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236004236273_))
                      (let ((_e236009236276_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236004236273_))))
                        (let ((_tl236007236281_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236009236276_)))
                              (_hd236008236279_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236009236276_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd236008236279_))
                              (let ((_e236012236284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd236008236279_))))
                                (let ((_tl236010236289_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236012236284_)))
                                      (_hd236011236287_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236012236284_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd236011236287_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd236011236287_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236010236289_))
                                              (let ((_e236015236292_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236010236289_))))
                                                (let ((_tl236013236297_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236015236292_)))
                                                      (_hd236014236295_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236015236292_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236013236297_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl236007236281_))
                                                          (let ((_e236018236300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl236007236281_))))
                    (let ((_tl236016236305_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236018236300_)))
                          (_hd236017236303_
                           (let ()
                             (declare (not safe))
                             (##car _e236018236300_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236017236303_))
                          (let ((_e236021236308_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236017236303_))))
                            (let ((_tl236019236313_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236021236308_)))
                                  (_hd236020236311_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236021236308_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd236020236311_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd236020236311_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236019236313_))
                                          (let ((_e236024236316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236019236313_))))
                                            (let ((_tl236022236321_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236024236316_)))
                                                  (_hd236023236319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236024236316_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236022236321_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl236016236305_))
                                                      (let ((_e236027236324_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl236016236305_))))
                (let ((_tl236025236329_
                       (let () (declare (not safe)) (##cdr _e236027236324_)))
                      (_hd236026236327_
                       (let () (declare (not safe)) (##car _e236027236324_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236026236327_))
                      (let ((_e236030236332_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236026236327_))))
                        (let ((_tl236028236337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236030236332_)))
                              (_hd236029236335_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236030236332_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd236029236335_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd236029236335_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236028236337_))
                                      (let ((_e236033236340_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236028236337_))))
                                        (let ((_tl236031236345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236033236340_)))
                                              (_hd236032236343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236033236340_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236031236345_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236025236329_))
                                                  (let ((_e236036236348_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236025236329_))))
                                                    (let ((_tl236034236353_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236036236348_)))
                                                          (_hd236035236351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236036236348_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd236035236351_))
                                                          (let ((_e236039236356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd236035236351_))))
                    (let ((_tl236037236361_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236039236356_)))
                          (_hd236038236359_
                           (let ()
                             (declare (not safe))
                             (##car _e236039236356_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd236038236359_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd236038236359_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236037236361_))
                                  (let ((_e236042236364_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236037236361_))))
                                    (let ((_tl236040236369_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236042236364_)))
                                          (_hd236041236367_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236042236364_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236040236369_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236034236353_))
                                              (let ((__tmp245126
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236041236367_
                                                             _-absent-value235987236251_)))
                                                    (__tmp245125
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236032236343_
                                                             _key235988236253_)))
                                                    (__tmp245124
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236023236319_
                                                             _-xkwvar235989236255_)))
                                                    (__tmp245123
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236014236295_
                                                             _-hash-ref235990236257_))))
                                                (declare (not safe))
                                                (_loop235983236246_
                                                 _lp-tl235986236265_
                                                 __tmp245126
                                                 __tmp245125
                                                 __tmp245124
                                                 __tmp245123))
                                              (___match243706243707_
                                               _e235940236105_
                                               _hd235939236108_
                                               _tl235938236110_))
                                          (___match243706243707_
                                           _e235940236105_
                                           _hd235939236108_
                                           _tl235938236110_))))
                                  (___match243706243707_
                                   _e235940236105_
                                   _hd235939236108_
                                   _tl235938236110_))
                              (___match243706243707_
                               _e235940236105_
                               _hd235939236108_
                               _tl235938236110_))
                          (___match243706243707_
                           _e235940236105_
                           _hd235939236108_
                           _tl235938236110_))))
                  (___match243706243707_
                   _e235940236105_
                   _hd235939236108_
                   _tl235938236110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243706243707_
                                                   _e235940236105_
                                                   _hd235939236108_
                                                   _tl235938236110_))
                                              (___match243706243707_
                                               _e235940236105_
                                               _hd235939236108_
                                               _tl235938236110_))))
                                      (___match243706243707_
                                       _e235940236105_
                                       _hd235939236108_
                                       _tl235938236110_))
                                  (___match243706243707_
                                   _e235940236105_
                                   _hd235939236108_
                                   _tl235938236110_))
                              (___match243706243707_
                               _e235940236105_
                               _hd235939236108_
                               _tl235938236110_))))
                      (___match243706243707_
                       _e235940236105_
                       _hd235939236108_
                       _tl235938236110_))))
              (___match243706243707_
               _e235940236105_
               _hd235939236108_
               _tl235938236110_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243706243707_
                                                   _e235940236105_
                                                   _hd235939236108_
                                                   _tl235938236110_))))
                                          (___match243706243707_
                                           _e235940236105_
                                           _hd235939236108_
                                           _tl235938236110_))
                                      (___match243706243707_
                                       _e235940236105_
                                       _hd235939236108_
                                       _tl235938236110_))
                                  (___match243706243707_
                                   _e235940236105_
                                   _hd235939236108_
                                   _tl235938236110_))))
                          (___match243706243707_
                           _e235940236105_
                           _hd235939236108_
                           _tl235938236110_))))
                  (___match243706243707_
                   _e235940236105_
                   _hd235939236108_
                   _tl235938236110_))
              (___match243706243707_
               _e235940236105_
               _hd235939236108_
               _tl235938236110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243706243707_
                                               _e235940236105_
                                               _hd235939236108_
                                               _tl235938236110_))
                                          (___match243706243707_
                                           _e235940236105_
                                           _hd235939236108_
                                           _tl235938236110_))
                                      (___match243706243707_
                                       _e235940236105_
                                       _hd235939236108_
                                       _tl235938236110_))))
                              (___match243706243707_
                               _e235940236105_
                               _hd235939236108_
                               _tl235938236110_))))
                      (___match243706243707_
                       _e235940236105_
                       _hd235939236108_
                       _tl235938236110_))
                  (___match243706243707_
                   _e235940236105_
                   _hd235939236108_
                   _tl235938236110_))
              (___match243706243707_
               _e235940236105_
               _hd235939236108_
               _tl235938236110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243706243707_
                                               _e235940236105_
                                               _hd235939236108_
                                               _tl235938236110_))))
                                      (let ((_-hash-ref235994236378_
                                             (reverse _-hash-ref235990236257_))
                                            (_-xkwvar235993236376_
                                             (reverse _-xkwvar235989236255_))
                                            (_key235992236374_
                                             (reverse _key235988236253_))
                                            (_-absent-value235991236372_
                                             (reverse _-absent-value235987236251_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235947236134_))
                                            (let ((_L236381_ _hd236002236241_)
                                                  (_L236382_
                                                   _-absent-value235991236372_)
                                                  (_L236383_ _key235992236374_)
                                                  (_L236384_
                                                   _-xkwvar235993236376_)
                                                  (_L236385_
                                                   _-hash-ref235994236378_)
                                                  (_L236386_ _hd235978236212_)
                                                  (_L236387_ _hd235969236188_)
                                                  (_L236388_ _hd235960236164_)
                                                  (_L236389_ _tl235944236126_)
                                                  (_L236390_ _hd235945236124_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L236390_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L236389_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L236388_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L236390_
                                                          _L236386_))
                                                       (let ((__tmp245121
                                                              (let ((__tmp245122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g236443236446_ _g236444236448_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236443236446_ _g236444236448_)))))
                        (declare (not safe))
                        (foldr1 __tmp245122 '() _L236383_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp245121))
               (let ((__tmp245120
                      (lambda (_g236450236452_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g236450236452_
                           'hash-ref))))
                     (__tmp245118
                      (let ((__tmp245119
                             (lambda (_g236454236457_ _g236455236459_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236454236457_ _g236455236459_)))))
                        (declare (not safe))
                        (foldr1 __tmp245119 '() _L236385_))))
                 (declare (not safe))
                 (andmap1 __tmp245120 __tmp245118))
               (let ((__tmp245117
                      (lambda (_g236461236463_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g236461236463_
                           'absent-value))))
                     (__tmp245115
                      (let ((__tmp245116
                             (lambda (_g236465236468_ _g236466236470_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236465236468_ _g236466236470_)))))
                        (declare (not safe))
                        (foldr1 __tmp245116 '() _L236382_))))
                 (declare (not safe))
                 (andmap1 __tmp245117 __tmp245115))
               (let ((__tmp245114
                      (lambda (_g236472236474_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g236472236474_ _L236390_))))
                     (__tmp245112
                      (let ((__tmp245113
                             (lambda (_g236476236479_ _g236477236481_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236476236479_ _g236477236481_)))))
                        (declare (not safe))
                        (foldr1 __tmp245113 '() _L236384_))))
                 (declare (not safe))
                 (andmap1 __tmp245114 __tmp245112)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243393243394_
                                                   _L236381_
                                                   _L236382_
                                                   _L236383_
                                                   _L236384_
                                                   _L236385_
                                                   _L236386_
                                                   _L236387_
                                                   _L236388_
                                                   _L236389_
                                                   _L236390_)
                                                  (___match243706243707_
                                                   _e235940236105_
                                                   _hd235939236108_
                                                   _tl235938236110_)))
                                            (___match243706243707_
                                             _e235940236105_
                                             _hd235939236108_
                                             _tl235938236110_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop235983236246_
                           _target235980236217_
                           '()
                           '()
                           '()
                           '())))))
                   (___match243572243573_
                    (lambda (_e235940236105_
                             _hd235939236108_
                             _tl235938236110_
                             _e235943236113_
                             _hd235942236116_
                             _tl235941236118_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235942236116_))
                          (let ((_e235946236121_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235942236116_))))
                            (let ((_tl235944236126_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235946236121_)))
                                  (_hd235945236124_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235946236121_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235941236118_))
                                  (let ((_e235949236129_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235941236118_))))
                                    (let ((_tl235947236134_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235949236129_)))
                                          (_hd235948236132_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235949236129_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235948236132_))
                                          (let ((_e235952236137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235948236132_))))
                                            (let ((_tl235950236142_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235952236137_)))
                                                  (_hd235951236140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235952236137_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd235951236140_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd235951236140_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235950236142_))
                                                          (let ((_e235955236145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235950236142_))))
                    (let ((_tl235953236150_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235955236145_)))
                          (_hd235954236148_
                           (let ()
                             (declare (not safe))
                             (##car _e235955236145_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235954236148_))
                          (let ((_e235958236153_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235954236148_))))
                            (let ((_tl235956236158_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235958236153_)))
                                  (_hd235957236156_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235958236153_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235957236156_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235957236156_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235956236158_))
                                          (let ((_e235961236161_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235956236158_))))
                                            (let ((_tl235959236166_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235961236161_)))
                                                  (_hd235960236164_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235961236161_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235959236166_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235953236150_))
                                                      (let ((_e235964236169_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235953236150_))))
                (let ((_tl235962236174_
                       (let () (declare (not safe)) (##cdr _e235964236169_)))
                      (_hd235963236172_
                       (let () (declare (not safe)) (##car _e235964236169_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235963236172_))
                      (let ((_e235967236177_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235963236172_))))
                        (let ((_tl235965236182_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235967236177_)))
                              (_hd235966236180_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235967236177_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235966236180_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235966236180_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235965236182_))
                                      (let ((_e235970236185_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235965236182_))))
                                        (let ((_tl235968236190_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235970236185_)))
                                              (_hd235969236188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235970236185_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235968236190_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235962236174_))
                                                  (let ((_e235973236193_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235962236174_))))
                                                    (let ((_tl235971236198_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235973236193_)))
                                                          (_hd235972236196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235973236193_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235972236196_))
                                                          (let ((_e235976236201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235972236196_))))
                    (let ((_tl235974236206_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235976236201_)))
                          (_hd235975236204_
                           (let ()
                             (declare (not safe))
                             (##car _e235976236201_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235975236204_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd235975236204_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235974236206_))
                                  (let ((_e235979236209_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235974236206_))))
                                    (let ((_tl235977236214_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235979236209_)))
                                          (_hd235978236212_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235979236209_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235977236214_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235971236198_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl235971236198_))
                                                        '1)
                                                  (let ((___splice243395243396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235971236198_
                                                            '1))))
                                                    (let ((_tl235982236219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243395243396_
                                                              '1)))
                                                          (_target235980236217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243395243396_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235982236219_))
                                                          (let ((_e235997236222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235982236219_))))
                    (let ((_tl235995236227_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235997236222_)))
                          (_hd235996236225_
                           (let ()
                             (declare (not safe))
                             (##car _e235997236222_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235996236225_))
                          (let ((_e236000236230_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235996236225_))))
                            (let ((_tl235998236235_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236000236230_)))
                                  (_hd235999236233_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236000236230_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235999236233_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235999236233_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235998236235_))
                                          (let ((_e236003236238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235998236235_))))
                                            (let ((_tl236001236243_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236003236238_)))
                                                  (_hd236002236241_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236003236238_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236001236243_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235995236227_))
                                                      (___match243700243701_
                                                       _e235940236105_
                                                       _hd235939236108_
                                                       _tl235938236110_
                                                       _e235943236113_
                                                       _hd235942236116_
                                                       _tl235941236118_
                                                       _e235946236121_
                                                       _hd235945236124_
                                                       _tl235944236126_
                                                       _e235949236129_
                                                       _hd235948236132_
                                                       _tl235947236134_
                                                       _e235952236137_
                                                       _hd235951236140_
                                                       _tl235950236142_
                                                       _e235955236145_
                                                       _hd235954236148_
                                                       _tl235953236150_
                                                       _e235958236153_
                                                       _hd235957236156_
                                                       _tl235956236158_
                                                       _e235961236161_
                                                       _hd235960236164_
                                                       _tl235959236166_
                                                       _e235964236169_
                                                       _hd235963236172_
                                                       _tl235962236174_
                                                       _e235967236177_
                                                       _hd235966236180_
                                                       _tl235965236182_
                                                       _e235970236185_
                                                       _hd235969236188_
                                                       _tl235968236190_
                                                       _e235973236193_
                                                       _hd235972236196_
                                                       _tl235971236198_
                                                       _e235976236201_
                                                       _hd235975236204_
                                                       _tl235974236206_
                                                       _e235979236209_
                                                       _hd235978236212_
                                                       _tl235977236214_
                                                       ___splice243395243396_
                                                       _target235980236217_
                                                       _tl235982236219_
                                                       _e235997236222_
                                                       _hd235996236225_
                                                       _tl235995236227_
                                                       _e236000236230_
                                                       _hd235999236233_
                                                       _tl235998236235_
                                                       _e236003236238_
                                                       _hd236002236241_
                                                       _tl236001236243_)
                                                      (___match243706243707_
                                                       _e235940236105_
                                                       _hd235939236108_
                                                       _tl235938236110_))
                                                  (___match243706243707_
                                                   _e235940236105_
                                                   _hd235939236108_
                                                   _tl235938236110_))))
                                          (___match243706243707_
                                           _e235940236105_
                                           _hd235939236108_
                                           _tl235938236110_))
                                      (___match243706243707_
                                       _e235940236105_
                                       _hd235939236108_
                                       _tl235938236110_))
                                  (___match243706243707_
                                   _e235940236105_
                                   _hd235939236108_
                                   _tl235938236110_))))
                          (___match243706243707_
                           _e235940236105_
                           _hd235939236108_
                           _tl235938236110_))))
                  (___match243706243707_
                   _e235940236105_
                   _hd235939236108_
                   _tl235938236110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243706243707_
                                                   _e235940236105_
                                                   _hd235939236108_
                                                   _tl235938236110_))
                                              (___match243706243707_
                                               _e235940236105_
                                               _hd235939236108_
                                               _tl235938236110_))
                                          (___match243706243707_
                                           _e235940236105_
                                           _hd235939236108_
                                           _tl235938236110_))))
                                  (___match243706243707_
                                   _e235940236105_
                                   _hd235939236108_
                                   _tl235938236110_))
                              (___match243706243707_
                               _e235940236105_
                               _hd235939236108_
                               _tl235938236110_))
                          (___match243706243707_
                           _e235940236105_
                           _hd235939236108_
                           _tl235938236110_))))
                  (___match243706243707_
                   _e235940236105_
                   _hd235939236108_
                   _tl235938236110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243706243707_
                                                   _e235940236105_
                                                   _hd235939236108_
                                                   _tl235938236110_))
                                              (___match243706243707_
                                               _e235940236105_
                                               _hd235939236108_
                                               _tl235938236110_))))
                                      (___match243706243707_
                                       _e235940236105_
                                       _hd235939236108_
                                       _tl235938236110_))
                                  (___match243706243707_
                                   _e235940236105_
                                   _hd235939236108_
                                   _tl235938236110_))
                              (___match243706243707_
                               _e235940236105_
                               _hd235939236108_
                               _tl235938236110_))))
                      (___match243706243707_
                       _e235940236105_
                       _hd235939236108_
                       _tl235938236110_))))
              (___match243706243707_
               _e235940236105_
               _hd235939236108_
               _tl235938236110_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243706243707_
                                                   _e235940236105_
                                                   _hd235939236108_
                                                   _tl235938236110_))))
                                          (___match243706243707_
                                           _e235940236105_
                                           _hd235939236108_
                                           _tl235938236110_))
                                      (___match243706243707_
                                       _e235940236105_
                                       _hd235939236108_
                                       _tl235938236110_))
                                  (___match243706243707_
                                   _e235940236105_
                                   _hd235939236108_
                                   _tl235938236110_))))
                          (___match243706243707_
                           _e235940236105_
                           _hd235939236108_
                           _tl235938236110_))))
                  (___match243706243707_
                   _e235940236105_
                   _hd235939236108_
                   _tl235938236110_))
              (___match243706243707_
               _e235940236105_
               _hd235939236108_
               _tl235938236110_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243706243707_
                                                   _e235940236105_
                                                   _hd235939236108_
                                                   _tl235938236110_))))
                                          (___match243706243707_
                                           _e235940236105_
                                           _hd235939236108_
                                           _tl235938236110_))))
                                  (___match243706243707_
                                   _e235940236105_
                                   _hd235939236108_
                                   _tl235938236110_))))
                          (___match243706243707_
                           _e235940236105_
                           _hd235939236108_
                           _tl235938236110_))))
                   (___match243560243561_
                    (lambda (_e235873236496_
                             _hd235872236499_
                             _tl235871236501_
                             _e235876236504_
                             _hd235875236507_
                             _tl235874236509_
                             _e235879236512_
                             _hd235878236515_
                             _tl235877236517_
                             _e235882236520_
                             _hd235881236523_
                             _tl235880236525_
                             _e235885236528_
                             _hd235884236531_
                             _tl235883236533_
                             _e235888236536_
                             _hd235887236539_
                             _tl235886236541_
                             _e235891236544_
                             _hd235890236547_
                             _tl235889236549_
                             _e235894236552_
                             _hd235893236555_
                             _tl235892236557_
                             _e235897236560_
                             _hd235896236563_
                             _tl235895236565_
                             _e235900236568_
                             _hd235899236571_
                             _tl235898236573_
                             _e235903236576_
                             _hd235902236579_
                             _tl235901236581_
                             _e235906236584_
                             _hd235905236587_
                             _tl235904236589_
                             _e235909236592_
                             _hd235908236595_
                             _tl235907236597_
                             _e235912236600_
                             _hd235911236603_
                             _tl235910236605_
                             _e235915236608_
                             _hd235914236611_
                             _tl235913236613_
                             _e235918236616_
                             _hd235917236619_
                             _tl235916236621_
                             _e235921236624_
                             _hd235920236627_
                             _tl235919236629_
                             _e235924236632_
                             _hd235923236635_
                             _tl235922236637_
                             _e235927236640_
                             _hd235926236643_
                             _tl235925236645_)
                      (let ((_L236648_ _hd235926236643_)
                            (_L236649_ _hd235917236619_)
                            (_L236650_ _hd235908236595_)
                            (_L236651_ _hd235899236571_)
                            (_L236652_ _hd235890236547_)
                            (_L236653_ _hd235875236507_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L236653_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L236652_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L236651_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L236653_ _L236648_)))
                            (___kont243391243392_
                             _L236648_
                             _L236649_
                             _L236650_
                             _L236651_
                             _L236652_
                             _L236653_)
                            (___match243572243573_
                             _e235873236496_
                             _hd235872236499_
                             _tl235871236501_
                             _e235876236504_
                             _hd235875236507_
                             _tl235874236509_)))))
                   (___match243414243415_
                    (lambda (_e235873236496_ _hd235872236499_ _tl235871236501_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235871236501_))
                          (let ((_e235876236504_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235871236501_))))
                            (let ((_tl235874236509_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235876236504_)))
                                  (_hd235875236507_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235876236504_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235874236509_))
                                  (let ((_e235879236512_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235874236509_))))
                                    (let ((_tl235877236517_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235879236512_)))
                                          (_hd235878236515_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235879236512_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235878236515_))
                                          (let ((_e235882236520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235878236515_))))
                                            (let ((_tl235880236525_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235882236520_)))
                                                  (_hd235881236523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235882236520_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd235881236523_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd235881236523_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235880236525_))
                                                          (let ((_e235885236528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235880236525_))))
                    (let ((_tl235883236533_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235885236528_)))
                          (_hd235884236531_
                           (let ()
                             (declare (not safe))
                             (##car _e235885236528_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235884236531_))
                          (let ((_e235888236536_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235884236531_))))
                            (let ((_tl235886236541_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235888236536_)))
                                  (_hd235887236539_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235888236536_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235887236539_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235887236539_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235886236541_))
                                          (let ((_e235891236544_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235886236541_))))
                                            (let ((_tl235889236549_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235891236544_)))
                                                  (_hd235890236547_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235891236544_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235889236549_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235883236533_))
                                                      (let ((_e235894236552_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235883236533_))))
                (let ((_tl235892236557_
                       (let () (declare (not safe)) (##cdr _e235894236552_)))
                      (_hd235893236555_
                       (let () (declare (not safe)) (##car _e235894236552_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235893236555_))
                      (let ((_e235897236560_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235893236555_))))
                        (let ((_tl235895236565_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235897236560_)))
                              (_hd235896236563_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235897236560_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235896236563_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235896236563_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235895236565_))
                                      (let ((_e235900236568_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235895236565_))))
                                        (let ((_tl235898236573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235900236568_)))
                                              (_hd235899236571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235900236568_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235898236573_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235892236557_))
                                                  (let ((_e235903236576_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235892236557_))))
                                                    (let ((_tl235901236581_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235903236576_)))
                                                          (_hd235902236579_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235903236576_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235902236579_))
                                                          (let ((_e235906236584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235902236579_))))
                    (let ((_tl235904236589_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235906236584_)))
                          (_hd235905236587_
                           (let ()
                             (declare (not safe))
                             (##car _e235906236584_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235905236587_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd235905236587_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235904236589_))
                                  (let ((_e235909236592_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235904236589_))))
                                    (let ((_tl235907236597_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235909236592_)))
                                          (_hd235908236595_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235909236592_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235907236597_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235901236581_))
                                              (let ((_e235912236600_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235901236581_))))
                                                (let ((_tl235910236605_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235912236600_)))
                                                      (_hd235911236603_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235912236600_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235911236603_))
                                                      (let ((_e235915236608_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd235911236603_))))
                (let ((_tl235913236613_
                       (let () (declare (not safe)) (##cdr _e235915236608_)))
                      (_hd235914236611_
                       (let () (declare (not safe)) (##car _e235915236608_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd235914236611_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd235914236611_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235913236613_))
                              (let ((_e235918236616_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235913236613_))))
                                (let ((_tl235916236621_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235918236616_)))
                                      (_hd235917236619_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235918236616_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235916236621_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235910236605_))
                                          (let ((_e235921236624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235910236605_))))
                                            (let ((_tl235919236629_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235921236624_)))
                                                  (_hd235920236627_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235921236624_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd235920236627_))
                                                  (let ((_e235924236632_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd235920236627_))))
                                                    (let ((_tl235922236637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235924236632_)))
                                                          (_hd235923236635_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235924236632_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd235923236635_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd235923236635_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235922236637_))
                          (let ((_e235927236640_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235922236637_))))
                            (let ((_tl235925236645_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235927236640_)))
                                  (_hd235926236643_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235927236640_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl235925236645_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235919236629_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235877236517_))
                                          (___match243560243561_
                                           _e235873236496_
                                           _hd235872236499_
                                           _tl235871236501_
                                           _e235876236504_
                                           _hd235875236507_
                                           _tl235874236509_
                                           _e235879236512_
                                           _hd235878236515_
                                           _tl235877236517_
                                           _e235882236520_
                                           _hd235881236523_
                                           _tl235880236525_
                                           _e235885236528_
                                           _hd235884236531_
                                           _tl235883236533_
                                           _e235888236536_
                                           _hd235887236539_
                                           _tl235886236541_
                                           _e235891236544_
                                           _hd235890236547_
                                           _tl235889236549_
                                           _e235894236552_
                                           _hd235893236555_
                                           _tl235892236557_
                                           _e235897236560_
                                           _hd235896236563_
                                           _tl235895236565_
                                           _e235900236568_
                                           _hd235899236571_
                                           _tl235898236573_
                                           _e235903236576_
                                           _hd235902236579_
                                           _tl235901236581_
                                           _e235906236584_
                                           _hd235905236587_
                                           _tl235904236589_
                                           _e235909236592_
                                           _hd235908236595_
                                           _tl235907236597_
                                           _e235912236600_
                                           _hd235911236603_
                                           _tl235910236605_
                                           _e235915236608_
                                           _hd235914236611_
                                           _tl235913236613_
                                           _e235918236616_
                                           _hd235917236619_
                                           _tl235916236621_
                                           _e235921236624_
                                           _hd235920236627_
                                           _tl235919236629_
                                           _e235924236632_
                                           _hd235923236635_
                                           _tl235922236637_
                                           _e235927236640_
                                           _hd235926236643_
                                           _tl235925236645_)
                                          (___match243572243573_
                                           _e235873236496_
                                           _hd235872236499_
                                           _tl235871236501_
                                           _e235876236504_
                                           _hd235875236507_
                                           _tl235874236509_))
                                      (___match243572243573_
                                       _e235873236496_
                                       _hd235872236499_
                                       _tl235871236501_
                                       _e235876236504_
                                       _hd235875236507_
                                       _tl235874236509_))
                                  (___match243572243573_
                                   _e235873236496_
                                   _hd235872236499_
                                   _tl235871236501_
                                   _e235876236504_
                                   _hd235875236507_
                                   _tl235874236509_))))
                          (___match243572243573_
                           _e235873236496_
                           _hd235872236499_
                           _tl235871236501_
                           _e235876236504_
                           _hd235875236507_
                           _tl235874236509_))
                      (___match243572243573_
                       _e235873236496_
                       _hd235872236499_
                       _tl235871236501_
                       _e235876236504_
                       _hd235875236507_
                       _tl235874236509_))
                  (___match243572243573_
                   _e235873236496_
                   _hd235872236499_
                   _tl235871236501_
                   _e235876236504_
                   _hd235875236507_
                   _tl235874236509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243572243573_
                                                   _e235873236496_
                                                   _hd235872236499_
                                                   _tl235871236501_
                                                   _e235876236504_
                                                   _hd235875236507_
                                                   _tl235874236509_))))
                                          (___match243572243573_
                                           _e235873236496_
                                           _hd235872236499_
                                           _tl235871236501_
                                           _e235876236504_
                                           _hd235875236507_
                                           _tl235874236509_))
                                      (___match243572243573_
                                       _e235873236496_
                                       _hd235872236499_
                                       _tl235871236501_
                                       _e235876236504_
                                       _hd235875236507_
                                       _tl235874236509_))))
                              (___match243572243573_
                               _e235873236496_
                               _hd235872236499_
                               _tl235871236501_
                               _e235876236504_
                               _hd235875236507_
                               _tl235874236509_))
                          (___match243572243573_
                           _e235873236496_
                           _hd235872236499_
                           _tl235871236501_
                           _e235876236504_
                           _hd235875236507_
                           _tl235874236509_))
                      (___match243572243573_
                       _e235873236496_
                       _hd235872236499_
                       _tl235871236501_
                       _e235876236504_
                       _hd235875236507_
                       _tl235874236509_))))
              (___match243572243573_
               _e235873236496_
               _hd235872236499_
               _tl235871236501_
               _e235876236504_
               _hd235875236507_
               _tl235874236509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243572243573_
                                               _e235873236496_
                                               _hd235872236499_
                                               _tl235871236501_
                                               _e235876236504_
                                               _hd235875236507_
                                               _tl235874236509_))
                                          (___match243572243573_
                                           _e235873236496_
                                           _hd235872236499_
                                           _tl235871236501_
                                           _e235876236504_
                                           _hd235875236507_
                                           _tl235874236509_))))
                                  (___match243572243573_
                                   _e235873236496_
                                   _hd235872236499_
                                   _tl235871236501_
                                   _e235876236504_
                                   _hd235875236507_
                                   _tl235874236509_))
                              (___match243572243573_
                               _e235873236496_
                               _hd235872236499_
                               _tl235871236501_
                               _e235876236504_
                               _hd235875236507_
                               _tl235874236509_))
                          (___match243572243573_
                           _e235873236496_
                           _hd235872236499_
                           _tl235871236501_
                           _e235876236504_
                           _hd235875236507_
                           _tl235874236509_))))
                  (___match243572243573_
                   _e235873236496_
                   _hd235872236499_
                   _tl235871236501_
                   _e235876236504_
                   _hd235875236507_
                   _tl235874236509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243572243573_
                                                   _e235873236496_
                                                   _hd235872236499_
                                                   _tl235871236501_
                                                   _e235876236504_
                                                   _hd235875236507_
                                                   _tl235874236509_))
                                              (___match243572243573_
                                               _e235873236496_
                                               _hd235872236499_
                                               _tl235871236501_
                                               _e235876236504_
                                               _hd235875236507_
                                               _tl235874236509_))))
                                      (___match243572243573_
                                       _e235873236496_
                                       _hd235872236499_
                                       _tl235871236501_
                                       _e235876236504_
                                       _hd235875236507_
                                       _tl235874236509_))
                                  (___match243572243573_
                                   _e235873236496_
                                   _hd235872236499_
                                   _tl235871236501_
                                   _e235876236504_
                                   _hd235875236507_
                                   _tl235874236509_))
                              (___match243572243573_
                               _e235873236496_
                               _hd235872236499_
                               _tl235871236501_
                               _e235876236504_
                               _hd235875236507_
                               _tl235874236509_))))
                      (___match243572243573_
                       _e235873236496_
                       _hd235872236499_
                       _tl235871236501_
                       _e235876236504_
                       _hd235875236507_
                       _tl235874236509_))))
              (___match243572243573_
               _e235873236496_
               _hd235872236499_
               _tl235871236501_
               _e235876236504_
               _hd235875236507_
               _tl235874236509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243572243573_
                                                   _e235873236496_
                                                   _hd235872236499_
                                                   _tl235871236501_
                                                   _e235876236504_
                                                   _hd235875236507_
                                                   _tl235874236509_))))
                                          (___match243572243573_
                                           _e235873236496_
                                           _hd235872236499_
                                           _tl235871236501_
                                           _e235876236504_
                                           _hd235875236507_
                                           _tl235874236509_))
                                      (___match243572243573_
                                       _e235873236496_
                                       _hd235872236499_
                                       _tl235871236501_
                                       _e235876236504_
                                       _hd235875236507_
                                       _tl235874236509_))
                                  (___match243572243573_
                                   _e235873236496_
                                   _hd235872236499_
                                   _tl235871236501_
                                   _e235876236504_
                                   _hd235875236507_
                                   _tl235874236509_))))
                          (___match243572243573_
                           _e235873236496_
                           _hd235872236499_
                           _tl235871236501_
                           _e235876236504_
                           _hd235875236507_
                           _tl235874236509_))))
                  (___match243572243573_
                   _e235873236496_
                   _hd235872236499_
                   _tl235871236501_
                   _e235876236504_
                   _hd235875236507_
                   _tl235874236509_))
              (___match243572243573_
               _e235873236496_
               _hd235872236499_
               _tl235871236501_
               _e235876236504_
               _hd235875236507_
               _tl235874236509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243572243573_
                                                   _e235873236496_
                                                   _hd235872236499_
                                                   _tl235871236501_
                                                   _e235876236504_
                                                   _hd235875236507_
                                                   _tl235874236509_))))
                                          (___match243572243573_
                                           _e235873236496_
                                           _hd235872236499_
                                           _tl235871236501_
                                           _e235876236504_
                                           _hd235875236507_
                                           _tl235874236509_))))
                                  (___match243572243573_
                                   _e235873236496_
                                   _hd235872236499_
                                   _tl235871236501_
                                   _e235876236504_
                                   _hd235875236507_
                                   _tl235874236509_))))
                          (___match243706243707_
                           _e235873236496_
                           _hd235872236499_
                           _tl235871236501_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243387243388_))
                  (let ((_e235864236713_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243387243388_))))
                    (let ((_tl235862236718_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235864236713_)))
                          (_hd235863236716_
                           (let ()
                             (declare (not safe))
                             (##car _e235864236713_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L236721_ _tl235862236718_))
                            (___kont243389243390_ _L236721_))
                          (___match243414243415_
                           _e235864236713_
                           _hd235863236716_
                           _tl235862236718_))))
                  (let () (declare (not safe)) (_g235859236055_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx235808_)
        (letrec ((_clause-e235810_
                  (lambda (_form235851_)
                    (let ((__obj245060
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
                       __obj245060
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form235851_))
                       (if (let ((__tmp245127
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp245127))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form235851_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form235851_))
                               '#f)
                           '#f))
                      __obj245060))))
          (let* ((_g235812235822_
                  (lambda (_g235813235819_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g235813235819_))))
                 (_g235811235848_
                  (lambda (_g235813235825_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g235813235825_))
                        (let ((_e235817235827_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g235813235825_))))
                          (let ((_hd235816235830_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235817235827_)))
                                (_tl235815235832_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235817235827_))))
                            ((lambda (_L235835_)
                               (let ((_clauses235846_
                                      (map _clause-e235810_ _L235835_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses235846_)))
                             _tl235815235832_)))
                        (let ()
                          (declare (not safe))
                          (_g235812235822_ _g235813235825_))))))
            (declare (not safe))
            (_g235811235848_ _stx235808_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx235740_)
        (let* ((_g235742235759_
                (lambda (_g235743235756_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235743235756_))))
               (_g235741235805_
                (lambda (_g235743235762_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235743235762_))
                      (let ((_e235748235764_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235743235762_))))
                        (let ((_hd235747235767_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235748235764_)))
                              (_tl235746235769_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235748235764_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235746235769_))
                              (let ((_e235751235772_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235746235769_))))
                                (let ((_hd235750235775_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235751235772_)))
                                      (_tl235749235777_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235751235772_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235749235777_))
                                      (let ((_e235754235780_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235749235777_))))
                                        (let ((_hd235753235783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235754235780_)))
                                              (_tl235752235785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235754235780_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235752235785_))
                                              ((lambda (_L235788_ _L235789_)
                                                 (let ((__tmp245128
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L235788_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp245128
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd235753235783_
                                               _hd235750235775_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235742235759_
                                                 _g235743235762_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235742235759_ _g235743235762_)))))
                              (let ()
                                (declare (not safe))
                                (_g235742235759_ _g235743235762_)))))
                      (let ()
                        (declare (not safe))
                        (_g235742235759_ _g235743235762_))))))
          (declare (not safe))
          (_g235741235805_ _stx235740_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx235645_)
        (let* ((___stx243715243716_ _stx235645_)
               (_g235648235668_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243715243716_)))))
          (let ((___kont243717243718_
                 (lambda (_L235712_ _L235713_)
                   (let ((_type-e235730235732_
                          (let ((__tmp245129
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L235713_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp245129
                             '#f))))
                     (if _type-e235730235732_
                         (let ((_type-e235735_ _type-e235730235732_))
                           (_type-e235735_ _stx235645_ _L235712_))
                         '#f))))
                (___kont243719243720_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243715243716_))
                (let ((_e235654235680_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243715243716_))))
                  (let ((_tl235652235685_
                         (let () (declare (not safe)) (##cdr _e235654235680_)))
                        (_hd235653235683_
                         (let ()
                           (declare (not safe))
                           (##car _e235654235680_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235652235685_))
                        (let ((_e235657235688_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235652235685_))))
                          (let ((_tl235655235693_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235657235688_)))
                                (_hd235656235691_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235657235688_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd235656235691_))
                                (let ((_e235660235696_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd235656235691_))))
                                  (let ((_tl235658235701_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e235660235696_)))
                                        (_hd235659235699_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e235660235696_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd235659235699_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd235659235699_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl235658235701_))
                                                (let ((_e235663235704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl235658235701_))))
                                                  (let ((_tl235661235709_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e235663235704_)))
                                                        (_hd235662235707_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e235663235704_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl235661235709_))
                                                        (___kont243717243718_
                                                         _tl235655235693_
                                                         _hd235662235707_)
                                                        (___kont243719243720_))))
                                                (___kont243719243720_))
                                            (___kont243719243720_))
                                        (___kont243719243720_))))
                                (___kont243719243720_))))
                        (___kont243719243720_))))
                (___kont243719243720_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx235594_)
        (let* ((_g235596235609_
                (lambda (_g235597235606_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235597235606_))))
               (_g235595235642_
                (lambda (_g235597235612_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235597235612_))
                      (let ((_e235601235614_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235597235612_))))
                        (let ((_hd235600235617_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235601235614_)))
                              (_tl235599235619_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235601235614_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235599235619_))
                              (let ((_e235604235622_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235599235619_))))
                                (let ((_hd235603235625_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235604235622_)))
                                      (_tl235602235627_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235604235622_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235602235627_))
                                      ((lambda (_L235630_)
                                         (let ((__tmp245130
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235630_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp245130)))
                                       _hd235603235625_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235596235609_ _g235597235612_)))))
                              (let ()
                                (declare (not safe))
                                (_g235596235609_ _g235597235612_)))))
                      (let ()
                        (declare (not safe))
                        (_g235596235609_ _g235597235612_))))))
          (declare (not safe))
          (_g235595235642_ _stx235594_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form234828_)
        (let* ((___stx243753243754_ _form234828_)
               (_g234833234990_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243753243754_)))))
          (let ((___kont243755243756_
                 (lambda (_L235514_ _L235515_ _L235516_) '#t))
                (___kont243761243762_
                 (lambda (_L235302_
                          _L235303_
                          _L235304_
                          _L235305_
                          _L235306_
                          _L235307_)
                   '#t))
                (___kont243767243768_
                 (lambda (_L235098_ _L235099_ _L235100_ _L235101_) '#t))
                (___kont243769243770_ (lambda () '#f)))
            (let* ((___match243894243895_
                    (lambda (_e234952235002_
                             _hd234951235005_
                             _tl234950235007_
                             _e234955235010_
                             _hd234954235013_
                             _tl234953235015_
                             _e234958235018_
                             _hd234957235021_
                             _tl234956235023_
                             _e234961235026_
                             _hd234960235029_
                             _tl234959235031_
                             _e234964235034_
                             _hd234963235037_
                             _tl234962235039_
                             _e234967235042_
                             _hd234966235045_
                             _tl234965235047_
                             _e234970235050_
                             _hd234969235053_
                             _tl234968235055_
                             _e234973235058_
                             _hd234972235061_
                             _tl234971235063_
                             _e234976235066_
                             _hd234975235069_
                             _tl234974235071_
                             _e234979235074_
                             _hd234978235077_
                             _tl234977235079_
                             _e234982235082_
                             _hd234981235085_
                             _tl234980235087_
                             _e234985235090_
                             _hd234984235093_
                             _tl234983235095_)
                      (let ((_L235098_ _hd234984235093_)
                            (_L235099_ _hd234975235069_)
                            (_L235100_ _hd234966235045_)
                            (_L235101_ _hd234951235005_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L235101_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L235100_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L235101_ _L235098_))
                                 (let ((__tmp245131
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L235099_
                                           _L235101_))))
                                   (declare (not safe))
                                   (not __tmp245131)))
                            (___kont243767243768_
                             _L235098_
                             _L235099_
                             _L235100_
                             _L235101_)
                            (___kont243769243770_)))))
                   (___match243866243867_
                    (lambda (_e234952235002_
                             _hd234951235005_
                             _tl234950235007_
                             _e234955235010_
                             _hd234954235013_
                             _tl234953235015_
                             _e234958235018_
                             _hd234957235021_
                             _tl234956235023_
                             _e234961235026_
                             _hd234960235029_
                             _tl234959235031_
                             _e234964235034_
                             _hd234963235037_
                             _tl234962235039_
                             _e234967235042_
                             _hd234966235045_
                             _tl234965235047_
                             _e234970235050_
                             _hd234969235053_
                             _tl234968235055_
                             _e234973235058_
                             _hd234972235061_
                             _tl234971235063_
                             _e234976235066_
                             _hd234975235069_
                             _tl234974235071_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234968235055_))
                          (let ((_e234979235074_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234968235055_))))
                            (let ((_tl234977235079_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234979235074_)))
                                  (_hd234978235077_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234979235074_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234978235077_))
                                  (let ((_e234982235082_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234978235077_))))
                                    (let ((_tl234980235087_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234982235082_)))
                                          (_hd234981235085_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234982235082_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd234981235085_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd234981235085_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234980235087_))
                                                  (let ((_e234985235090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234980235087_))))
                                                    (let ((_tl234983235095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234985235090_)))
                                                          (_hd234984235093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234985235090_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234983235095_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl234977235079_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234953235015_))
                          (___match243894243895_
                           _e234952235002_
                           _hd234951235005_
                           _tl234950235007_
                           _e234955235010_
                           _hd234954235013_
                           _tl234953235015_
                           _e234958235018_
                           _hd234957235021_
                           _tl234956235023_
                           _e234961235026_
                           _hd234960235029_
                           _tl234959235031_
                           _e234964235034_
                           _hd234963235037_
                           _tl234962235039_
                           _e234967235042_
                           _hd234966235045_
                           _tl234965235047_
                           _e234970235050_
                           _hd234969235053_
                           _tl234968235055_
                           _e234973235058_
                           _hd234972235061_
                           _tl234971235063_
                           _e234976235066_
                           _hd234975235069_
                           _tl234974235071_
                           _e234979235074_
                           _hd234978235077_
                           _tl234977235079_
                           _e234982235082_
                           _hd234981235085_
                           _tl234980235087_
                           _e234985235090_
                           _hd234984235093_
                           _tl234983235095_)
                          (___kont243769243770_))
                      (___kont243769243770_))
                  (___kont243769243770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243769243770_))
                                              (___kont243769243770_))
                                          (___kont243769243770_))))
                                  (___kont243769243770_))))
                          (___kont243769243770_))))
                   (___match243796243797_
                    (lambda (_e234888235142_
                             _hd234887235145_
                             _tl234886235147_
                             ___splice243763243764_
                             _target234889235150_
                             _tl234891235152_)
                      (letrec ((_loop234892235155_
                                (lambda (_hd234890235158_ _arg234896235160_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234890235158_))
                                      (let ((_e234893235163_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234890235158_))))
                                        (let ((_lp-tl234895235168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234893235163_)))
                                              (_lp-hd234894235166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234893235163_))))
                                          (let ((__tmp245146
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234894235166_
                                                         _arg234896235160_))))
                                            (declare (not safe))
                                            (_loop234892235155_
                                             _lp-tl234895235168_
                                             __tmp245146))))
                                      (let ((_arg234897235171_
                                             (reverse _arg234896235160_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234886235147_))
                                            (let ((_e234900235174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234886235147_))))
                                              (let ((_tl234898235179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234900235174_)))
                                                    (_hd234899235177_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234900235174_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234899235177_))
                                                    (let ((_e234903235182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234899235177_))))
                                                      (let ((_tl234901235187_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234903235182_)))
                    (_hd234902235185_
                     (let () (declare (not safe)) (##car _e234903235182_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234902235185_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234902235185_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234901235187_))
                            (let ((_e234906235190_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234901235187_))))
                              (let ((_tl234904235195_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234906235190_)))
                                    (_hd234905235193_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234906235190_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234905235193_))
                                    (let ((_e234909235198_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234905235193_))))
                                      (let ((_tl234907235203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234909235198_)))
                                            (_hd234908235201_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234909235198_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234908235201_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234908235201_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234907235203_))
                                                    (let ((_e234912235206_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234907235203_))))
                                                      (let ((_tl234910235211_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234912235206_)))
                    (_hd234911235209_
                     (let () (declare (not safe)) (##car _e234912235206_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234910235211_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234904235195_))
                        (let ((_e234915235214_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234904235195_))))
                          (let ((_tl234913235219_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234915235214_)))
                                (_hd234914235217_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234915235214_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234914235217_))
                                (let ((_e234918235222_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234914235217_))))
                                  (let ((_tl234916235227_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234918235222_)))
                                        (_hd234917235225_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234918235222_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234917235225_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234917235225_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234916235227_))
                                                (let ((_e234921235230_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234916235227_))))
                                                  (let ((_tl234919235235_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234921235230_)))
                                                        (_hd234920235233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234921235230_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234919235235_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl234913235219_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl234913235219_))
                              '1)
                        (let ((___splice243765243766_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234913235219_
                                  '1))))
                          (let ((_tl234924235240_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243765243766_ '1)))
                                (_target234922235238_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243765243766_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234924235240_))
                                (let ((_e234933235243_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234924235240_))))
                                  (let ((_tl234931235248_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234933235243_)))
                                        (_hd234932235246_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234933235243_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd234932235246_))
                                        (let ((_e234936235251_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd234932235246_))))
                                          (let ((_tl234934235256_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e234936235251_)))
                                                (_hd234935235254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e234936235251_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd234935235254_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd234935235254_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl234934235256_))
                                                        (let ((_e234939235259_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl234934235256_))))
                  (let ((_tl234937235264_
                         (let () (declare (not safe)) (##cdr _e234939235259_)))
                        (_hd234938235262_
                         (let ()
                           (declare (not safe))
                           (##car _e234939235259_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl234937235264_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl234931235248_))
                            (letrec ((_loop234925235267_
                                      (lambda (_hd234923235270_
                                               _xarg234929235272_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd234923235270_))
                                            (let ((_e234926235275_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd234923235270_))))
                                              (let ((_lp-tl234928235280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234926235275_)))
                                                    (_lp-hd234927235278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234926235275_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd234927235278_))
                                                    (let ((_e234942235283_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd234927235278_))))
                                                      (let ((_tl234940235288_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234942235283_)))
                    (_hd234941235286_
                     (let () (declare (not safe)) (##car _e234942235283_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234941235286_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd234941235286_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234940235288_))
                            (let ((_e234945235291_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234940235288_))))
                              (let ((_tl234943235296_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234945235291_)))
                                    (_hd234944235294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234945235291_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl234943235296_))
                                    (let ((__tmp245145
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd234944235294_
                                                   _xarg234929235272_))))
                                      (declare (not safe))
                                      (_loop234925235267_
                                       _lp-tl234928235280_
                                       __tmp245145))
                                    (___match243866243867_
                                     _e234888235142_
                                     _hd234887235145_
                                     _tl234886235147_
                                     _e234900235174_
                                     _hd234899235177_
                                     _tl234898235179_
                                     _e234903235182_
                                     _hd234902235185_
                                     _tl234901235187_
                                     _e234906235190_
                                     _hd234905235193_
                                     _tl234904235195_
                                     _e234909235198_
                                     _hd234908235201_
                                     _tl234907235203_
                                     _e234912235206_
                                     _hd234911235209_
                                     _tl234910235211_
                                     _e234915235214_
                                     _hd234914235217_
                                     _tl234913235219_
                                     _e234918235222_
                                     _hd234917235225_
                                     _tl234916235227_
                                     _e234921235230_
                                     _hd234920235233_
                                     _tl234919235235_))))
                            (___match243866243867_
                             _e234888235142_
                             _hd234887235145_
                             _tl234886235147_
                             _e234900235174_
                             _hd234899235177_
                             _tl234898235179_
                             _e234903235182_
                             _hd234902235185_
                             _tl234901235187_
                             _e234906235190_
                             _hd234905235193_
                             _tl234904235195_
                             _e234909235198_
                             _hd234908235201_
                             _tl234907235203_
                             _e234912235206_
                             _hd234911235209_
                             _tl234910235211_
                             _e234915235214_
                             _hd234914235217_
                             _tl234913235219_
                             _e234918235222_
                             _hd234917235225_
                             _tl234916235227_
                             _e234921235230_
                             _hd234920235233_
                             _tl234919235235_))
                        (___match243866243867_
                         _e234888235142_
                         _hd234887235145_
                         _tl234886235147_
                         _e234900235174_
                         _hd234899235177_
                         _tl234898235179_
                         _e234903235182_
                         _hd234902235185_
                         _tl234901235187_
                         _e234906235190_
                         _hd234905235193_
                         _tl234904235195_
                         _e234909235198_
                         _hd234908235201_
                         _tl234907235203_
                         _e234912235206_
                         _hd234911235209_
                         _tl234910235211_
                         _e234915235214_
                         _hd234914235217_
                         _tl234913235219_
                         _e234918235222_
                         _hd234917235225_
                         _tl234916235227_
                         _e234921235230_
                         _hd234920235233_
                         _tl234919235235_))
                    (___match243866243867_
                     _e234888235142_
                     _hd234887235145_
                     _tl234886235147_
                     _e234900235174_
                     _hd234899235177_
                     _tl234898235179_
                     _e234903235182_
                     _hd234902235185_
                     _tl234901235187_
                     _e234906235190_
                     _hd234905235193_
                     _tl234904235195_
                     _e234909235198_
                     _hd234908235201_
                     _tl234907235203_
                     _e234912235206_
                     _hd234911235209_
                     _tl234910235211_
                     _e234915235214_
                     _hd234914235217_
                     _tl234913235219_
                     _e234918235222_
                     _hd234917235225_
                     _tl234916235227_
                     _e234921235230_
                     _hd234920235233_
                     _tl234919235235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243866243867_
                                                     _e234888235142_
                                                     _hd234887235145_
                                                     _tl234886235147_
                                                     _e234900235174_
                                                     _hd234899235177_
                                                     _tl234898235179_
                                                     _e234903235182_
                                                     _hd234902235185_
                                                     _tl234901235187_
                                                     _e234906235190_
                                                     _hd234905235193_
                                                     _tl234904235195_
                                                     _e234909235198_
                                                     _hd234908235201_
                                                     _tl234907235203_
                                                     _e234912235206_
                                                     _hd234911235209_
                                                     _tl234910235211_
                                                     _e234915235214_
                                                     _hd234914235217_
                                                     _tl234913235219_
                                                     _e234918235222_
                                                     _hd234917235225_
                                                     _tl234916235227_
                                                     _e234921235230_
                                                     _hd234920235233_
                                                     _tl234919235235_))))
                                            (let ((_xarg234930235299_
                                                   (reverse _xarg234929235272_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234898235179_))
                                                  (let ((_L235302_
                                                         _hd234938235262_)
                                                        (_L235303_
                                                         _xarg234930235299_)
                                                        (_L235304_
                                                         _hd234920235233_)
                                                        (_L235305_
                                                         _hd234911235209_)
                                                        (_L235306_
                                                         _tl234891235152_)
                                                        (_L235307_
                                                         _arg234897235171_))
                                                    (if (and (let ((__tmp245143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp245144
                                   (lambda (_g235350235353_ _g235351235355_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235350235353_
                                             _g235351235355_)))))
                              (declare (not safe))
                              (foldr1 __tmp245144 '() _L235307_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp245143))
                     (let () (declare (not safe)) (gx#identifier? _L235306_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L235305_ 'apply))
                     (fx= (length (let ((__tmp245141
                                         (lambda (_g235357235360_
                                                  _g235358235362_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g235357235360_
                                                   _g235358235362_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp245141 '() _L235307_)))
                          (length (let ((__tmp245142
                                         (lambda (_g235364235367_
                                                  _g235365235369_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g235364235367_
                                                   _g235365235369_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp245142 '() _L235303_))))
                     (let ((__tmp245139
                            (let ((__tmp245140
                                   (lambda (_g235371235374_ _g235372235376_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235371235374_
                                             _g235372235376_)))))
                              (declare (not safe))
                              (foldr1 __tmp245140 '() _L235307_)))
                           (__tmp245137
                            (let ((__tmp245138
                                   (lambda (_g235378235381_ _g235379235383_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235378235381_
                                             _g235379235383_)))))
                              (declare (not safe))
                              (foldr1 __tmp245138 '() _L235303_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp245139 __tmp245137))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L235306_ _L235302_))
                     (let ((__tmp245132
                            (let ((__tmp245136
                                   (lambda (_g235385235387_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g235385235387_
                                        _L235304_))))
                                  (__tmp245133
                                   (let ((__tmp245135
                                          (lambda (_g235389235392_
                                                   _g235390235394_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g235389235392_
                                                    _g235390235394_))))
                                         (__tmp245134
                                          (let ()
                                            (declare (not safe))
                                            (cons _L235306_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp245135
                                             __tmp245134
                                             _L235307_))))
                              (declare (not safe))
                              (find __tmp245136 __tmp245133))))
                       (declare (not safe))
                       (not __tmp245132)))
                (___kont243761243762_
                 _L235302_
                 _L235303_
                 _L235304_
                 _L235305_
                 _L235306_
                 _L235307_)
                (___match243866243867_
                 _e234888235142_
                 _hd234887235145_
                 _tl234886235147_
                 _e234900235174_
                 _hd234899235177_
                 _tl234898235179_
                 _e234903235182_
                 _hd234902235185_
                 _tl234901235187_
                 _e234906235190_
                 _hd234905235193_
                 _tl234904235195_
                 _e234909235198_
                 _hd234908235201_
                 _tl234907235203_
                 _e234912235206_
                 _hd234911235209_
                 _tl234910235211_
                 _e234915235214_
                 _hd234914235217_
                 _tl234913235219_
                 _e234918235222_
                 _hd234917235225_
                 _tl234916235227_
                 _e234921235230_
                 _hd234920235233_
                 _tl234919235235_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243866243867_
                                                   _e234888235142_
                                                   _hd234887235145_
                                                   _tl234886235147_
                                                   _e234900235174_
                                                   _hd234899235177_
                                                   _tl234898235179_
                                                   _e234903235182_
                                                   _hd234902235185_
                                                   _tl234901235187_
                                                   _e234906235190_
                                                   _hd234905235193_
                                                   _tl234904235195_
                                                   _e234909235198_
                                                   _hd234908235201_
                                                   _tl234907235203_
                                                   _e234912235206_
                                                   _hd234911235209_
                                                   _tl234910235211_
                                                   _e234915235214_
                                                   _hd234914235217_
                                                   _tl234913235219_
                                                   _e234918235222_
                                                   _hd234917235225_
                                                   _tl234916235227_
                                                   _e234921235230_
                                                   _hd234920235233_
                                                   _tl234919235235_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop234925235267_ _target234922235238_ '())))
                            (___match243866243867_
                             _e234888235142_
                             _hd234887235145_
                             _tl234886235147_
                             _e234900235174_
                             _hd234899235177_
                             _tl234898235179_
                             _e234903235182_
                             _hd234902235185_
                             _tl234901235187_
                             _e234906235190_
                             _hd234905235193_
                             _tl234904235195_
                             _e234909235198_
                             _hd234908235201_
                             _tl234907235203_
                             _e234912235206_
                             _hd234911235209_
                             _tl234910235211_
                             _e234915235214_
                             _hd234914235217_
                             _tl234913235219_
                             _e234918235222_
                             _hd234917235225_
                             _tl234916235227_
                             _e234921235230_
                             _hd234920235233_
                             _tl234919235235_))
                        (___match243866243867_
                         _e234888235142_
                         _hd234887235145_
                         _tl234886235147_
                         _e234900235174_
                         _hd234899235177_
                         _tl234898235179_
                         _e234903235182_
                         _hd234902235185_
                         _tl234901235187_
                         _e234906235190_
                         _hd234905235193_
                         _tl234904235195_
                         _e234909235198_
                         _hd234908235201_
                         _tl234907235203_
                         _e234912235206_
                         _hd234911235209_
                         _tl234910235211_
                         _e234915235214_
                         _hd234914235217_
                         _tl234913235219_
                         _e234918235222_
                         _hd234917235225_
                         _tl234916235227_
                         _e234921235230_
                         _hd234920235233_
                         _tl234919235235_))))
                (___match243866243867_
                 _e234888235142_
                 _hd234887235145_
                 _tl234886235147_
                 _e234900235174_
                 _hd234899235177_
                 _tl234898235179_
                 _e234903235182_
                 _hd234902235185_
                 _tl234901235187_
                 _e234906235190_
                 _hd234905235193_
                 _tl234904235195_
                 _e234909235198_
                 _hd234908235201_
                 _tl234907235203_
                 _e234912235206_
                 _hd234911235209_
                 _tl234910235211_
                 _e234915235214_
                 _hd234914235217_
                 _tl234913235219_
                 _e234918235222_
                 _hd234917235225_
                 _tl234916235227_
                 _e234921235230_
                 _hd234920235233_
                 _tl234919235235_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243866243867_
                                                     _e234888235142_
                                                     _hd234887235145_
                                                     _tl234886235147_
                                                     _e234900235174_
                                                     _hd234899235177_
                                                     _tl234898235179_
                                                     _e234903235182_
                                                     _hd234902235185_
                                                     _tl234901235187_
                                                     _e234906235190_
                                                     _hd234905235193_
                                                     _tl234904235195_
                                                     _e234909235198_
                                                     _hd234908235201_
                                                     _tl234907235203_
                                                     _e234912235206_
                                                     _hd234911235209_
                                                     _tl234910235211_
                                                     _e234915235214_
                                                     _hd234914235217_
                                                     _tl234913235219_
                                                     _e234918235222_
                                                     _hd234917235225_
                                                     _tl234916235227_
                                                     _e234921235230_
                                                     _hd234920235233_
                                                     _tl234919235235_))
                                                (___match243866243867_
                                                 _e234888235142_
                                                 _hd234887235145_
                                                 _tl234886235147_
                                                 _e234900235174_
                                                 _hd234899235177_
                                                 _tl234898235179_
                                                 _e234903235182_
                                                 _hd234902235185_
                                                 _tl234901235187_
                                                 _e234906235190_
                                                 _hd234905235193_
                                                 _tl234904235195_
                                                 _e234909235198_
                                                 _hd234908235201_
                                                 _tl234907235203_
                                                 _e234912235206_
                                                 _hd234911235209_
                                                 _tl234910235211_
                                                 _e234915235214_
                                                 _hd234914235217_
                                                 _tl234913235219_
                                                 _e234918235222_
                                                 _hd234917235225_
                                                 _tl234916235227_
                                                 _e234921235230_
                                                 _hd234920235233_
                                                 _tl234919235235_))))
                                        (___match243866243867_
                                         _e234888235142_
                                         _hd234887235145_
                                         _tl234886235147_
                                         _e234900235174_
                                         _hd234899235177_
                                         _tl234898235179_
                                         _e234903235182_
                                         _hd234902235185_
                                         _tl234901235187_
                                         _e234906235190_
                                         _hd234905235193_
                                         _tl234904235195_
                                         _e234909235198_
                                         _hd234908235201_
                                         _tl234907235203_
                                         _e234912235206_
                                         _hd234911235209_
                                         _tl234910235211_
                                         _e234915235214_
                                         _hd234914235217_
                                         _tl234913235219_
                                         _e234918235222_
                                         _hd234917235225_
                                         _tl234916235227_
                                         _e234921235230_
                                         _hd234920235233_
                                         _tl234919235235_))))
                                (___match243866243867_
                                 _e234888235142_
                                 _hd234887235145_
                                 _tl234886235147_
                                 _e234900235174_
                                 _hd234899235177_
                                 _tl234898235179_
                                 _e234903235182_
                                 _hd234902235185_
                                 _tl234901235187_
                                 _e234906235190_
                                 _hd234905235193_
                                 _tl234904235195_
                                 _e234909235198_
                                 _hd234908235201_
                                 _tl234907235203_
                                 _e234912235206_
                                 _hd234911235209_
                                 _tl234910235211_
                                 _e234915235214_
                                 _hd234914235217_
                                 _tl234913235219_
                                 _e234918235222_
                                 _hd234917235225_
                                 _tl234916235227_
                                 _e234921235230_
                                 _hd234920235233_
                                 _tl234919235235_))))
                        (___match243866243867_
                         _e234888235142_
                         _hd234887235145_
                         _tl234886235147_
                         _e234900235174_
                         _hd234899235177_
                         _tl234898235179_
                         _e234903235182_
                         _hd234902235185_
                         _tl234901235187_
                         _e234906235190_
                         _hd234905235193_
                         _tl234904235195_
                         _e234909235198_
                         _hd234908235201_
                         _tl234907235203_
                         _e234912235206_
                         _hd234911235209_
                         _tl234910235211_
                         _e234915235214_
                         _hd234914235217_
                         _tl234913235219_
                         _e234918235222_
                         _hd234917235225_
                         _tl234916235227_
                         _e234921235230_
                         _hd234920235233_
                         _tl234919235235_))
                    (___match243866243867_
                     _e234888235142_
                     _hd234887235145_
                     _tl234886235147_
                     _e234900235174_
                     _hd234899235177_
                     _tl234898235179_
                     _e234903235182_
                     _hd234902235185_
                     _tl234901235187_
                     _e234906235190_
                     _hd234905235193_
                     _tl234904235195_
                     _e234909235198_
                     _hd234908235201_
                     _tl234907235203_
                     _e234912235206_
                     _hd234911235209_
                     _tl234910235211_
                     _e234915235214_
                     _hd234914235217_
                     _tl234913235219_
                     _e234918235222_
                     _hd234917235225_
                     _tl234916235227_
                     _e234921235230_
                     _hd234920235233_
                     _tl234919235235_))
                (___kont243769243770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243769243770_))
                                            (___kont243769243770_))
                                        (___kont243769243770_))))
                                (___kont243769243770_))))
                        (___kont243769243770_))
                    (___kont243769243770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243769243770_))
                                                (___kont243769243770_))
                                            (___kont243769243770_))))
                                    (___kont243769243770_))))
                            (___kont243769243770_))
                        (___kont243769243770_))
                    (___kont243769243770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243769243770_))))
                                            (___kont243769243770_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234892235155_ _target234889235150_ '())))))
                   (___match243784243785_
                    (lambda (_e234840235402_
                             _hd234839235405_
                             _tl234838235407_
                             ___splice243757243758_
                             _target234841235410_
                             _tl234843235412_)
                      (letrec ((_loop234844235415_
                                (lambda (_hd234842235418_ _arg234848235420_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234842235418_))
                                      (let ((_e234845235423_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234842235418_))))
                                        (let ((_lp-tl234847235428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234845235423_)))
                                              (_lp-hd234846235426_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234845235423_))))
                                          (let ((__tmp245160
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234846235426_
                                                         _arg234848235420_))))
                                            (declare (not safe))
                                            (_loop234844235415_
                                             _lp-tl234847235428_
                                             __tmp245160))))
                                      (let ((_arg234849235431_
                                             (reverse _arg234848235420_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234838235407_))
                                            (let ((_e234852235434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234838235407_))))
                                              (let ((_tl234850235439_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234852235434_)))
                                                    (_hd234851235437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234852235434_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234851235437_))
                                                    (let ((_e234855235442_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234851235437_))))
                                                      (let ((_tl234853235447_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234855235442_)))
                    (_hd234854235445_
                     (let () (declare (not safe)) (##car _e234855235442_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234854235445_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234854235445_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234853235447_))
                            (let ((_e234858235450_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234853235447_))))
                              (let ((_tl234856235455_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234858235450_)))
                                    (_hd234857235453_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234858235450_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234857235453_))
                                    (let ((_e234861235458_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234857235453_))))
                                      (let ((_tl234859235463_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234861235458_)))
                                            (_hd234860235461_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234861235458_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234860235461_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234860235461_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234859235463_))
                                                    (let ((_e234864235466_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234859235463_))))
                                                      (let ((_tl234862235471_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234864235466_)))
                    (_hd234863235469_
                     (let () (declare (not safe)) (##car _e234864235466_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234862235471_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl234856235455_))
                        (let ((___splice243759243760_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234856235455_
                                  '0))))
                          (let ((_tl234867235476_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243759243760_ '1)))
                                (_target234865235474_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243759243760_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234867235476_))
                                (letrec ((_loop234868235479_
                                          (lambda (_hd234866235482_
                                                   _xarg234872235484_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd234866235482_))
                                                (let ((_e234869235487_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd234866235482_))))
                                                  (let ((_lp-tl234871235492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234869235487_)))
                                                        (_lp-hd234870235490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234869235487_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd234870235490_))
                                                        (let ((_e234876235495_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd234870235490_))))
                  (let ((_tl234874235500_
                         (let () (declare (not safe)) (##cdr _e234876235495_)))
                        (_hd234875235498_
                         (let ()
                           (declare (not safe))
                           (##car _e234876235495_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234875235498_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd234875235498_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234874235500_))
                                (let ((_e234879235503_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234874235500_))))
                                  (let ((_tl234877235508_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234879235503_)))
                                        (_hd234878235506_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234879235503_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234877235508_))
                                        (let ((__tmp245159
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd234878235506_
                                                       _xarg234872235484_))))
                                          (declare (not safe))
                                          (_loop234868235479_
                                           _lp-tl234871235492_
                                           __tmp245159))
                                        (___match243796243797_
                                         _e234840235402_
                                         _hd234839235405_
                                         _tl234838235407_
                                         ___splice243757243758_
                                         _target234841235410_
                                         _tl234843235412_))))
                                (___match243796243797_
                                 _e234840235402_
                                 _hd234839235405_
                                 _tl234838235407_
                                 ___splice243757243758_
                                 _target234841235410_
                                 _tl234843235412_))
                            (___match243796243797_
                             _e234840235402_
                             _hd234839235405_
                             _tl234838235407_
                             ___splice243757243758_
                             _target234841235410_
                             _tl234843235412_))
                        (___match243796243797_
                         _e234840235402_
                         _hd234839235405_
                         _tl234838235407_
                         ___splice243757243758_
                         _target234841235410_
                         _tl234843235412_))))
                (___match243796243797_
                 _e234840235402_
                 _hd234839235405_
                 _tl234838235407_
                 ___splice243757243758_
                 _target234841235410_
                 _tl234843235412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg234873235511_
                                                       (reverse _xarg234872235484_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234850235439_))
                                                      (let ((_L235514_
                                                             _xarg234873235511_)
                                                            (_L235515_
                                                             _hd234863235469_)
                                                            (_L235516_
                                                             _arg234849235431_))
                                                        (if (and (let ((__tmp245157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp245158
                                       (lambda (_g235544235547_
                                                _g235545235549_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235544235547_
                                                 _g235545235549_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245158 '() _L235516_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp245157))
                         (fx= (length (let ((__tmp245155
                                             (lambda (_g235551235554_
                                                      _g235552235556_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g235551235554_
                                                       _g235552235556_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp245155 '() _L235516_)))
                              (length (let ((__tmp245156
                                             (lambda (_g235558235561_
                                                      _g235559235563_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g235558235561_
                                                       _g235559235563_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp245156 '() _L235514_))))
                         (let ((__tmp245153
                                (let ((__tmp245154
                                       (lambda (_g235565235568_
                                                _g235566235570_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235565235568_
                                                 _g235566235570_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245154 '() _L235516_)))
                               (__tmp245151
                                (let ((__tmp245152
                                       (lambda (_g235572235575_
                                                _g235573235577_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235572235575_
                                                 _g235573235577_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245152 '() _L235514_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp245153
                                    __tmp245151))
                         (let ((__tmp245147
                                (let ((__tmp245150
                                       (lambda (_g235579235581_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g235579235581_
                                            _L235515_))))
                                      (__tmp245148
                                       (let ((__tmp245149
                                              (lambda (_g235583235586_
                                                       _g235584235588_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g235583235586_
                                                        _g235584235588_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp245149 '() _L235516_))))
                                  (declare (not safe))
                                  (find __tmp245150 __tmp245148))))
                           (declare (not safe))
                           (not __tmp245147)))
                    (___kont243755243756_ _L235514_ _L235515_ _L235516_)
                    (___match243796243797_
                     _e234840235402_
                     _hd234839235405_
                     _tl234838235407_
                     ___splice243757243758_
                     _target234841235410_
                     _tl234843235412_)))
              (___match243796243797_
               _e234840235402_
               _hd234839235405_
               _tl234838235407_
               ___splice243757243758_
               _target234841235410_
               _tl234843235412_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop234868235479_
                                     _target234865235474_
                                     '())))
                                (___match243796243797_
                                 _e234840235402_
                                 _hd234839235405_
                                 _tl234838235407_
                                 ___splice243757243758_
                                 _target234841235410_
                                 _tl234843235412_))))
                        (___match243796243797_
                         _e234840235402_
                         _hd234839235405_
                         _tl234838235407_
                         ___splice243757243758_
                         _target234841235410_
                         _tl234843235412_))
                    (___match243796243797_
                     _e234840235402_
                     _hd234839235405_
                     _tl234838235407_
                     ___splice243757243758_
                     _target234841235410_
                     _tl234843235412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243796243797_
                                                     _e234840235402_
                                                     _hd234839235405_
                                                     _tl234838235407_
                                                     ___splice243757243758_
                                                     _target234841235410_
                                                     _tl234843235412_))
                                                (___match243796243797_
                                                 _e234840235402_
                                                 _hd234839235405_
                                                 _tl234838235407_
                                                 ___splice243757243758_
                                                 _target234841235410_
                                                 _tl234843235412_))
                                            (___match243796243797_
                                             _e234840235402_
                                             _hd234839235405_
                                             _tl234838235407_
                                             ___splice243757243758_
                                             _target234841235410_
                                             _tl234843235412_))))
                                    (___match243796243797_
                                     _e234840235402_
                                     _hd234839235405_
                                     _tl234838235407_
                                     ___splice243757243758_
                                     _target234841235410_
                                     _tl234843235412_))))
                            (___match243796243797_
                             _e234840235402_
                             _hd234839235405_
                             _tl234838235407_
                             ___splice243757243758_
                             _target234841235410_
                             _tl234843235412_))
                        (___match243796243797_
                         _e234840235402_
                         _hd234839235405_
                         _tl234838235407_
                         ___splice243757243758_
                         _target234841235410_
                         _tl234843235412_))
                    (___match243796243797_
                     _e234840235402_
                     _hd234839235405_
                     _tl234838235407_
                     ___splice243757243758_
                     _target234841235410_
                     _tl234843235412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243796243797_
                                                     _e234840235402_
                                                     _hd234839235405_
                                                     _tl234838235407_
                                                     ___splice243757243758_
                                                     _target234841235410_
                                                     _tl234843235412_))))
                                            (___match243796243797_
                                             _e234840235402_
                                             _hd234839235405_
                                             _tl234838235407_
                                             ___splice243757243758_
                                             _target234841235410_
                                             _tl234843235412_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234844235415_ _target234841235410_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243753243754_))
                  (let ((_e234840235402_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243753243754_))))
                    (let ((_tl234838235407_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234840235402_)))
                          (_hd234839235405_
                           (let ()
                             (declare (not safe))
                             (##car _e234840235402_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd234839235405_))
                          (let ((___splice243757243758_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd234839235405_
                                    '0))))
                            (let ((_tl234843235412_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243757243758_ '1)))
                                  (_target234841235410_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243757243758_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234843235412_))
                                  (___match243784243785_
                                   _e234840235402_
                                   _hd234839235405_
                                   _tl234838235407_
                                   ___splice243757243758_
                                   _target234841235410_
                                   _tl234843235412_)
                                  (___match243796243797_
                                   _e234840235402_
                                   _hd234839235405_
                                   _tl234838235407_
                                   ___splice243757243758_
                                   _target234841235410_
                                   _tl234843235412_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234838235407_))
                              (let ((_e234955235010_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234838235407_))))
                                (let ((_tl234953235015_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234955235010_)))
                                      (_hd234954235013_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234955235010_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234954235013_))
                                      (let ((_e234958235018_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234954235013_))))
                                        (let ((_tl234956235023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234958235018_)))
                                              (_hd234957235021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234958235018_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd234957235021_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd234957235021_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234956235023_))
                                                      (let ((_e234961235026_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234956235023_))))
                (let ((_tl234959235031_
                       (let () (declare (not safe)) (##cdr _e234961235026_)))
                      (_hd234960235029_
                       (let () (declare (not safe)) (##car _e234961235026_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234960235029_))
                      (let ((_e234964235034_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234960235029_))))
                        (let ((_tl234962235039_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234964235034_)))
                              (_hd234963235037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234964235034_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234963235037_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234963235037_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234962235039_))
                                      (let ((_e234967235042_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234962235039_))))
                                        (let ((_tl234965235047_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234967235042_)))
                                              (_hd234966235045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234967235042_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234965235047_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234959235031_))
                                                  (let ((_e234970235050_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234959235031_))))
                                                    (let ((_tl234968235055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234970235050_)))
                                                          (_hd234969235053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234970235050_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234969235053_))
                                                          (let ((_e234973235058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234969235053_))))
                    (let ((_tl234971235063_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234973235058_)))
                          (_hd234972235061_
                           (let ()
                             (declare (not safe))
                             (##car _e234973235058_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234972235061_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234972235061_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234971235063_))
                                  (let ((_e234976235066_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234971235063_))))
                                    (let ((_tl234974235071_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234976235066_)))
                                          (_hd234975235069_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234976235066_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234974235071_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234968235055_))
                                              (let ((_e234979235074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234968235055_))))
                                                (let ((_tl234977235079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234979235074_)))
                                                      (_hd234978235077_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234979235074_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234978235077_))
                                                      (let ((_e234982235082_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234978235077_))))
                (let ((_tl234980235087_
                       (let () (declare (not safe)) (##cdr _e234982235082_)))
                      (_hd234981235085_
                       (let () (declare (not safe)) (##car _e234982235082_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd234981235085_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234981235085_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234980235087_))
                              (let ((_e234985235090_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234980235087_))))
                                (let ((_tl234983235095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234985235090_)))
                                      (_hd234984235093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234985235090_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234983235095_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234977235079_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234953235015_))
                                              (___match243894243895_
                                               _e234840235402_
                                               _hd234839235405_
                                               _tl234838235407_
                                               _e234955235010_
                                               _hd234954235013_
                                               _tl234953235015_
                                               _e234958235018_
                                               _hd234957235021_
                                               _tl234956235023_
                                               _e234961235026_
                                               _hd234960235029_
                                               _tl234959235031_
                                               _e234964235034_
                                               _hd234963235037_
                                               _tl234962235039_
                                               _e234967235042_
                                               _hd234966235045_
                                               _tl234965235047_
                                               _e234970235050_
                                               _hd234969235053_
                                               _tl234968235055_
                                               _e234973235058_
                                               _hd234972235061_
                                               _tl234971235063_
                                               _e234976235066_
                                               _hd234975235069_
                                               _tl234974235071_
                                               _e234979235074_
                                               _hd234978235077_
                                               _tl234977235079_
                                               _e234982235082_
                                               _hd234981235085_
                                               _tl234980235087_
                                               _e234985235090_
                                               _hd234984235093_
                                               _tl234983235095_)
                                              (___kont243769243770_))
                                          (___kont243769243770_))
                                      (___kont243769243770_))))
                              (___kont243769243770_))
                          (___kont243769243770_))
                      (___kont243769243770_))))
              (___kont243769243770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont243769243770_))
                                          (___kont243769243770_))))
                                  (___kont243769243770_))
                              (___kont243769243770_))
                          (___kont243769243770_))))
                  (___kont243769243770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243769243770_))
                                              (___kont243769243770_))))
                                      (___kont243769243770_))
                                  (___kont243769243770_))
                              (___kont243769243770_))))
                      (___kont243769243770_))))
              (___kont243769243770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243769243770_))
                                              (___kont243769243770_))))
                                      (___kont243769243770_))))
                              (___kont243769243770_)))))
                  (___kont243769243770_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form234296_)
        (let* ((___stx243897243898_ _form234296_)
               (_g234300234424_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243897243898_)))))
          (let ((___kont243899243900_
                 (lambda (_L234794_ _L234795_ _L234796_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234795_))))
                (___kont243905243906_
                 (lambda (_L234642_ _L234643_ _L234644_ _L234645_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234642_))))
                (___kont243909243910_
                 (lambda (_L234509_ _L234510_ _L234511_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234509_)))))
            (let* ((___match244006244007_
                    (lambda (_e234392234429_
                             _hd234391234432_
                             _tl234390234434_
                             _e234395234437_
                             _hd234394234440_
                             _tl234393234442_
                             _e234398234445_
                             _hd234397234448_
                             _tl234396234450_
                             _e234401234453_
                             _hd234400234456_
                             _tl234399234458_
                             _e234404234461_
                             _hd234403234464_
                             _tl234402234466_
                             _e234407234469_
                             _hd234406234472_
                             _tl234405234474_
                             _e234410234477_
                             _hd234409234480_
                             _tl234408234482_
                             _e234413234485_
                             _hd234412234488_
                             _tl234411234490_
                             _e234416234493_
                             _hd234415234496_
                             _tl234414234498_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234408234482_))
                          (let ((_e234419234501_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234408234482_))))
                            (let ((_tl234417234506_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234419234501_)))
                                  (_hd234418234504_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234419234501_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234417234506_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234393234442_))
                                      (___kont243909243910_
                                       _hd234415234496_
                                       _hd234406234472_
                                       _hd234391234432_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234300234424_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g234300234424_)))))
                          (let () (declare (not safe)) (_g234300234424_)))))
                   (___match243936243937_
                    (lambda (_e234353234546_
                             _hd234352234549_
                             _tl234351234551_
                             ___splice243907243908_
                             _target234354234554_
                             _tl234356234556_)
                      (letrec ((_loop234357234559_
                                (lambda (_hd234355234562_ _arg234361234564_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234355234562_))
                                      (let ((_e234358234567_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234355234562_))))
                                        (let ((_lp-tl234360234572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234358234567_)))
                                              (_lp-hd234359234570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234358234567_))))
                                          (let ((__tmp245161
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234359234570_
                                                         _arg234361234564_))))
                                            (declare (not safe))
                                            (_loop234357234559_
                                             _lp-tl234360234572_
                                             __tmp245161))))
                                      (let ((_arg234362234575_
                                             (reverse _arg234361234564_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234351234551_))
                                            (let ((_e234365234578_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234351234551_))))
                                              (let ((_tl234363234583_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234365234578_)))
                                                    (_hd234364234581_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234365234578_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234364234581_))
                                                    (let ((_e234368234586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234364234581_))))
                                                      (let ((_tl234366234591_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234368234586_)))
                    (_hd234367234589_
                     (let () (declare (not safe)) (##car _e234368234586_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234367234589_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234367234589_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234366234591_))
                            (let ((_e234371234594_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234366234591_))))
                              (let ((_tl234369234599_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234371234594_)))
                                    (_hd234370234597_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234371234594_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234370234597_))
                                    (let ((_e234374234602_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234370234597_))))
                                      (let ((_tl234372234607_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234374234602_)))
                                            (_hd234373234605_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234374234602_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234373234605_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234373234605_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234372234607_))
                                                    (let ((_e234377234610_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234372234607_))))
                                                      (let ((_tl234375234615_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234377234610_)))
                    (_hd234376234613_
                     (let () (declare (not safe)) (##car _e234377234610_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234375234615_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234369234599_))
                        (let ((_e234380234618_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234369234599_))))
                          (let ((_tl234378234623_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234380234618_)))
                                (_hd234379234621_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234380234618_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234379234621_))
                                (let ((_e234383234626_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234379234621_))))
                                  (let ((_tl234381234631_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234383234626_)))
                                        (_hd234382234629_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234383234626_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234382234629_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234382234629_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234381234631_))
                                                (let ((_e234386234634_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234381234631_))))
                                                  (let ((_tl234384234639_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234386234634_)))
                                                        (_hd234385234637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234386234634_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234384234639_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl234363234583_))
                                                            (___kont243905243906_
                                                             _hd234385234637_
                                                             _hd234376234613_
                                                             _tl234356234556_
                                                             _arg234362234575_)
                                                            (___match244006244007_
                                                             _e234353234546_
                                                             _hd234352234549_
                                                             _tl234351234551_
                                                             _e234365234578_
                                                             _hd234364234581_
                                                             _tl234363234583_
                                                             _e234368234586_
                                                             _hd234367234589_
                                                             _tl234366234591_
                                                             _e234371234594_
                                                             _hd234370234597_
                                                             _tl234369234599_
                                                             _e234374234602_
                                                             _hd234373234605_
                                                             _tl234372234607_
                                                             _e234377234610_
                                                             _hd234376234613_
                                                             _tl234375234615_
                                                             _e234380234618_
                                                             _hd234379234621_
                                                             _tl234378234623_
                                                             _e234383234626_
                                                             _hd234382234629_
                                                             _tl234381234631_
                                                             _e234386234634_
                                                             _hd234385234637_
                                                             _tl234384234639_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g234300234424_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g234300234424_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g234300234424_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g234300234424_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234300234424_)))))
                        (let () (declare (not safe)) (_g234300234424_)))
                    (let () (declare (not safe)) (_g234300234424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g234300234424_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g234300234424_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g234300234424_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g234300234424_)))))
                            (let () (declare (not safe)) (_g234300234424_)))
                        (let () (declare (not safe)) (_g234300234424_)))
                    (let () (declare (not safe)) (_g234300234424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g234300234424_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g234300234424_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234357234559_ _target234354234554_ '())))))
                   (___match243924243925_
                    (lambda (_e234307234682_
                             _hd234306234685_
                             _tl234305234687_
                             ___splice243901243902_
                             _target234308234690_
                             _tl234310234692_)
                      (letrec ((_loop234311234695_
                                (lambda (_hd234309234698_ _arg234315234700_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234309234698_))
                                      (let ((_e234312234703_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234309234698_))))
                                        (let ((_lp-tl234314234708_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234312234703_)))
                                              (_lp-hd234313234706_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234312234703_))))
                                          (let ((__tmp245163
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234313234706_
                                                         _arg234315234700_))))
                                            (declare (not safe))
                                            (_loop234311234695_
                                             _lp-tl234314234708_
                                             __tmp245163))))
                                      (let ((_arg234316234711_
                                             (reverse _arg234315234700_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234305234687_))
                                            (let ((_e234319234714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234305234687_))))
                                              (let ((_tl234317234719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234319234714_)))
                                                    (_hd234318234717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234319234714_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234318234717_))
                                                    (let ((_e234322234722_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234318234717_))))
                                                      (let ((_tl234320234727_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234322234722_)))
                    (_hd234321234725_
                     (let () (declare (not safe)) (##car _e234322234722_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234321234725_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234321234725_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234320234727_))
                            (let ((_e234325234730_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234320234727_))))
                              (let ((_tl234323234735_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234325234730_)))
                                    (_hd234324234733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234325234730_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234324234733_))
                                    (let ((_e234328234738_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234324234733_))))
                                      (let ((_tl234326234743_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234328234738_)))
                                            (_hd234327234741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234328234738_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234327234741_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234327234741_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234326234743_))
                                                    (let ((_e234331234746_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234326234743_))))
                                                      (let ((_tl234329234751_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234331234746_)))
                    (_hd234330234749_
                     (let () (declare (not safe)) (##car _e234331234746_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234329234751_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl234323234735_))
                        (let ((___splice243903243904_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234323234735_
                                  '0))))
                          (let ((_tl234334234756_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243903243904_ '1)))
                                (_target234332234754_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243903243904_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234334234756_))
                                (letrec ((_loop234335234759_
                                          (lambda (_hd234333234762_
                                                   _xarg234339234764_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd234333234762_))
                                                (let ((_e234336234767_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd234333234762_))))
                                                  (let ((_lp-tl234338234772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234336234767_)))
                                                        (_lp-hd234337234770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234336234767_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd234337234770_))
                                                        (let ((_e234343234775_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd234337234770_))))
                  (let ((_tl234341234780_
                         (let () (declare (not safe)) (##cdr _e234343234775_)))
                        (_hd234342234778_
                         (let ()
                           (declare (not safe))
                           (##car _e234343234775_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234342234778_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd234342234778_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234341234780_))
                                (let ((_e234346234783_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234341234780_))))
                                  (let ((_tl234344234788_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234346234783_)))
                                        (_hd234345234786_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234346234783_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234344234788_))
                                        (let ((__tmp245162
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd234345234786_
                                                       _xarg234339234764_))))
                                          (declare (not safe))
                                          (_loop234335234759_
                                           _lp-tl234338234772_
                                           __tmp245162))
                                        (___match243936243937_
                                         _e234307234682_
                                         _hd234306234685_
                                         _tl234305234687_
                                         ___splice243901243902_
                                         _target234308234690_
                                         _tl234310234692_))))
                                (___match243936243937_
                                 _e234307234682_
                                 _hd234306234685_
                                 _tl234305234687_
                                 ___splice243901243902_
                                 _target234308234690_
                                 _tl234310234692_))
                            (___match243936243937_
                             _e234307234682_
                             _hd234306234685_
                             _tl234305234687_
                             ___splice243901243902_
                             _target234308234690_
                             _tl234310234692_))
                        (___match243936243937_
                         _e234307234682_
                         _hd234306234685_
                         _tl234305234687_
                         ___splice243901243902_
                         _target234308234690_
                         _tl234310234692_))))
                (___match243936243937_
                 _e234307234682_
                 _hd234306234685_
                 _tl234305234687_
                 ___splice243901243902_
                 _target234308234690_
                 _tl234310234692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg234340234791_
                                                       (reverse _xarg234339234764_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234317234719_))
                                                      (___kont243899243900_
                                                       _xarg234340234791_
                                                       _hd234330234749_
                                                       _arg234316234711_)
                                                      (___match243936243937_
                                                       _e234307234682_
                                                       _hd234306234685_
                                                       _tl234305234687_
                                                       ___splice243901243902_
                                                       _target234308234690_
                                                       _tl234310234692_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop234335234759_
                                     _target234332234754_
                                     '())))
                                (___match243936243937_
                                 _e234307234682_
                                 _hd234306234685_
                                 _tl234305234687_
                                 ___splice243901243902_
                                 _target234308234690_
                                 _tl234310234692_))))
                        (___match243936243937_
                         _e234307234682_
                         _hd234306234685_
                         _tl234305234687_
                         ___splice243901243902_
                         _target234308234690_
                         _tl234310234692_))
                    (___match243936243937_
                     _e234307234682_
                     _hd234306234685_
                     _tl234305234687_
                     ___splice243901243902_
                     _target234308234690_
                     _tl234310234692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243936243937_
                                                     _e234307234682_
                                                     _hd234306234685_
                                                     _tl234305234687_
                                                     ___splice243901243902_
                                                     _target234308234690_
                                                     _tl234310234692_))
                                                (___match243936243937_
                                                 _e234307234682_
                                                 _hd234306234685_
                                                 _tl234305234687_
                                                 ___splice243901243902_
                                                 _target234308234690_
                                                 _tl234310234692_))
                                            (___match243936243937_
                                             _e234307234682_
                                             _hd234306234685_
                                             _tl234305234687_
                                             ___splice243901243902_
                                             _target234308234690_
                                             _tl234310234692_))))
                                    (___match243936243937_
                                     _e234307234682_
                                     _hd234306234685_
                                     _tl234305234687_
                                     ___splice243901243902_
                                     _target234308234690_
                                     _tl234310234692_))))
                            (___match243936243937_
                             _e234307234682_
                             _hd234306234685_
                             _tl234305234687_
                             ___splice243901243902_
                             _target234308234690_
                             _tl234310234692_))
                        (___match243936243937_
                         _e234307234682_
                         _hd234306234685_
                         _tl234305234687_
                         ___splice243901243902_
                         _target234308234690_
                         _tl234310234692_))
                    (___match243936243937_
                     _e234307234682_
                     _hd234306234685_
                     _tl234305234687_
                     ___splice243901243902_
                     _target234308234690_
                     _tl234310234692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243936243937_
                                                     _e234307234682_
                                                     _hd234306234685_
                                                     _tl234305234687_
                                                     ___splice243901243902_
                                                     _target234308234690_
                                                     _tl234310234692_))))
                                            (___match243936243937_
                                             _e234307234682_
                                             _hd234306234685_
                                             _tl234305234687_
                                             ___splice243901243902_
                                             _target234308234690_
                                             _tl234310234692_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234311234695_ _target234308234690_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243897243898_))
                  (let ((_e234307234682_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243897243898_))))
                    (let ((_tl234305234687_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234307234682_)))
                          (_hd234306234685_
                           (let ()
                             (declare (not safe))
                             (##car _e234307234682_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd234306234685_))
                          (let ((___splice243901243902_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd234306234685_
                                    '0))))
                            (let ((_tl234310234692_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243901243902_ '1)))
                                  (_target234308234690_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243901243902_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234310234692_))
                                  (___match243924243925_
                                   _e234307234682_
                                   _hd234306234685_
                                   _tl234305234687_
                                   ___splice243901243902_
                                   _target234308234690_
                                   _tl234310234692_)
                                  (___match243936243937_
                                   _e234307234682_
                                   _hd234306234685_
                                   _tl234305234687_
                                   ___splice243901243902_
                                   _target234308234690_
                                   _tl234310234692_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234305234687_))
                              (let ((_e234395234437_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234305234687_))))
                                (let ((_tl234393234442_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234395234437_)))
                                      (_hd234394234440_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234395234437_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234394234440_))
                                      (let ((_e234398234445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234394234440_))))
                                        (let ((_tl234396234450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234398234445_)))
                                              (_hd234397234448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234398234445_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd234397234448_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd234397234448_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234396234450_))
                                                      (let ((_e234401234453_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234396234450_))))
                (let ((_tl234399234458_
                       (let () (declare (not safe)) (##cdr _e234401234453_)))
                      (_hd234400234456_
                       (let () (declare (not safe)) (##car _e234401234453_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234400234456_))
                      (let ((_e234404234461_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234400234456_))))
                        (let ((_tl234402234466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234404234461_)))
                              (_hd234403234464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234404234461_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234403234464_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234403234464_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234402234466_))
                                      (let ((_e234407234469_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234402234466_))))
                                        (let ((_tl234405234474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234407234469_)))
                                              (_hd234406234472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234407234469_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234405234474_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234399234458_))
                                                  (let ((_e234410234477_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234399234458_))))
                                                    (let ((_tl234408234482_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234410234477_)))
                                                          (_hd234409234480_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234410234477_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234409234480_))
                                                          (let ((_e234413234485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234409234480_))))
                    (let ((_tl234411234490_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234413234485_)))
                          (_hd234412234488_
                           (let ()
                             (declare (not safe))
                             (##car _e234413234485_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234412234488_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234412234488_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234411234490_))
                                  (let ((_e234416234493_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234411234490_))))
                                    (let ((_tl234414234498_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234416234493_)))
                                          (_hd234415234496_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234416234493_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234414234498_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234408234482_))
                                              (let ((_e234419234501_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234408234482_))))
                                                (let ((_tl234417234506_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234419234501_)))
                                                      (_hd234418234504_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234419234501_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234417234506_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234393234442_))
                                                          (___kont243909243910_
                                                           _hd234415234496_
                                                           _hd234406234472_
                                                           _hd234306234685_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g234300234424_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234300234424_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234300234424_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g234300234424_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234300234424_)))
                              (let () (declare (not safe)) (_g234300234424_)))
                          (let () (declare (not safe)) (_g234300234424_)))))
                  (let () (declare (not safe)) (_g234300234424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234300234424_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g234300234424_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234300234424_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g234300234424_)))
                              (let ()
                                (declare (not safe))
                                (_g234300234424_)))))
                      (let () (declare (not safe)) (_g234300234424_)))))
              (let () (declare (not safe)) (_g234300234424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234300234424_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g234300234424_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234300234424_)))))
                              (let ()
                                (declare (not safe))
                                (_g234300234424_))))))
                  (let () (declare (not safe)) (_g234300234424_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form234100_)
        (let* ((_g234102234116_
                (lambda (_g234103234113_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234103234113_))))
               (_g234101234293_
                (lambda (_g234103234119_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234103234119_))
                      (let ((_e234108234121_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234103234119_))))
                        (let ((_hd234107234124_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234108234121_)))
                              (_tl234106234126_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234108234121_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234106234126_))
                              (let ((_e234111234129_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234106234126_))))
                                (let ((_hd234110234132_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234111234129_)))
                                      (_tl234109234134_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234111234129_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234109234134_))
                                      ((lambda (_L234137_ _L234138_)
                                         (let* ((___stx244019244020_ _L234138_)
                                                (_g234153234181_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx244019244020_)))))
                                           (let ((___kont244021244022_
                                                  (lambda (_L234272_)
                                                    (length (let ((__tmp245164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g234282234285_ _g234283234287_)
                             (let ()
                               (declare (not safe))
                               (cons _g234282234285_ _g234283234287_)))))
                      (declare (not safe))
                      (foldr1 __tmp245164 '() _L234272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont244025244026_
                                                  (lambda (_L234223_ _L234224_)
                                                    (let ((__tmp245165
                                                           (length (let ((__tmp245166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g234235234238_ _g234236234240_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g234235234238_
                                            _g234236234240_)))))
                             (declare (not safe))
                             (foldr1 __tmp245166 '() _L234224_)))))
              (declare (not safe))
              (cons __tmp245165 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont244029244030_
                                                  (lambda (_L234186_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match244044244045_
                                                     (lambda (___splice244027244028_
                                                              _target234167234199_
                                                              _tl234169234201_)
                                                       (letrec ((_loop234170234204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd234168234207_ _arg234174234209_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd234168234207_))
                               (let ((_e234171234212_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd234168234207_))))
                                 (let ((_lp-tl234173234217_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e234171234212_)))
                                       (_lp-hd234172234215_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e234171234212_))))
                                   (let ((__tmp245167
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd234172234215_
                                                  _arg234174234209_))))
                                     (declare (not safe))
                                     (_loop234170234204_
                                      _lp-tl234173234217_
                                      __tmp245167))))
                               (let ((_arg234175234220_
                                      (reverse _arg234174234209_)))
                                 (___kont244025244026_
                                  _tl234169234201_
                                  _arg234175234220_))))))
                 (let ()
                   (declare (not safe))
                   (_loop234170234204_ _target234167234199_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match244038244039_
                                                     (lambda (___splice244023244024_
                                                              _target234156234248_
                                                              _tl234158234250_)
                                                       (letrec ((_loop234159234253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd234157234256_ _arg234163234258_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd234157234256_))
                               (let ((_e234160234261_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd234157234256_))))
                                 (let ((_lp-tl234162234266_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e234160234261_)))
                                       (_lp-hd234161234264_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e234160234261_))))
                                   (let ((__tmp245168
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd234161234264_
                                                  _arg234163234258_))))
                                     (declare (not safe))
                                     (_loop234159234253_
                                      _lp-tl234162234266_
                                      __tmp245168))))
                               (let ((_arg234164234269_
                                      (reverse _arg234163234258_)))
                                 (___kont244021244022_ _arg234164234269_))))))
                 (let ()
                   (declare (not safe))
                   (_loop234159234253_ _target234156234248_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx244019244020_))
                                                   (let ((___splice244023244024_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx244019244020_
                                                             '0))))
                                                     (let ((_tl234158234250_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice244023244024_
                                                               '1)))
                                                           (_target234156234248_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice244023244024_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl234158234250_))
                                                           (___match244038244039_
                                                            ___splice244023244024_
                                                            _target234156234248_
                                                            _tl234158234250_)
                                                           (___match244044244045_
                                                            ___splice244023244024_
                                                            _target234156234248_
                                                            _tl234158234250_))))
                                                   (___kont244029244030_
                                                    ___stx244019244020_))))))
                                       _hd234110234132_
                                       _hd234107234124_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234102234116_ _g234103234119_)))))
                              (let ()
                                (declare (not safe))
                                (_g234102234116_ _g234103234119_)))))
                      (let ()
                        (declare (not safe))
                        (_g234102234116_ _g234103234119_))))))
          (declare (not safe))
          (_g234101234293_ _form234100_))))
    (define gxc#lambda-expr?
      (lambda (_expr234053_)
        (let* ((___stx244047244048_ _expr234053_)
               (_g234056234066_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244047244048_)))))
          (let ((___kont244049244050_ (lambda (_L234086_) '#t))
                (___kont244051244052_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244047244048_))
                (let ((_e234061234078_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244047244048_))))
                  (let ((_tl234059234083_
                         (let () (declare (not safe)) (##cdr _e234061234078_)))
                        (_hd234060234081_
                         (let ()
                           (declare (not safe))
                           (##car _e234061234078_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234060234081_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd234060234081_))
                            (___kont244049244050_ _tl234059234083_)
                            (___kont244051244052_))
                        (___kont244051244052_))))
                (___kont244051244052_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr234006_)
        (let* ((___stx244065244066_ _expr234006_)
               (_g234009234019_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244065244066_)))))
          (let ((___kont244067244068_ (lambda (_L234039_) '#t))
                (___kont244069244070_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244065244066_))
                (let ((_e234014234031_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244065244066_))))
                  (let ((_tl234012234036_
                         (let () (declare (not safe)) (##cdr _e234014234031_)))
                        (_hd234013234034_
                         (let ()
                           (declare (not safe))
                           (##car _e234014234031_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234013234034_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd234013234034_))
                            (___kont244067244068_ _tl234012234036_)
                            (___kont244069244070_))
                        (___kont244069244070_))))
                (___kont244069244070_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr233875_)
        (let* ((___stx244083244084_ _expr233875_)
               (_g233878233908_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244083244084_)))))
          (let ((___kont244085244086_
                 (lambda (_L233976_ _L233977_ _L233978_)
                   (if (let () (declare (not safe)) (gx#identifier? _L233978_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L233977_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L233976_))
                           '#f)
                       '#f)))
                (___kont244087244088_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244083244084_))
                (let ((_e233885233920_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244083244084_))))
                  (let ((_tl233883233925_
                         (let () (declare (not safe)) (##cdr _e233885233920_)))
                        (_hd233884233923_
                         (let ()
                           (declare (not safe))
                           (##car _e233885233920_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233884233923_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd233884233923_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233883233925_))
                                (let ((_e233888233928_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233883233925_))))
                                  (let ((_tl233886233933_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233888233928_)))
                                        (_hd233887233931_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233888233928_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233887233931_))
                                        (let ((_e233891233936_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233887233931_))))
                                          (let ((_tl233889233941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233891233936_)))
                                                (_hd233890233939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233891233936_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233890233939_))
                                                (let ((_e233894233944_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233890233939_))))
                                                  (let ((_tl233892233949_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233894233944_)))
                                                        (_hd233893233947_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233894233944_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233893233947_))
                                                        (let ((_e233897233952_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233893233947_))))
                  (let ((_tl233895233957_
                         (let () (declare (not safe)) (##cdr _e233897233952_)))
                        (_hd233896233955_
                         (let ()
                           (declare (not safe))
                           (##car _e233897233952_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233895233957_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233892233949_))
                            (let ((_e233900233960_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233892233949_))))
                              (let ((_tl233898233965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233900233960_)))
                                    (_hd233899233963_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233900233960_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233898233965_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233889233941_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233886233933_))
                                            (let ((_e233903233968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233886233933_))))
                                              (let ((_tl233901233973_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233903233968_)))
                                                    (_hd233902233971_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233903233968_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233901233973_))
                                                    (___kont244085244086_
                                                     _hd233902233971_
                                                     _hd233899233963_
                                                     _hd233896233955_)
                                                    (___kont244087244088_))))
                                            (___kont244087244088_))
                                        (___kont244087244088_))
                                    (___kont244087244088_))))
                            (___kont244087244088_))
                        (___kont244087244088_))))
                (___kont244087244088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244087244088_))))
                                        (___kont244087244088_))))
                                (___kont244087244088_))
                            (___kont244087244088_))
                        (___kont244087244088_))))
                (___kont244087244088_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr233200_)
        (let* ((___stx244145244146_ _expr233200_)
               (_g233203233361_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244145244146_)))))
          (let ((___kont244147244148_
                 (lambda (_L233749_
                          _L233750_
                          _L233751_
                          _L233752_
                          _L233753_
                          _L233754_
                          _L233755_
                          _L233756_
                          _L233757_
                          _L233758_
                          _L233759_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L233756_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L233752_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L233751_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233759_
                                      _L233750_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L233758_
                                          _L233755_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233753_
                                              _L233749_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233757_
                                              _L233754_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont244149244150_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244145244146_))
                (let ((_e233218233373_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244145244146_))))
                  (let ((_tl233216233378_
                         (let () (declare (not safe)) (##cdr _e233218233373_)))
                        (_hd233217233376_
                         (let ()
                           (declare (not safe))
                           (##car _e233218233373_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233217233376_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd233217233376_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233216233378_))
                                (let ((_e233221233381_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233216233378_))))
                                  (let ((_tl233219233386_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233221233381_)))
                                        (_hd233220233384_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233221233381_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233220233384_))
                                        (let ((_e233224233389_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233220233384_))))
                                          (let ((_tl233222233394_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233224233389_)))
                                                (_hd233223233392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233224233389_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233223233392_))
                                                (let ((_e233227233397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233223233392_))))
                                                  (let ((_tl233225233402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233227233397_)))
                                                        (_hd233226233400_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233227233397_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233226233400_))
                                                        (let ((_e233230233405_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233226233400_))))
                  (let ((_tl233228233410_
                         (let () (declare (not safe)) (##cdr _e233230233405_)))
                        (_hd233229233408_
                         (let ()
                           (declare (not safe))
                           (##car _e233230233405_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233228233410_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233225233402_))
                            (let ((_e233233233413_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233225233402_))))
                              (let ((_tl233231233418_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233233233413_)))
                                    (_hd233232233416_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233233233413_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233232233416_))
                                    (let ((_e233236233421_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233232233416_))))
                                      (let ((_tl233234233426_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233236233421_)))
                                            (_hd233235233424_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233236233421_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233235233424_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd233235233424_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233234233426_))
                                                    (let ((_e233239233429_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233234233426_))))
                                                      (let ((_tl233237233434_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233239233429_)))
                    (_hd233238233432_
                     (let () (declare (not safe)) (##car _e233239233429_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233238233432_))
                    (let ((_e233242233437_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233238233432_))))
                      (let ((_tl233240233442_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233242233437_)))
                            (_hd233241233440_
                             (let ()
                               (declare (not safe))
                               (##car _e233242233437_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233241233440_))
                            (let ((_e233245233445_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233241233440_))))
                              (let ((_tl233243233450_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233245233445_)))
                                    (_hd233244233448_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233245233445_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233244233448_))
                                    (let ((_e233248233453_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233244233448_))))
                                      (let ((_tl233246233458_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233248233453_)))
                                            (_hd233247233456_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233248233453_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233246233458_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233243233450_))
                                                (let ((_e233251233461_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233243233450_))))
                                                  (let ((_tl233249233466_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233251233461_)))
                                                        (_hd233250233464_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233251233461_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233249233466_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl233240233442_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl233237233434_))
                        (let ((_e233254233469_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233237233434_))))
                          (let ((_tl233252233474_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233254233469_)))
                                (_hd233253233472_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233254233469_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233253233472_))
                                (let ((_e233257233477_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233253233472_))))
                                  (let ((_tl233255233482_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233257233477_)))
                                        (_hd233256233480_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233257233477_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233256233480_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd233256233480_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233255233482_))
                                                (let ((_e233260233485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233255233482_))))
                                                  (let ((_tl233258233490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233260233485_)))
                                                        (_hd233259233488_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233260233485_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233259233488_))
                                                        (let ((_e233263233493_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233259233488_))))
                  (let ((_tl233261233498_
                         (let () (declare (not safe)) (##cdr _e233263233493_)))
                        (_hd233262233496_
                         (let ()
                           (declare (not safe))
                           (##car _e233263233493_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233258233490_))
                        (let ((_e233266233501_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233258233490_))))
                          (let ((_tl233264233506_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233266233501_)))
                                (_hd233265233504_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233266233501_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233265233504_))
                                (let ((_e233269233509_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233265233504_))))
                                  (let ((_tl233267233514_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233269233509_)))
                                        (_hd233268233512_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233269233509_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233268233512_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd233268233512_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233267233514_))
                                                (let ((_e233272233517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233267233514_))))
                                                  (let ((_tl233270233522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233272233517_)))
                                                        (_hd233271233520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233272233517_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233271233520_))
                                                        (let ((_e233275233525_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233271233520_))))
                  (let ((_tl233273233530_
                         (let () (declare (not safe)) (##cdr _e233275233525_)))
                        (_hd233274233528_
                         (let ()
                           (declare (not safe))
                           (##car _e233275233525_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233274233528_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233274233528_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233273233530_))
                                (let ((_e233278233533_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233273233530_))))
                                  (let ((_tl233276233538_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233278233533_)))
                                        (_hd233277233536_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233278233533_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233276233538_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233270233522_))
                                            (let ((_e233281233541_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233270233522_))))
                                              (let ((_tl233279233546_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233281233541_)))
                                                    (_hd233280233544_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233281233541_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233280233544_))
                                                    (let ((_e233284233549_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233280233544_))))
                                                      (let ((_tl233282233554_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233284233549_)))
                    (_hd233283233552_
                     (let () (declare (not safe)) (##car _e233284233549_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233283233552_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd233283233552_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233282233554_))
                            (let ((_e233287233557_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233282233554_))))
                              (let ((_tl233285233562_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233287233557_)))
                                    (_hd233286233560_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233287233557_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233285233562_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl233279233546_))
                                        (let ((_e233290233565_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl233279233546_))))
                                          (let ((_tl233288233570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233290233565_)))
                                                (_hd233289233568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233290233565_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233289233568_))
                                                (let ((_e233293233573_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233289233568_))))
                                                  (let ((_tl233291233578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233293233573_)))
                                                        (_hd233292233576_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233293233573_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd233292233576_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd233292233576_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl233291233578_))
                        (let ((_e233296233581_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233291233578_))))
                          (let ((_tl233294233586_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233296233581_)))
                                (_hd233295233584_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233296233581_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233294233586_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233264233506_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233252233474_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233231233418_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233222233394_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233219233386_))
                                                    (let ((_e233299233589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233219233386_))))
                                                      (let ((_tl233297233594_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233299233589_)))
                    (_hd233298233592_
                     (let () (declare (not safe)) (##car _e233299233589_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233298233592_))
                    (let ((_e233302233597_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233298233592_))))
                      (let ((_tl233300233602_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233302233597_)))
                            (_hd233301233600_
                             (let ()
                               (declare (not safe))
                               (##car _e233302233597_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd233301233600_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd233301233600_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl233300233602_))
                                    (let ((_e233305233605_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl233300233602_))))
                                      (let ((_tl233303233610_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233305233605_)))
                                            (_hd233304233608_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233305233605_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233303233610_))
                                            (let ((_e233308233613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233303233610_))))
                                              (let ((_tl233306233618_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233308233613_)))
                                                    (_hd233307233616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233308233613_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233307233616_))
                                                    (let ((_e233311233621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233307233616_))))
                                                      (let ((_tl233309233626_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233311233621_)))
                    (_hd233310233624_
                     (let () (declare (not safe)) (##car _e233311233621_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233310233624_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233310233624_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233309233626_))
                            (let ((_e233314233629_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233309233626_))))
                              (let ((_tl233312233634_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233314233629_)))
                                    (_hd233313233632_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233314233629_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233313233632_))
                                    (let ((_e233317233637_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233313233632_))))
                                      (let ((_tl233315233642_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233317233637_)))
                                            (_hd233316233640_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233317233637_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233316233640_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233316233640_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233315233642_))
                                                    (let ((_e233320233645_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233315233642_))))
                                                      (let ((_tl233318233650_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233320233645_)))
                    (_hd233319233648_
                     (let () (declare (not safe)) (##car _e233320233645_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233318233650_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233312233634_))
                        (let ((_e233323233653_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233312233634_))))
                          (let ((_tl233321233658_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233323233653_)))
                                (_hd233322233656_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233323233653_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233322233656_))
                                (let ((_e233326233661_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233322233656_))))
                                  (let ((_tl233324233666_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233326233661_)))
                                        (_hd233325233664_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233326233661_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233325233664_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233325233664_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233324233666_))
                                                (let ((_e233329233669_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233324233666_))))
                                                  (let ((_tl233327233674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233329233669_)))
                                                        (_hd233328233672_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233329233669_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233327233674_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl233321233658_))
                                                            (let ((_e233332233677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl233321233658_))))
                      (let ((_tl233330233682_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233332233677_)))
                            (_hd233331233680_
                             (let ()
                               (declare (not safe))
                               (##car _e233332233677_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233331233680_))
                            (let ((_e233335233685_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233331233680_))))
                              (let ((_tl233333233690_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233335233685_)))
                                    (_hd233334233688_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233335233685_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd233334233688_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd233334233688_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233333233690_))
                                            (let ((_e233338233693_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233333233690_))))
                                              (let ((_tl233336233698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233338233693_)))
                                                    (_hd233337233696_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233338233693_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233336233698_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl233330233682_))
                                                        (let ((_e233341233701_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl233330233682_))))
                  (let ((_tl233339233706_
                         (let () (declare (not safe)) (##cdr _e233341233701_)))
                        (_hd233340233704_
                         (let ()
                           (declare (not safe))
                           (##car _e233341233701_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd233340233704_))
                        (let ((_e233344233709_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd233340233704_))))
                          (let ((_tl233342233714_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233344233709_)))
                                (_hd233343233712_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233344233709_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd233343233712_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd233343233712_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl233342233714_))
                                        (let ((_e233347233717_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl233342233714_))))
                                          (let ((_tl233345233722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233347233717_)))
                                                (_hd233346233720_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233347233717_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233345233722_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233339233706_))
                                                    (let ((_e233350233725_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233339233706_))))
                                                      (let ((_tl233348233730_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233350233725_)))
                    (_hd233349233728_
                     (let () (declare (not safe)) (##car _e233350233725_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233349233728_))
                    (let ((_e233353233733_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233349233728_))))
                      (let ((_tl233351233738_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233353233733_)))
                            (_hd233352233736_
                             (let ()
                               (declare (not safe))
                               (##car _e233353233733_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd233352233736_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd233352233736_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl233351233738_))
                                    (let ((_e233356233741_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl233351233738_))))
                                      (let ((_tl233354233746_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233356233741_)))
                                            (_hd233355233744_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233356233741_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233354233746_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233348233730_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233306233618_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233297233594_))
                                                        (___kont244147244148_
                                                         _hd233355233744_
                                                         _hd233346233720_
                                                         _hd233328233672_
                                                         _hd233319233648_
                                                         _hd233304233608_
                                                         _hd233295233584_
                                                         _hd233286233560_
                                                         _hd233277233536_
                                                         _hd233262233496_
                                                         _hd233247233456_
                                                         _hd233229233408_)
                                                        (___kont244149244150_))
                                                    (___kont244149244150_))
                                                (___kont244149244150_))
                                            (___kont244149244150_))))
                                    (___kont244149244150_))
                                (___kont244149244150_))
                            (___kont244149244150_))))
                    (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244149244150_))
                                                (___kont244149244150_))))
                                        (___kont244149244150_))
                                    (___kont244149244150_))
                                (___kont244149244150_))))
                        (___kont244149244150_))))
                (___kont244149244150_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244149244150_))))
                                            (___kont244149244150_))
                                        (___kont244149244150_))
                                    (___kont244149244150_))))
                            (___kont244149244150_))))
                    (___kont244149244150_))
                (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244149244150_))
                                            (___kont244149244150_))
                                        (___kont244149244150_))))
                                (___kont244149244150_))))
                        (___kont244149244150_))
                    (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244149244150_))
                                                (___kont244149244150_))
                                            (___kont244149244150_))))
                                    (___kont244149244150_))))
                            (___kont244149244150_))
                        (___kont244149244150_))
                    (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244149244150_))))
                                            (___kont244149244150_))))
                                    (___kont244149244150_))
                                (___kont244149244150_))
                            (___kont244149244150_))))
                    (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244149244150_))
                                                (___kont244149244150_))
                                            (___kont244149244150_))
                                        (___kont244149244150_))
                                    (___kont244149244150_))
                                (___kont244149244150_))))
                        (___kont244149244150_))
                    (___kont244149244150_))
                (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244149244150_))))
                                        (___kont244149244150_))
                                    (___kont244149244150_))))
                            (___kont244149244150_))
                        (___kont244149244150_))
                    (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244149244150_))))
                                            (___kont244149244150_))
                                        (___kont244149244150_))))
                                (___kont244149244150_))
                            (___kont244149244150_))
                        (___kont244149244150_))))
                (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244149244150_))
                                            (___kont244149244150_))
                                        (___kont244149244150_))))
                                (___kont244149244150_))))
                        (___kont244149244150_))))
                (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244149244150_))
                                            (___kont244149244150_))
                                        (___kont244149244150_))))
                                (___kont244149244150_))))
                        (___kont244149244150_))
                    (___kont244149244150_))
                (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244149244150_))
                                            (___kont244149244150_))))
                                    (___kont244149244150_))))
                            (___kont244149244150_))))
                    (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244149244150_))
                                                (___kont244149244150_))
                                            (___kont244149244150_))))
                                    (___kont244149244150_))))
                            (___kont244149244150_))
                        (___kont244149244150_))))
                (___kont244149244150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244149244150_))))
                                        (___kont244149244150_))))
                                (___kont244149244150_))
                            (___kont244149244150_))
                        (___kont244149244150_))))
                (___kont244149244150_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx232942_ _id232943_ _clauses232944_ _gensym?232945_)
        (let _lp232947_ ((_rest232949_ _clauses232944_)
                         (_ids232950_ '())
                         (_impls232951_ '())
                         (_clauses232952_ '()))
          (let* ((_rest232953232961_ _rest232949_)
                 (_else232955232969_
                  (lambda ()
                    (values (reverse _ids232950_)
                            (reverse _impls232951_)
                            (reverse _clauses232952_))))
                 (_K232957233174_
                  (lambda (_rest232972_ _clause232973_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause232973_))
                        (let ((__tmp245224
                               (let ()
                                 (declare (not safe))
                                 (cons _clause232973_ _clauses232952_))))
                          (declare (not safe))
                          (_lp232947_
                           _rest232972_
                           _ids232950_
                           _impls232951_
                           __tmp245224))
                        (let* ((_g232975232986_
                                (lambda (_g232976232983_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g232976232983_))))
                               (_g232974233171_
                                (lambda (_g232976232989_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g232976232989_))
                                      (let ((_e232981232991_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g232976232989_))))
                                        (let ((_hd232980232994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232981232991_)))
                                              (_tl232979232996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232981232991_))))
                                          ((lambda (_L232999_ _L233000_)
                                             (let* ((_id233017_
                                                     (let ((__tmp245171
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id232943_)))
                                                           (__tmp245170
                                                            (length _clauses232952_))
                                                           (__tmp245169
                                                            (if _gensym?232945_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp245171
                                                        '"__"
                                                        __tmp245170
                                                        __tmp245169)))
                                                    (_id233019_
                                                     (let ((__tmp245172
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx232942_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id233017_
                                                        __tmp245172)))
                                                    (_impl233021_
                                                     (let ((__tmp245173
                                                            (let ((__tmp245175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp245174
                           (let ()
                             (declare (not safe))
                             (cons _L233000_ _L232999_))))
                      (declare (not safe))
                      (cons __tmp245175 __tmp245174))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp245173 _stx232942_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause233168_
                                                     (let* ((___stx244529244530_
                                                             _L233000_)
                                                            (_g233025233053_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx244529244530_)))))
               (let ((___kont244531244532_
                      (lambda (_L233147_)
                        (let ((__tmp245176
                               (let ((__tmp245177
                                      (let ((__tmp245178
                                             (let ((__tmp245179
                                                    (let ((__tmp245185
                                                           (let ((__tmp245186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id233019_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245186)))
                  (__tmp245180
                   (let ((__tmp245181
                          (lambda (_g233157233160_ _g233158233162_)
                            (let ((__tmp245182
                                   (let ((__tmp245184
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp245183
                                          (let ()
                                            (declare (not safe))
                                            (cons _g233157233160_ '()))))
                                     (declare (not safe))
                                     (cons __tmp245184 __tmp245183))))
                              (declare (not safe))
                              (cons __tmp245182 _g233158233162_)))))
                     (declare (not safe))
                     (foldr1 __tmp245181 '() _L233147_))))
              (declare (not safe))
              (cons __tmp245185 __tmp245180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245179))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245178
                                         _stx232942_))))
                                 (declare (not safe))
                                 (cons __tmp245177 '()))))
                          (declare (not safe))
                          (cons _L233000_ __tmp245176))))
                     (___kont244535244536_
                      (lambda (_L233098_ _L233099_)
                        (let ((__tmp245187
                               (let ((__tmp245188
                                      (let ((__tmp245189
                                             (let ((__tmp245190
                                                    (let ((__tmp245204
                                                           (let ((__tmp245205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245205)))
                  (__tmp245191
                   (let ((__tmp245202
                          (let ((__tmp245203
                                 (let ()
                                   (declare (not safe))
                                   (cons _id233019_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp245203)))
                         (__tmp245192
                          (let ((__tmp245198
                                 (let ((__tmp245199
                                        (let ((__tmp245201
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp245200
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L233098_ '()))))
                                          (declare (not safe))
                                          (cons __tmp245201 __tmp245200))))
                                   (declare (not safe))
                                   (cons __tmp245199 '())))
                                (__tmp245193
                                 (let ((__tmp245194
                                        (lambda (_g233110233113_
                                                 _g233111233115_)
                                          (let ((__tmp245195
                                                 (let ((__tmp245197
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp245196
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g233110233113_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp245197
                                                         __tmp245196))))
                                            (declare (not safe))
                                            (cons __tmp245195
                                                  _g233111233115_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp245194 '() _L233099_))))
                            (declare (not safe))
                            (foldr1 cons __tmp245198 __tmp245193))))
                     (declare (not safe))
                     (cons __tmp245202 __tmp245192))))
              (declare (not safe))
              (cons __tmp245204 __tmp245191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245190))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245189
                                         _stx232942_))))
                                 (declare (not safe))
                                 (cons __tmp245188 '()))))
                          (declare (not safe))
                          (cons _L233000_ __tmp245187))))
                     (___kont244539244540_
                      (lambda (_L233058_)
                        (let ((__tmp245206
                               (let ((__tmp245207
                                      (let ((__tmp245208
                                             (let ((__tmp245209
                                                    (let ((__tmp245217
                                                           (let ((__tmp245218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245218)))
                  (__tmp245210
                   (let ((__tmp245215
                          (let ((__tmp245216
                                 (let ()
                                   (declare (not safe))
                                   (cons _id233019_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp245216)))
                         (__tmp245211
                          (let ((__tmp245212
                                 (let ((__tmp245214
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp245213
                                        (let ()
                                          (declare (not safe))
                                          (cons _L233058_ '()))))
                                   (declare (not safe))
                                   (cons __tmp245214 __tmp245213))))
                            (declare (not safe))
                            (cons __tmp245212 '()))))
                     (declare (not safe))
                     (cons __tmp245215 __tmp245211))))
              (declare (not safe))
              (cons __tmp245217 __tmp245210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245209))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245208
                                         _stx232942_))))
                                 (declare (not safe))
                                 (cons __tmp245207 '()))))
                          (declare (not safe))
                          (cons _L233000_ __tmp245206)))))
                 (let* ((___match244554244555_
                         (lambda (___splice244537244538_
                                  _target233039233074_
                                  _tl233041233076_)
                           (letrec ((_loop233042233079_
                                     (lambda (_hd233040233082_
                                              _arg233046233084_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd233040233082_))
                                           (let ((_e233043233087_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd233040233082_))))
                                             (let ((_lp-tl233045233092_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e233043233087_)))
                                                   (_lp-hd233044233090_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e233043233087_))))
                                               (let ((__tmp245219
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd233044233090_
                                                              _arg233046233084_))))
                                                 (declare (not safe))
                                                 (_loop233042233079_
                                                  _lp-tl233045233092_
                                                  __tmp245219))))
                                           (let ((_arg233047233095_
                                                  (reverse _arg233046233084_)))
                                             (___kont244535244536_
                                              _tl233041233076_
                                              _arg233047233095_))))))
                             (let ()
                               (declare (not safe))
                               (_loop233042233079_
                                _target233039233074_
                                '())))))
                        (___match244548244549_
                         (lambda (___splice244533244534_
                                  _target233028233123_
                                  _tl233030233125_)
                           (letrec ((_loop233031233128_
                                     (lambda (_hd233029233131_
                                              _arg233035233133_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd233029233131_))
                                           (let ((_e233032233136_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd233029233131_))))
                                             (let ((_lp-tl233034233141_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e233032233136_)))
                                                   (_lp-hd233033233139_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e233032233136_))))
                                               (let ((__tmp245220
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd233033233139_
                                                              _arg233035233133_))))
                                                 (declare (not safe))
                                                 (_loop233031233128_
                                                  _lp-tl233034233141_
                                                  __tmp245220))))
                                           (let ((_arg233036233144_
                                                  (reverse _arg233035233133_)))
                                             (___kont244531244532_
                                              _arg233036233144_))))))
                             (let ()
                               (declare (not safe))
                               (_loop233031233128_
                                _target233028233123_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx244529244530_))
                       (let ((___splice244533244534_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx244529244530_
                                 '0))))
                         (let ((_tl233030233125_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice244533244534_ '1)))
                               (_target233028233123_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice244533244534_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl233030233125_))
                               (___match244548244549_
                                ___splice244533244534_
                                _target233028233123_
                                _tl233030233125_)
                               (___match244554244555_
                                ___splice244533244534_
                                _target233028233123_
                                _tl233030233125_))))
                       (___kont244539244540_ ___stx244529244530_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp245223
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id233019_
                                                              _ids232950_)))
                                                     (__tmp245222
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl233021_
                                                              _impls232951_)))
                                                     (__tmp245221
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause233168_
                                                              _clauses232952_))))
                                                 (declare (not safe))
                                                 (_lp232947_
                                                  _rest232972_
                                                  __tmp245223
                                                  __tmp245222
                                                  __tmp245221))))
                                           _tl232979232996_
                                           _hd232980232994_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g232975232986_ _g232976232989_))))))
                          (declare (not safe))
                          (_g232974233171_ _clause232973_))))))
            (if (let () (declare (not safe)) (##pair? _rest232953232961_))
                (let ((_hd232958233177_
                       (let ()
                         (declare (not safe))
                         (##car _rest232953232961_)))
                      (_tl232959233179_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest232953232961_))))
                  (let* ((_clause233182_ _hd232958233177_)
                         (_rest233184_ _tl232959233179_))
                    (declare (not safe))
                    (_K232957233174_ _rest233184_ _clause233182_)))
                (let () (declare (not safe)) (_else232955232969_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx233189_ _id233190_ _clauses233191_)
        (let ((_gensym?233193_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx233189_
           _id233190_
           _clauses233191_
           _gensym?233193_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g245226_
        (let ((_g245225_ (let () (declare (not safe)) (##length _g245226_))))
          (cond ((let () (declare (not safe)) (##fx= _g245225_ 3))
                 (apply (lambda (_stx233189_ _id233190_ _clauses233191_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx233189_
                             _id233190_
                             _clauses233191_)))
                        _g245226_))
                ((let () (declare (not safe)) (##fx= _g245225_ 4))
                 (apply (lambda (_stx233195_
                                 _id233196_
                                 _clauses233197_
                                 _gensym?233198_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx233195_
                             _id233196_
                             _clauses233197_
                             _gensym?233198_)))
                        _g245226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g245226_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx232219_)
        (letrec ((_case-lambda-clause-def232221_
                  (lambda (_id232938_ _impl232939_)
                    (let ((__tmp245227
                           (let ((__tmp245228
                                  (let ((__tmp245231
                                         (let ()
                                           (declare (not safe))
                                           (cons _id232938_ '())))
                                        (__tmp245229
                                         (let ((__tmp245230
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl232939_))))
                                           (declare (not safe))
                                           (cons __tmp245230 '()))))
                                    (declare (not safe))
                                    (cons __tmp245231 __tmp245229))))
                             (declare (not safe))
                             (cons '%#define-values __tmp245228))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp245227 _stx232219_))))
                 (_opt-lambda-dispatch-name232222_
                  (lambda (_id232934_)
                    (if (uninterned-symbol? _id232934_)
                        (let ((_str232936_ (symbol->string _id232934_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str232936_))
                              '"%"
                              _id232934_))
                        _id232934_)))
                 (_kw-lambda-dispatch-name232223_
                  (lambda (_id232929_ _name232930_)
                    (if (uninterned-symbol? _id232929_)
                        (let ((_str232932_ (symbol->string _id232929_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str232932_))
                              _name232930_
                              _id232929_))
                        _id232929_))))
          (let* ((___stx244577244578_ _stx232219_)
                 (_g232228232287_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244577244578_)))))
            (let ((___kont244579244580_
                   (lambda (_L232838_ _L232839_)
                     (let* ((___stx244557244558_ _L232838_)
                            (_g232856232870_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx244557244558_)))))
                       (let ((___kont244559244560_
                              (lambda (_L232914_) _stx232219_))
                             (___kont244561244562_
                              (lambda (_L232883_)
                                (let ((_g245232_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx232219_
                                          _L232839_
                                          _L232883_))))
                                  (begin
                                    (let ((_g245233_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g245232_)
                                                 (##vector-length _g245232_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g245233_ 3)))
                                          (error "Context expects 3 values"
                                                 _g245233_)))
                                    (let ((_ids232893_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245232_ 0)))
                                          (_impls232894_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245232_ 1)))
                                          (_clauses232895_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245232_ 2))))
                                      (let* ((_g245234_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids232893_))
                                             (_defs232898_
                                              (map _case-lambda-clause-def232221_
                                                   _ids232893_
                                                   _impls232894_)))
                                        (let ((__tmp245236
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L232839_)))
                                              (__tmp245235
                                               (map gxc#identifier-symbol
                                                    _ids232893_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp245236
                                           '" => "
                                           __tmp245235))
                                        (let ((__tmp245237
                                               (let ((__tmp245238
                                                      (let ((__tmp245239
                                                             (let ((__tmp245240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp245241
                                   (let ((__tmp245242
                                          (let ((__tmp245247
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L232839_ '())))
                                                (__tmp245243
                                                 (let ((__tmp245244
                                                        (let ((__tmp245246
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses232895_)))
                      (__tmp245245
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp245246 __tmp245245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp245244 '()))))
                                            (declare (not safe))
                                            (cons __tmp245247 __tmp245243))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp245242))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp245241
                               _stx232219_))))
                       (declare (not safe))
                       (cons __tmp245240 '()))))
                (declare (not safe))
                (foldr1 cons __tmp245239 _defs232898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp245238))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp245237
                                           _stx232219_)))))))))
                         (let ((___match244568244569_
                                (lambda (_e232861232906_
                                         _hd232860232909_
                                         _tl232859232911_)
                                  (let ((_L232914_ _tl232859232911_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L232914_))
                                        (___kont244559244560_ _L232914_)
                                        (___kont244561244562_
                                         _tl232859232911_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx244557244558_))
                               (let ((_e232861232906_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx244557244558_))))
                                 (let ((_tl232859232911_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232861232906_)))
                                       (_hd232860232909_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232861232906_))))
                                   (___match244568244569_
                                    _e232861232906_
                                    _hd232860232909_
                                    _tl232859232911_)))
                               (let ()
                                 (declare (not safe))
                                 (_g232856232870_))))))))
                  (___kont244581244582_
                   (lambda (_L232656_ _L232657_)
                     (let* ((_g232673232703_
                             (lambda (_g232674232700_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g232674232700_))))
                            (_g232672232798_
                             (lambda (_g232674232706_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g232674232706_))
                                   (let ((_e232680232708_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g232674232706_))))
                                     (let ((_hd232679232711_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e232680232708_)))
                                           (_tl232678232713_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e232680232708_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl232678232713_))
                                           (let ((_e232683232716_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl232678232713_))))
                                             (let ((_hd232682232719_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232683232716_)))
                                                   (_tl232681232721_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232683232716_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd232682232719_))
                                                   (let ((_e232686232724_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd232682232719_))))
                                                     (let ((_hd232685232727_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232686232724_)))
                                                           (_tl232684232729_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232686232724_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd232685232727_))
                                                           (let ((_e232689232732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd232685232727_))))
                     (let ((_hd232688232735_
                            (let ()
                              (declare (not safe))
                              (##car _e232689232732_)))
                           (_tl232687232737_
                            (let ()
                              (declare (not safe))
                              (##cdr _e232689232732_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd232688232735_))
                           (let ((_e232692232740_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd232688232735_))))
                             (let ((_hd232691232743_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232692232740_)))
                                   (_tl232690232745_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232692232740_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232690232745_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl232687232737_))
                                       (let ((_e232695232748_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl232687232737_))))
                                         (let ((_hd232694232751_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232695232748_)))
                                               (_tl232693232753_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232695232748_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl232693232753_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl232684232729_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl232681232721_))
                                                       (let ((_e232698232756_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl232681232721_))))
                 (let ((_hd232697232759_
                        (let () (declare (not safe)) (##car _e232698232756_)))
                       (_tl232696232761_
                        (let () (declare (not safe)) (##cdr _e232698232756_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl232696232761_))
                       ((lambda (_L232764_ _L232765_ _L232766_)
                          (let* ((_lambda-id232790_
                                  (let ((__tmp245250
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L232657_)))
                                        (__tmp245248
                                         (let ((__tmp245249
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L232766_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name232222_
                                            __tmp245249))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp245250
                                     '"__"
                                     __tmp245248)))
                                 (_lambda-id232792_
                                  (let ((__tmp245251
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx232219_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id232790_
                                     __tmp245251)))
                                 (_g245252_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id232792_)))
                                 (_new-case-lambda-expr232795_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L232764_
                                     _L232766_
                                     _lambda-id232792_))))
                            (let ((__tmp245254
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L232657_)))
                                  (__tmp245253
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id232792_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp245254
                               '" => "
                               __tmp245253))
                            (let ((__tmp245255
                                   (let ((__tmp245256
                                          (let ((__tmp245264
                                                 (let ((__tmp245265
                                                        (let ((__tmp245266
                                                               (let ((__tmp245269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id232792_ '())))
                             (__tmp245267
                              (let ((__tmp245268
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L232765_))))
                                (declare (not safe))
                                (cons __tmp245268 '()))))
                         (declare (not safe))
                         (cons __tmp245269 __tmp245267))))
                  (declare (not safe))
                  (cons '%#define-values __tmp245266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp245265
                                                    _stx232219_)))
                                                (__tmp245257
                                                 (let ((__tmp245258
                                                        (let ((__tmp245259
                                                               (let ((__tmp245260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp245261
                                     (let ((__tmp245263
                                            (let ()
                                              (declare (not safe))
                                              (cons _L232657_ '())))
                                           (__tmp245262
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr232795_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp245263 __tmp245262))))
                                (declare (not safe))
                                (cons '%#define-values __tmp245261))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp245260 _stx232219_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp245259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp245258 '()))))
                                            (declare (not safe))
                                            (cons __tmp245264 __tmp245257))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp245256))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp245255
                               _stx232219_))))
                        _hd232697232759_
                        _hd232694232751_
                        _hd232691232743_)
                       (let ()
                         (declare (not safe))
                         (_g232673232703_ _g232674232706_)))))
               (let () (declare (not safe)) (_g232673232703_ _g232674232706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232673232703_
                                                      _g232674232706_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232673232703_
                                                  _g232674232706_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232673232703_ _g232674232706_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232673232703_ _g232674232706_)))))
                           (let ()
                             (declare (not safe))
                             (_g232673232703_ _g232674232706_)))))
                   (let ()
                     (declare (not safe))
                     (_g232673232703_ _g232674232706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232673232703_
                                                      _g232674232706_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g232673232703_
                                              _g232674232706_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g232673232703_ _g232674232706_))))))
                       (declare (not safe))
                       (_g232672232798_ _L232656_))))
                  (___kont244583244584_
                   (lambda (_L232370_ _L232371_)
                     (let* ((_g232387232440_
                             (lambda (_g232388232437_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g232388232437_))))
                            (_g232386232616_
                             (lambda (_g232388232443_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g232388232443_))
                                   (let ((_e232396232445_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g232388232443_))))
                                     (let ((_hd232395232448_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e232396232445_)))
                                           (_tl232394232450_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e232396232445_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl232394232450_))
                                           (let ((_e232399232453_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl232394232450_))))
                                             (let ((_hd232398232456_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232399232453_)))
                                                   (_tl232397232458_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232399232453_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd232398232456_))
                                                   (let ((_e232402232461_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd232398232456_))))
                                                     (let ((_hd232401232464_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232402232461_)))
                                                           (_tl232400232466_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232402232461_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd232401232464_))
                                                           (let ((_e232405232469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd232401232464_))))
                     (let ((_hd232404232472_
                            (let ()
                              (declare (not safe))
                              (##car _e232405232469_)))
                           (_tl232403232474_
                            (let ()
                              (declare (not safe))
                              (##cdr _e232405232469_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd232404232472_))
                           (let ((_e232408232477_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd232404232472_))))
                             (let ((_hd232407232480_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232408232477_)))
                                   (_tl232406232482_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232408232477_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232406232482_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl232403232474_))
                                       (let ((_e232411232485_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl232403232474_))))
                                         (let ((_hd232410232488_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232411232485_)))
                                               (_tl232409232490_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232411232485_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd232410232488_))
                                               (let ((_e232414232493_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd232410232488_))))
                                                 (let ((_hd232413232496_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e232414232493_)))
                                                       (_tl232412232498_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e232414232493_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl232412232498_))
                                                       (let ((_e232417232501_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl232412232498_))))
                 (let ((_hd232416232504_
                        (let () (declare (not safe)) (##car _e232417232501_)))
                       (_tl232415232506_
                        (let () (declare (not safe)) (##cdr _e232417232501_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd232416232504_))
                       (let ((_e232420232509_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd232416232504_))))
                         (let ((_hd232419232512_
                                (let ()
                                  (declare (not safe))
                                  (##car _e232420232509_)))
                               (_tl232418232514_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e232420232509_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232419232512_))
                               (let ((_e232423232517_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232419232512_))))
                                 (let ((_hd232422232520_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232423232517_)))
                                       (_tl232421232522_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232423232517_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd232422232520_))
                                       (let ((_e232426232525_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd232422232520_))))
                                         (let ((_hd232425232528_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232426232525_)))
                                               (_tl232424232530_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232426232525_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl232424232530_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl232421232522_))
                                                   (let ((_e232429232533_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl232421232522_))))
                                                     (let ((_hd232428232536_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232429232533_)))
                                                           (_tl232427232538_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232429232533_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232427232538_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl232418232514_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl232415232506_))
                           (let ((_e232432232541_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl232415232506_))))
                             (let ((_hd232431232544_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232432232541_)))
                                   (_tl232430232546_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232432232541_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232430232546_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl232409232490_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl232400232466_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl232397232458_))
                                               (let ((_e232435232549_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl232397232458_))))
                                                 (let ((_hd232434232552_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e232435232549_)))
                                                       (_tl232433232554_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e232435232549_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl232433232554_))
                                                       ((lambda (_L232557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L232558_
                         _L232559_
                         _L232560_
                         _L232561_)
                  (let* ((_get-kws-id232601_
                          (let ((__tmp245272
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L232371_)))
                                (__tmp245270
                                 (let ((__tmp245271
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L232561_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name232223_
                                    __tmp245271
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp245272 '"__" __tmp245270)))
                         (_get-kws-id232603_
                          (let ((__tmp245273
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx232219_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id232601_
                             __tmp245273)))
                         (_main-id232605_
                          (let ((__tmp245276
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L232371_)))
                                (__tmp245274
                                 (let ((__tmp245275
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L232560_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name232223_
                                    __tmp245275
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp245276 '"__" __tmp245274)))
                         (_main-id232607_
                          (let ((__tmp245277
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx232219_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id232605_
                             __tmp245277)))
                         (_g245278_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id232603_)))
                         (_g245279_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id232607_)))
                         (_new-kw-dispatch232611_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L232557_
                             _L232561_
                             _get-kws-id232603_)))
                         (_new-get-kws232613_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L232558_
                             _L232560_
                             _main-id232607_))))
                    (let ((__tmp245282
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L232371_)))
                          (__tmp245281
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id232603_)))
                          (__tmp245280
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id232607_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp245282
                       '" => "
                       __tmp245281
                       '" => "
                       __tmp245280))
                    (let ((__tmp245283
                           (let ((__tmp245284
                                  (let ((__tmp245297
                                         (let ((__tmp245298
                                                (let ((__tmp245299
                                                       (let ((__tmp245300
                                                              (let ((__tmp245302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id232607_ '())))
                            (__tmp245301
                             (let ()
                               (declare (not safe))
                               (cons _L232559_ '()))))
                        (declare (not safe))
                        (cons __tmp245302 __tmp245301))))
                 (declare (not safe))
                 (cons '%#define-values __tmp245300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245299
                                                   _stx232219_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp245298)))
                                        (__tmp245285
                                         (let ((__tmp245292
                                                (let ((__tmp245293
                                                       (let ((__tmp245294
                                                              (let ((__tmp245296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id232603_ '())))
                            (__tmp245295
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws232613_ '()))))
                        (declare (not safe))
                        (cons __tmp245296 __tmp245295))))
                 (declare (not safe))
                 (cons '%#define-values __tmp245294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245293
                                                   _stx232219_)))
                                               (__tmp245286
                                                (let ((__tmp245287
                                                       (let ((__tmp245288
                                                              (let ((__tmp245289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp245291
                                    (let ()
                                      (declare (not safe))
                                      (cons _L232371_ '())))
                                   (__tmp245290
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch232611_ '()))))
                               (declare (not safe))
                               (cons __tmp245291 __tmp245290))))
                        (declare (not safe))
                        (cons '%#define-values __tmp245289))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp245288 _stx232219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp245287 '()))))
                                           (declare (not safe))
                                           (cons __tmp245292 __tmp245286))))
                                    (declare (not safe))
                                    (cons __tmp245297 __tmp245285))))
                             (declare (not safe))
                             (cons '%#begin __tmp245284))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp245283 _stx232219_))))
                _hd232434232552_
                _hd232431232544_
                _hd232428232536_
                _hd232425232528_
                _hd232407232480_)
               (let ()
                 (declare (not safe))
                 (_g232387232440_ _g232388232443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232387232440_
                                                  _g232388232443_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g232387232440_
                                              _g232388232443_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g232387232440_ _g232388232443_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232387232440_ _g232388232443_)))))
                           (let ()
                             (declare (not safe))
                             (_g232387232440_ _g232388232443_)))
                       (let ()
                         (declare (not safe))
                         (_g232387232440_ _g232388232443_)))
                   (let ()
                     (declare (not safe))
                     (_g232387232440_ _g232388232443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232387232440_
                                                      _g232388232443_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232387232440_
                                                  _g232388232443_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232387232440_ _g232388232443_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g232387232440_ _g232388232443_)))))
                       (let ()
                         (declare (not safe))
                         (_g232387232440_ _g232388232443_)))))
               (let ()
                 (declare (not safe))
                 (_g232387232440_ _g232388232443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232387232440_
                                                  _g232388232443_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232387232440_ _g232388232443_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232387232440_ _g232388232443_)))))
                           (let ()
                             (declare (not safe))
                             (_g232387232440_ _g232388232443_)))))
                   (let ()
                     (declare (not safe))
                     (_g232387232440_ _g232388232443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232387232440_
                                                      _g232388232443_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g232387232440_
                                              _g232388232443_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g232387232440_ _g232388232443_))))))
                       (declare (not safe))
                       (_g232386232616_ _L232370_))))
                  (___kont244585244586_
                   (lambda (_L232316_ _L232317_)
                     (let ((__tmp245303
                            (let ((__tmp245304
                                   (let ((__tmp245305
                                          (let ((__tmp245306
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L232316_))))
                                            (declare (not safe))
                                            (cons __tmp245306 '()))))
                                     (declare (not safe))
                                     (cons _L232317_ __tmp245305))))
                              (declare (not safe))
                              (cons '%#define-values __tmp245304))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp245303 _stx232219_)))))
              (let* ((___match244670244671_
                      (lambda (_e232262232338_
                               _hd232261232341_
                               _tl232260232343_
                               _e232265232346_
                               _hd232264232349_
                               _tl232263232351_
                               _e232268232354_
                               _hd232267232357_
                               _tl232266232359_
                               _e232271232362_
                               _hd232270232365_
                               _tl232269232367_)
                        (let ((_L232370_ _hd232270232365_)
                              (_L232371_ _hd232267232357_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232371_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L232370_)))
                              (___kont244583244584_ _L232370_ _L232371_)
                              (___kont244585244586_
                               _hd232270232365_
                               _hd232264232349_)))))
                     (___match244642244643_
                      (lambda (_e232248232624_
                               _hd232247232627_
                               _tl232246232629_
                               _e232251232632_
                               _hd232250232635_
                               _tl232249232637_
                               _e232254232640_
                               _hd232253232643_
                               _tl232252232645_
                               _e232257232648_
                               _hd232256232651_
                               _tl232255232653_)
                        (let ((_L232656_ _hd232256232651_)
                              (_L232657_ _hd232253232643_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232657_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L232656_)))
                              (___kont244581244582_ _L232656_ _L232657_)
                              (___match244670244671_
                               _e232248232624_
                               _hd232247232627_
                               _tl232246232629_
                               _e232251232632_
                               _hd232250232635_
                               _tl232249232637_
                               _e232254232640_
                               _hd232253232643_
                               _tl232252232645_
                               _e232257232648_
                               _hd232256232651_
                               _tl232255232653_)))))
                     (___match244614244615_
                      (lambda (_e232234232806_
                               _hd232233232809_
                               _tl232232232811_
                               _e232237232814_
                               _hd232236232817_
                               _tl232235232819_
                               _e232240232822_
                               _hd232239232825_
                               _tl232238232827_
                               _e232243232830_
                               _hd232242232833_
                               _tl232241232835_)
                        (let ((_L232838_ _hd232242232833_)
                              (_L232839_ _hd232239232825_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232839_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L232838_)))
                              (___kont244579244580_ _L232838_ _L232839_)
                              (___match244642244643_
                               _e232234232806_
                               _hd232233232809_
                               _tl232232232811_
                               _e232237232814_
                               _hd232236232817_
                               _tl232235232819_
                               _e232240232822_
                               _hd232239232825_
                               _tl232238232827_
                               _e232243232830_
                               _hd232242232833_
                               _tl232241232835_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244577244578_))
                    (let ((_e232234232806_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244577244578_))))
                      (let ((_tl232232232811_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232234232806_)))
                            (_hd232233232809_
                             (let ()
                               (declare (not safe))
                               (##car _e232234232806_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232232232811_))
                            (let ((_e232237232814_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232232232811_))))
                              (let ((_tl232235232819_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232237232814_)))
                                    (_hd232236232817_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232237232814_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232236232817_))
                                    (let ((_e232240232822_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232236232817_))))
                                      (let ((_tl232238232827_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232240232822_)))
                                            (_hd232239232825_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232240232822_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232238232827_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232235232819_))
                                                (let ((_e232243232830_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232235232819_))))
                                                  (let ((_tl232241232835_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232243232830_)))
                                                        (_hd232242232833_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232243232830_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232241232835_))
                                                        (___match244614244615_
                                                         _e232234232806_
                                                         _hd232233232809_
                                                         _tl232232232811_
                                                         _e232237232814_
                                                         _hd232236232817_
                                                         _tl232235232819_
                                                         _e232240232822_
                                                         _hd232239232825_
                                                         _tl232238232827_
                                                         _e232243232830_
                                                         _hd232242232833_
                                                         _tl232241232835_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232228232287_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232228232287_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232235232819_))
                                                (let ((_e232282232308_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232235232819_))))
                                                  (let ((_tl232280232313_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232282232308_)))
                                                        (_hd232281232311_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232282232308_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232280232313_))
                                                        (___kont244585244586_
                                                         _hd232281232311_
                                                         _hd232236232817_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232228232287_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232228232287_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl232235232819_))
                                        (let ((_e232282232308_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl232235232819_))))
                                          (let ((_tl232280232313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232282232308_)))
                                                (_hd232281232311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232282232308_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232280232313_))
                                                (___kont244585244586_
                                                 _hd232281232311_
                                                 _hd232236232817_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232228232287_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g232228232287_))))))
                            (let () (declare (not safe)) (_g232228232287_)))))
                    (let () (declare (not safe)) (_g232228232287_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx231151_)
        (letrec* ((_bind-e__242973242974_
                   (lambda (_id232203_ _expr232204_ _compile?232205_)
                     (let ((__tmp245309
                            (let ()
                              (declare (not safe))
                              (cons _id232203_ '())))
                           (__tmp245307
                            (let ((__tmp245308
                                   (if _compile?232205_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr232204_))
                                       _expr232204_)))
                              (declare (not safe))
                              (cons __tmp245308 '()))))
                       (declare (not safe))
                       (cons __tmp245309 __tmp245307))))
                  (_bind-e__0__242975242976_
                   (lambda (_id232210_ _expr232211_)
                     (let ((_compile?232213_ '#t))
                       (declare (not safe))
                       (_bind-e__242973242974_
                        _id232210_
                        _expr232211_
                        _compile?232213_))))
                  (_bind-e231153_
                   (lambda _g245311_
                     (let ((_g245310_
                            (let ()
                              (declare (not safe))
                              (##length _g245311_))))
                       (cond ((let () (declare (not safe)) (##fx= _g245310_ 2))
                              (apply (lambda (_id232210_ _expr232211_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__242975242976_
                                          _id232210_
                                          _expr232211_)))
                                     _g245311_))
                             ((let () (declare (not safe)) (##fx= _g245310_ 3))
                              (apply (lambda (_id232215_
                                              _expr232216_
                                              _compile?232217_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__242973242974_
                                          _id232215_
                                          _expr232216_
                                          _compile?232217_)))
                                     _g245311_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g245311_))))))
                  (_compile-bindings231154_
                   (lambda (_bindings231787_)
                     (let _lp231789_ ((_rest231791_ _bindings231787_)
                                      (_lift1231792_ '())
                                      (_lift2231793_ '())
                                      (_bind231794_ '()))
                       (let* ((_rest231795231803_ _rest231791_)
                              (_else231797231811_
                               (lambda ()
                                 (values (reverse _lift1231792_)
                                         (reverse _lift2231793_)
                                         (reverse _bind231794_))))
                              (_K231799232190_
                               (lambda (_rest231814_ _hd231815_)
                                 (let* ((___stx244713244714_ _hd231815_)
                                        (_g231819231855_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244713244714_)))))
                                   (let ((___kont244715244716_
                                          (lambda (_L232097_ _L232098_)
                                            (let* ((___stx244693244694_
                                                    _L232097_)
                                                   (_g232113232127_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244693244694_)))))
                                              (let ((___kont244695244696_
                                                     (lambda (_L232175_)
                                                       (let ((__tmp245312
                                                              (let ((__tmp245313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__242973242974_
                                _L232098_
                                _L232097_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp245313 _bind231794_))))
                 (declare (not safe))
                 (_lp231789_
                  _rest231814_
                  _lift1231792_
                  _lift2231793_
                  __tmp245312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244697244698_
                                                     (lambda (_L232140_)
                                                       (let ((_g245314_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx231151_
                         _L232098_
                         _L232140_
                         '#t))))
                 (begin
                   (let ((_g245315_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g245314_)
                                (##vector-length _g245314_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g245315_ 3)))
                         (error "Context expects 3 values" _g245315_)))
                   (let ((_ids232150_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245314_ 0)))
                         (_impls232151_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245314_ 1)))
                         (_clauses232152_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245314_ 2))))
                     (let* ((_g245316_
                             (for-each gx#core-bind-runtime! _ids232150_))
                            (_xbind232155_
                             (map _bind-e231153_ _ids232150_ _impls232151_))
                            (_expr*232157_
                             (let ((__tmp245318
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses232152_)))
                                   (__tmp245317
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp245318
                                __tmp245317)))
                            (_bind*232159_
                             (let ()
                               (declare (not safe))
                               (_bind-e__242973242974_
                                _L232098_
                                _expr*232157_
                                '#f))))
                       (let ((__tmp245320
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L232098_)))
                             (__tmp245319
                              (map gxc#identifier-symbol _ids232150_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp245320
                          '" => "
                          __tmp245319))
                       (let ((__tmp245322
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2231793_ _xbind232155_)))
                             (__tmp245321
                              (let ()
                                (declare (not safe))
                                (cons _bind*232159_ _bind231794_))))
                         (declare (not safe))
                         (_lp231789_
                          _rest231814_
                          _lift1231792_
                          __tmp245322
                          __tmp245321)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244704244705_
                                                       (lambda (_e232118232167_
                                                                _hd232117232170_
                                                                _tl232116232172_)
                                                         (let ((_L232175_
                                                                _tl232116232172_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L232175_))
                       (___kont244695244696_ _L232175_)
                       (___kont244697244698_ _tl232116232172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244693244694_))
                                                      (let ((_e232118232167_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244693244694_))))
                (let ((_tl232116232172_
                       (let () (declare (not safe)) (##cdr _e232118232167_)))
                      (_hd232117232170_
                       (let () (declare (not safe)) (##car _e232118232167_))))
                  (___match244704244705_
                   _e232118232167_
                   _hd232117232170_
                   _tl232116232172_)))
              (let () (declare (not safe)) (_g232113232127_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont244717244718_
                                          (lambda (_L231925_ _L231926_)
                                            (let* ((_g231940231970_
                                                    (lambda (_g231941231967_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g231941231967_))))
                                                   (_g231939232065_
                                                    (lambda (_g231941231973_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g231941231973_))
                                                          (let ((_e231947231975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g231941231973_))))
                    (let ((_hd231946231978_
                           (let ()
                             (declare (not safe))
                             (##car _e231947231975_)))
                          (_tl231945231980_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231947231975_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231945231980_))
                          (let ((_e231950231983_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231945231980_))))
                            (let ((_hd231949231986_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231950231983_)))
                                  (_tl231948231988_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231950231983_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231949231986_))
                                  (let ((_e231953231991_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231949231986_))))
                                    (let ((_hd231952231994_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231953231991_)))
                                          (_tl231951231996_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231953231991_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231952231994_))
                                          (let ((_e231956231999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231952231994_))))
                                            (let ((_hd231955232002_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231956231999_)))
                                                  (_tl231954232004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231956231999_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231955232002_))
                                                  (let ((_e231959232007_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231955232002_))))
                                                    (let ((_hd231958232010_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231959232007_)))
                                                          (_tl231957232012_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231959232007_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231957232012_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231954232004_))
                      (let ((_e231962232015_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231954232004_))))
                        (let ((_hd231961232018_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231962232015_)))
                              (_tl231960232020_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231962232015_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl231960232020_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231951231996_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231948231988_))
                                      (let ((_e231965232023_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231948231988_))))
                                        (let ((_hd231964232026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231965232023_)))
                                              (_tl231963232028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231965232023_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231963232028_))
                                              ((lambda (_L232031_
                                                        _L232032_
                                                        _L232033_)
                                                 (let* ((_lambda-id232057_
                                                         (let ((__tmp245324
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L231926_)))
                       (__tmp245323 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp245324 __tmp245323)))
                (_lambda-id232059_
                 (let ((__tmp245325
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx231151_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id232057_ __tmp245325)))
                (_g245326_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id232059_)))
                (_new-case-lambda-expr232062_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L232031_
                    _L232033_
                    _lambda-id232059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp245328
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L231926_)))
                                                         (__tmp245327
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id232059_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp245328
                                                      '" => "
                                                      __tmp245327))
                                                   (let ((__tmp245331
                                                          (let ((__tmp245332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__242973242974_
                            _L231926_
                            _new-case-lambda-expr232062_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp245332 _rest231814_)))
                 (__tmp245329
                  (let ((__tmp245330
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__242975242976_
                            _lambda-id232059_
                            _L232032_))))
                    (declare (not safe))
                    (cons __tmp245330 _lift1231792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp231789_
                                                      __tmp245331
                                                      __tmp245329
                                                      _lift2231793_
                                                      _bind231794_))))
                                               _hd231964232026_
                                               _hd231961232018_
                                               _hd231958232010_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231940231970_
                                                 _g231941231973_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231940231970_ _g231941231973_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g231940231970_ _g231941231973_)))
                              (let ()
                                (declare (not safe))
                                (_g231940231970_ _g231941231973_)))))
                      (let ()
                        (declare (not safe))
                        (_g231940231970_ _g231941231973_)))
                  (let ()
                    (declare (not safe))
                    (_g231940231970_ _g231941231973_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231940231970_
                                                     _g231941231973_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g231940231970_
                                             _g231941231973_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231940231970_ _g231941231973_)))))
                          (let ()
                            (declare (not safe))
                            (_g231940231970_ _g231941231973_)))))
                  (let ()
                    (declare (not safe))
                    (_g231940231970_ _g231941231973_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g231939232065_ _L231925_))))
                                         (___kont244719244720_
                                          (lambda (_L231876_ _L231877_)
                                            (let ((__tmp245333
                                                   (let ((__tmp245334
                                                          (let ((__tmp245335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245336
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L231876_))))
                           (declare (not safe))
                           (cons __tmp245336 '()))))
                    (declare (not safe))
                    (cons _L231877_ __tmp245335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245334
                                                           _bind231794_))))
                                              (declare (not safe))
                                              (_lp231789_
                                               _rest231814_
                                               _lift1231792_
                                               _lift2231793_
                                               __tmp245333)))))
                                     (let* ((___match244764244765_
                                             (lambda (_e231836231901_
                                                      _hd231835231904_
                                                      _tl231834231906_
                                                      _e231839231909_
                                                      _hd231838231912_
                                                      _tl231837231914_
                                                      _e231842231917_
                                                      _hd231841231920_
                                                      _tl231840231922_)
                                               (let ((_L231925_
                                                      _hd231841231920_)
                                                     (_L231926_
                                                      _hd231838231912_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L231926_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L231925_)))
                                                     (___kont244717244718_
                                                      _L231925_
                                                      _L231926_)
                                                     (___kont244719244720_
                                                      _hd231841231920_
                                                      _hd231835231904_)))))
                                            (___match244742244743_
                                             (lambda (_e231825232073_
                                                      _hd231824232076_
                                                      _tl231823232078_
                                                      _e231828232081_
                                                      _hd231827232084_
                                                      _tl231826232086_
                                                      _e231831232089_
                                                      _hd231830232092_
                                                      _tl231829232094_)
                                               (let ((_L232097_
                                                      _hd231830232092_)
                                                     (_L232098_
                                                      _hd231827232084_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L232098_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L232097_)))
                                                     (___kont244715244716_
                                                      _L232097_
                                                      _L232098_)
                                                     (___match244764244765_
                                                      _e231825232073_
                                                      _hd231824232076_
                                                      _tl231823232078_
                                                      _e231828232081_
                                                      _hd231827232084_
                                                      _tl231826232086_
                                                      _e231831232089_
                                                      _hd231830232092_
                                                      _tl231829232094_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244713244714_))
                                           (let ((_e231825232073_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244713244714_))))
                                             (let ((_tl231823232078_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231825232073_)))
                                                   (_hd231824232076_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231825232073_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231824232076_))
                                                   (let ((_e231828232081_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231824232076_))))
                                                     (let ((_tl231826232086_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231828232081_)))
                                                           (_hd231827232084_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231828232081_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231826232086_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl231823232078_))
                       (let ((_e231831232089_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231823232078_))))
                         (let ((_tl231829232094_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231831232089_)))
                               (_hd231830232092_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231831232089_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231829232094_))
                               (___match244742244743_
                                _e231825232073_
                                _hd231824232076_
                                _tl231823232078_
                                _e231828232081_
                                _hd231827232084_
                                _tl231826232086_
                                _e231831232089_
                                _hd231830232092_
                                _tl231829232094_)
                               (let ()
                                 (declare (not safe))
                                 (_g231819231855_)))))
                       (let () (declare (not safe)) (_g231819231855_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl231823232078_))
                       (let ((_e231850231868_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231823232078_))))
                         (let ((_tl231848231873_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231850231868_)))
                               (_hd231849231871_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231850231868_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231848231873_))
                               (___kont244719244720_
                                _hd231849231871_
                                _hd231824232076_)
                               (let ()
                                 (declare (not safe))
                                 (_g231819231855_)))))
                       (let () (declare (not safe)) (_g231819231855_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231823232078_))
                                                       (let ((_e231850231868_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231823232078_))))
                 (let ((_tl231848231873_
                        (let () (declare (not safe)) (##cdr _e231850231868_)))
                       (_hd231849231871_
                        (let () (declare (not safe)) (##car _e231850231868_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231848231873_))
                       (___kont244719244720_ _hd231849231871_ _hd231824232076_)
                       (let () (declare (not safe)) (_g231819231855_)))))
               (let () (declare (not safe)) (_g231819231855_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g231819231855_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest231795231803_))
                             (let ((_hd231800232193_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest231795231803_)))
                                   (_tl231801232195_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest231795231803_))))
                               (let* ((_hd232198_ _hd231800232193_)
                                      (_rest232200_ _tl231801232195_))
                                 (declare (not safe))
                                 (_K231799232190_ _rest232200_ _hd232198_)))
                             (let ()
                               (declare (not safe))
                               (_else231797231811_)))))))
                  (_lift-kw-lambda?231155_
                   (lambda (_bind231711_)
                     (let* ((___stx244781244782_ _bind231711_)
                            (_g231714231731_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx244781244782_)))))
                       (let ((___kont244783244784_
                              (lambda (_L231767_ _L231768_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L231768_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L231767_))
                                    '#f)))
                             (___kont244785244786_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx244781244782_))
                             (let ((_e231720231743_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx244781244782_))))
                               (let ((_tl231718231748_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e231720231743_)))
                                     (_hd231719231746_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e231720231743_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd231719231746_))
                                     (let ((_e231723231751_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd231719231746_))))
                                       (let ((_tl231721231756_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e231723231751_)))
                                             (_hd231722231754_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e231723231751_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl231721231756_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl231718231748_))
                                                 (let ((_e231726231759_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl231718231748_))))
                                                   (let ((_tl231724231764_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e231726231759_)))
                                                         (_hd231725231762_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e231726231759_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl231724231764_))
                                                         (___kont244783244784_
                                                          _hd231725231762_
                                                          _hd231722231754_)
                                                         (___kont244785244786_))))
                                                 (___kont244785244786_))
                                             (___kont244785244786_))))
                                     (___kont244785244786_))))
                             (___kont244785244786_))))))
                  (_lift-kw-lambda-bindings231156_
                   (lambda (_bindings231323_)
                     (let _lp231325_ ((_rest231327_ _bindings231323_)
                                      (_lift1231328_ '())
                                      (_lift2231329_ '())
                                      (_bind231330_ '()))
                       (let* ((_rest231331231339_ _rest231327_)
                              (_else231333231347_
                               (lambda ()
                                 (values (reverse _lift1231328_)
                                         (reverse _lift2231329_)
                                         (reverse _bind231330_))))
                              (_K231335231699_
                               (lambda (_rest231350_ _hd231351_)
                                 (let* ((___stx244811244812_ _hd231351_)
                                        (_g231354231379_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244811244812_)))))
                                   (let ((___kont244813244814_
                                          (lambda (_L231449_ _L231450_)
                                            (let* ((_g231464231517_
                                                    (lambda (_g231465231514_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g231465231514_))))
                                                   (_g231463231693_
                                                    (lambda (_g231465231520_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g231465231520_))
                                                          (let ((_e231473231522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g231465231520_))))
                    (let ((_hd231472231525_
                           (let ()
                             (declare (not safe))
                             (##car _e231473231522_)))
                          (_tl231471231527_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231473231522_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231471231527_))
                          (let ((_e231476231530_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231471231527_))))
                            (let ((_hd231475231533_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231476231530_)))
                                  (_tl231474231535_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231476231530_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231475231533_))
                                  (let ((_e231479231538_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231475231533_))))
                                    (let ((_hd231478231541_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231479231538_)))
                                          (_tl231477231543_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231479231538_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231478231541_))
                                          (let ((_e231482231546_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231478231541_))))
                                            (let ((_hd231481231549_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231482231546_)))
                                                  (_tl231480231551_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231482231546_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231481231549_))
                                                  (let ((_e231485231554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231481231549_))))
                                                    (let ((_hd231484231557_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231485231554_)))
                                                          (_tl231483231559_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231485231554_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231483231559_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231480231551_))
                      (let ((_e231488231562_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231480231551_))))
                        (let ((_hd231487231565_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231488231562_)))
                              (_tl231486231567_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231488231562_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd231487231565_))
                              (let ((_e231491231570_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd231487231565_))))
                                (let ((_hd231490231573_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231491231570_)))
                                      (_tl231489231575_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231491231570_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231489231575_))
                                      (let ((_e231494231578_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231489231575_))))
                                        (let ((_hd231493231581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231494231578_)))
                                              (_tl231492231583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231494231578_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd231493231581_))
                                              (let ((_e231497231586_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd231493231581_))))
                                                (let ((_hd231496231589_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231497231586_)))
                                                      (_tl231495231591_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231497231586_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231496231589_))
                                                      (let ((_e231500231594_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231496231589_))))
                (let ((_hd231499231597_
                       (let () (declare (not safe)) (##car _e231500231594_)))
                      (_tl231498231599_
                       (let () (declare (not safe)) (##cdr _e231500231594_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231499231597_))
                      (let ((_e231503231602_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231499231597_))))
                        (let ((_hd231502231605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231503231602_)))
                              (_tl231501231607_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231503231602_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl231501231607_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231498231599_))
                                  (let ((_e231506231610_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231498231599_))))
                                    (let ((_hd231505231613_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231506231610_)))
                                          (_tl231504231615_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231506231610_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231504231615_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231495231591_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231492231583_))
                                                  (let ((_e231509231618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231492231583_))))
                                                    (let ((_hd231508231621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231509231618_)))
                                                          (_tl231507231623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231509231618_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231507231623_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl231486231567_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl231477231543_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231474231535_))
                              (let ((_e231512231626_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231474231535_))))
                                (let ((_hd231511231629_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231512231626_)))
                                      (_tl231510231631_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231512231626_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231510231631_))
                                      ((lambda (_L231634_
                                                _L231635_
                                                _L231636_
                                                _L231637_
                                                _L231638_)
                                         (let* ((_get-kws-id231678_
                                                 (let ((__tmp245338
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L231450_)))
                                                       (__tmp245337
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245338
                                                    __tmp245337)))
                                                (_get-kws-id231680_
                                                 (let ((__tmp245339
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx231151_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id231678_
                                                    __tmp245339)))
                                                (_main-id231682_
                                                 (let ((__tmp245341
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L231450_)))
                                                       (__tmp245340
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245341
                                                    __tmp245340)))
                                                (_main-id231684_
                                                 (let ((__tmp245342
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx231151_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id231682_
                                                    __tmp245342)))
                                                (_g245343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id231680_)))
                                                (_g245344_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id231684_)))
                                                (_new-kw-dispatch231688_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L231634_
                                                    _L231638_
                                                    _get-kws-id231680_)))
                                                (_new-get-kws231690_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L231635_
                                                    _L231637_
                                                    _main-id231684_))))
                                           (let ((__tmp245347
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L231450_)))
                                                 (__tmp245346
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id231680_)))
                                                 (__tmp245345
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id231684_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp245347
                                              '" => "
                                              __tmp245346
                                              '" => "
                                              __tmp245345))
                                           (let ((__tmp245352
                                                  (let ((__tmp245353
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242973242974_
                                                            _main-id231684_
                                                            _L231636_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245353
                                                          _lift1231328_)))
                                                 (__tmp245350
                                                  (let ((__tmp245351
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242973242974_
                                                            _get-kws-id231680_
                                                            _new-get-kws231690_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245351
                                                          _lift2231329_)))
                                                 (__tmp245348
                                                  (let ((__tmp245349
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242973242974_
                                                            _L231450_
                                                            _new-kw-dispatch231688_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245349
                                                          _bind231330_))))
                                             (declare (not safe))
                                             (_lp231325_
                                              _rest231350_
                                              __tmp245352
                                              __tmp245350
                                              __tmp245348))))
                                       _hd231511231629_
                                       _hd231508231621_
                                       _hd231505231613_
                                       _hd231502231605_
                                       _hd231484231557_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231464231517_ _g231465231520_)))))
                              (let ()
                                (declare (not safe))
                                (_g231464231517_ _g231465231520_)))
                          (let ()
                            (declare (not safe))
                            (_g231464231517_ _g231465231520_)))
                      (let ()
                        (declare (not safe))
                        (_g231464231517_ _g231465231520_)))
                  (let ()
                    (declare (not safe))
                    (_g231464231517_ _g231465231520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231464231517_
                                                     _g231465231520_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g231464231517_
                                                 _g231465231520_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g231464231517_
                                             _g231465231520_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231464231517_ _g231465231520_)))
                              (let ()
                                (declare (not safe))
                                (_g231464231517_ _g231465231520_)))))
                      (let ()
                        (declare (not safe))
                        (_g231464231517_ _g231465231520_)))))
              (let ()
                (declare (not safe))
                (_g231464231517_ _g231465231520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g231464231517_
                                                 _g231465231520_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231464231517_ _g231465231520_)))))
                              (let ()
                                (declare (not safe))
                                (_g231464231517_ _g231465231520_)))))
                      (let ()
                        (declare (not safe))
                        (_g231464231517_ _g231465231520_)))
                  (let ()
                    (declare (not safe))
                    (_g231464231517_ _g231465231520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231464231517_
                                                     _g231465231520_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g231464231517_
                                             _g231465231520_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231464231517_ _g231465231520_)))))
                          (let ()
                            (declare (not safe))
                            (_g231464231517_ _g231465231520_)))))
                  (let ()
                    (declare (not safe))
                    (_g231464231517_ _g231465231520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g231463231693_ _L231449_))))
                                         (___kont244815244816_
                                          (lambda (_L231400_ _L231401_)
                                            (let ((__tmp245354
                                                   (let ((__tmp245355
                                                          (let ((__tmp245356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L231400_ '()))))
                    (declare (not safe))
                    (cons _L231401_ __tmp245356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245355
                                                           _bind231330_))))
                                              (declare (not safe))
                                              (_lp231325_
                                               _rest231350_
                                               _lift1231328_
                                               _lift2231329_
                                               __tmp245354)))))
                                     (let ((___match244838244839_
                                            (lambda (_e231360231425_
                                                     _hd231359231428_
                                                     _tl231358231430_
                                                     _e231363231433_
                                                     _hd231362231436_
                                                     _tl231361231438_
                                                     _e231366231441_
                                                     _hd231365231444_
                                                     _tl231364231446_)
                                              (let ((_L231449_
                                                     _hd231365231444_)
                                                    (_L231450_
                                                     _hd231362231436_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L231450_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L231449_)))
                                                    (___kont244813244814_
                                                     _L231449_
                                                     _L231450_)
                                                    (___kont244815244816_
                                                     _hd231365231444_
                                                     _hd231359231428_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244811244812_))
                                           (let ((_e231360231425_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244811244812_))))
                                             (let ((_tl231358231430_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231360231425_)))
                                                   (_hd231359231428_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231360231425_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231359231428_))
                                                   (let ((_e231363231433_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231359231428_))))
                                                     (let ((_tl231361231438_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231363231433_)))
                                                           (_hd231362231436_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231363231433_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231361231438_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl231358231430_))
                       (let ((_e231366231441_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231358231430_))))
                         (let ((_tl231364231446_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231366231441_)))
                               (_hd231365231444_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231366231441_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231364231446_))
                               (___match244838244839_
                                _e231360231425_
                                _hd231359231428_
                                _tl231358231430_
                                _e231363231433_
                                _hd231362231436_
                                _tl231361231438_
                                _e231366231441_
                                _hd231365231444_
                                _tl231364231446_)
                               (let ()
                                 (declare (not safe))
                                 (_g231354231379_)))))
                       (let () (declare (not safe)) (_g231354231379_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl231358231430_))
                       (let ((_e231374231392_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231358231430_))))
                         (let ((_tl231372231397_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231374231392_)))
                               (_hd231373231395_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231374231392_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231372231397_))
                               (___kont244815244816_
                                _hd231373231395_
                                _hd231359231428_)
                               (let ()
                                 (declare (not safe))
                                 (_g231354231379_)))))
                       (let () (declare (not safe)) (_g231354231379_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231358231430_))
                                                       (let ((_e231374231392_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231358231430_))))
                 (let ((_tl231372231397_
                        (let () (declare (not safe)) (##cdr _e231374231392_)))
                       (_hd231373231395_
                        (let () (declare (not safe)) (##car _e231374231392_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231372231397_))
                       (___kont244815244816_ _hd231373231395_ _hd231359231428_)
                       (let () (declare (not safe)) (_g231354231379_)))))
               (let () (declare (not safe)) (_g231354231379_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g231354231379_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest231331231339_))
                             (let ((_hd231336231702_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest231331231339_)))
                                   (_tl231337231704_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest231331231339_))))
                               (let* ((_hd231707_ _hd231336231702_)
                                      (_rest231709_ _tl231337231704_))
                                 (declare (not safe))
                                 (_K231335231699_ _rest231709_ _hd231707_)))
                             (let ()
                               (declare (not safe))
                               (_else231333231347_))))))))
          (let* ((___stx244855244856_ _stx231151_)
                 (_g231159231185_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244855244856_)))))
            (let ((___kont244857244858_
                   (lambda (_L231245_ _L231246_)
                     (let ((__tmp245358
                            (lambda ()
                              (if (let ((__tmp245385
                                         (let ((__tmp245386
                                                (lambda (_g231274231277_
                                                         _g231275231279_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g231274231277_
                                                          _g231275231279_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp245386
                                                   '()
                                                   _L231246_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?231155_
                                            __tmp245385))
                                  (let ((_g245372_
                                         (let ((__tmp245374
                                                (let ((__tmp245375
                                                       (lambda (_g231281231284_
                                                                _g231282231286_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g231281231284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g231282231286_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp245375
                                                          '()
                                                          _L231246_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings231156_
                                            __tmp245374))))
                                    (begin
                                      (let ((_g245373_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g245372_)
                                                   (##vector-length _g245372_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g245373_ 3)))
                                            (error "Context expects 3 values"
                                                   _g245373_)))
                                      (let ((_lift1231289_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245372_ 0)))
                                            (_lift2231290_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245372_ 1)))
                                            (_hd231291_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245372_ 2))))
                                        (let* ((_expr231293_
                                                (let ((__tmp245376
                                                       (let ((__tmp245377
                                                              (let ((__tmp245378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L231245_ '()))))
                        (declare (not safe))
                        (cons _hd231291_ __tmp245378))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245376
                                                   _stx231151_)))
                                               (_expr231295_
                                                (let ((__tmp245379
                                                       (let ((__tmp245380
                                                              (let ((__tmp245381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr231293_ '()))))
                        (declare (not safe))
                        (cons _lift2231290_ __tmp245381))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245379
                                                   _stx231151_)))
                                               (_expr231297_
                                                (let ((__tmp245382
                                                       (let ((__tmp245383
                                                              (let ((__tmp245384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr231295_ '()))))
                        (declare (not safe))
                        (cons _lift1231289_ __tmp245384))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245382
                                                   _stx231151_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr231297_))))))
                                  (let ((_g245359_
                                         (let ((__tmp245361
                                                (let ((__tmp245362
                                                       (lambda (_g231299231302_
                                                                _g231300231304_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g231299231302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g231300231304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp245362
                                                          '()
                                                          _L231246_))))
                                           (declare (not safe))
                                           (_compile-bindings231154_
                                            __tmp245361))))
                                    (begin
                                      (let ((_g245360_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g245359_)
                                                   (##vector-length _g245359_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g245360_ 3)))
                                            (error "Context expects 3 values"
                                                   _g245360_)))
                                      (let ((_lift1231307_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245359_ 0)))
                                            (_lift2231308_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245359_ 1)))
                                            (_hd231309_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245359_ 2))))
                                        (let* ((_body231311_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L231245_)))
                                               (_expr231313_
                                                (let ((__tmp245363
                                                       (let ((__tmp245364
                                                              (let ((__tmp245365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body231311_ '()))))
                        (declare (not safe))
                        (cons _hd231309_ __tmp245365))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245363
                                                   _stx231151_)))
                                               (_expr231315_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2231308_))
                                                    _expr231313_
                                                    (let ((__tmp245366
                                                           (let ((__tmp245367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245368
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr231313_ '()))))
                            (declare (not safe))
                            (cons _lift2231308_ __tmp245368))))
                     (declare (not safe))
                     (cons '%#let-values __tmp245367))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp245366 _stx231151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr231317_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1231307_))
                                                    _expr231315_
                                                    (let ((__tmp245369
                                                           (let ((__tmp245370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245371
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr231315_ '()))))
                            (declare (not safe))
                            (cons _lift1231307_ __tmp245371))))
                     (declare (not safe))
                     (cons '%#let-values __tmp245370))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp245369 _stx231151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr231317_)))))))
                           (__tmp245357
                            (let ((__obj245061
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj245061)
                              __obj245061)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp245358
                        gx#current-expander-context
                        __tmp245357))))
                  (___kont244861244862_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx231151_)))))
              (let ((___match244882244883_
                     (lambda (_e231165231197_
                              _hd231164231200_
                              _tl231163231202_
                              _e231168231205_
                              _hd231167231208_
                              _tl231166231210_
                              ___splice244859244860_
                              _target231169231213_
                              _tl231171231215_)
                       (letrec ((_loop231172231218_
                                 (lambda (_hd231170231221_ _bind231176231223_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231170231221_))
                                       (let ((_e231173231226_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231170231221_))))
                                         (let ((_lp-tl231175231231_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231173231226_)))
                                               (_lp-hd231174231229_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231173231226_))))
                                           (let ((__tmp245389
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd231174231229_
                                                          _bind231176231223_))))
                                             (declare (not safe))
                                             (_loop231172231218_
                                              _lp-tl231175231231_
                                              __tmp245389))))
                                       (let ((_bind231177231234_
                                              (reverse _bind231176231223_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl231166231210_))
                                             (let ((_e231180231237_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl231166231210_))))
                                               (let ((_tl231178231242_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e231180231237_)))
                                                     (_hd231179231240_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e231180231237_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl231178231242_))
                                                     (let ((_L231245_
                                                            _hd231179231240_)
                                                           (_L231246_
                                                            _bind231177231234_))
                                                       (if (let ((__tmp245387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245388
                                 (lambda (_g231266231269_ _g231267231271_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g231266231269_ _g231267231271_)))))
                            (declare (not safe))
                            (foldr1 __tmp245388 '() _L231246_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp245387))
                   (___kont244857244858_ _L231245_ _L231246_)
                   (___kont244861244862_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont244861244862_))))
                                             (___kont244861244862_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop231172231218_ _target231169231213_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244855244856_))
                    (let ((_e231165231197_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244855244856_))))
                      (let ((_tl231163231202_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231165231197_)))
                            (_hd231164231200_
                             (let ()
                               (declare (not safe))
                               (##car _e231165231197_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231163231202_))
                            (let ((_e231168231205_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231163231202_))))
                              (let ((_tl231166231210_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231168231205_)))
                                    (_hd231167231208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231168231205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd231167231208_))
                                    (let ((___splice244859244860_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd231167231208_
                                              '0))))
                                      (let ((_tl231171231215_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244859244860_
                                                '1)))
                                            (_target231169231213_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244859244860_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231171231215_))
                                            (___match244882244883_
                                             _e231165231197_
                                             _hd231164231200_
                                             _tl231163231202_
                                             _e231168231205_
                                             _hd231167231208_
                                             _tl231166231210_
                                             ___splice244859244860_
                                             _target231169231213_
                                             _tl231171231215_)
                                            (___kont244861244862_))))
                                    (___kont244861244862_))))
                            (___kont244861244862_))))
                    (___kont244861244862_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx230295_)
        (letrec* ((_bind-e__242978242979_
                   (lambda (_id231135_ _expr231136_ _compile?231137_)
                     (let ((__tmp245392
                            (let ()
                              (declare (not safe))
                              (cons _id231135_ '())))
                           (__tmp245390
                            (let ((__tmp245391
                                   (if _compile?231137_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr231136_))
                                       _expr231136_)))
                              (declare (not safe))
                              (cons __tmp245391 '()))))
                       (declare (not safe))
                       (cons __tmp245392 __tmp245390))))
                  (_bind-e__0__242980242981_
                   (lambda (_id231142_ _expr231143_)
                     (let ((_compile?231145_ '#t))
                       (declare (not safe))
                       (_bind-e__242978242979_
                        _id231142_
                        _expr231143_
                        _compile?231145_))))
                  (_bind-e230297_
                   (lambda _g245394_
                     (let ((_g245393_
                            (let ()
                              (declare (not safe))
                              (##length _g245394_))))
                       (cond ((let () (declare (not safe)) (##fx= _g245393_ 2))
                              (apply (lambda (_id231142_ _expr231143_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__242980242981_
                                          _id231142_
                                          _expr231143_)))
                                     _g245394_))
                             ((let () (declare (not safe)) (##fx= _g245393_ 3))
                              (apply (lambda (_id231147_
                                              _expr231148_
                                              _compile?231149_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__242978242979_
                                          _id231147_
                                          _expr231148_
                                          _compile?231149_)))
                                     _g245394_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g245394_))))))
                  (_compile-bindings230298_
                   (lambda (_rest230433_)
                     (let _lp230435_ ((_rest230437_ _rest230433_)
                                      (_bind230438_ '()))
                       (let* ((_rest230439230447_ _rest230437_)
                              (_else230441230455_
                               (lambda () (reverse _bind230438_)))
                              (_K230443231122_
                               (lambda (_rest230458_ _hd230459_)
                                 (let* ((___stx244905244906_ _hd230459_)
                                        (_g230464230511_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244905244906_)))))
                                   (let ((___kont244907244908_
                                          (lambda (_L231029_ _L231030_)
                                            (let* ((___stx244885244886_
                                                    _L231029_)
                                                   (_g231045231059_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244885244886_)))))
                                              (let ((___kont244887244888_
                                                     (lambda (_L231107_)
                                                       (let ((__tmp245395
                                                              (let ((__tmp245396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__242978242979_
                                _L231030_
                                _L231029_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp245396 _bind230438_))))
                 (declare (not safe))
                 (_lp230435_ _rest230458_ __tmp245395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244889244890_
                                                     (lambda (_L231072_)
                                                       (let ((_g245397_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx230295_
                         _L231030_
                         _L231072_
                         '#t))))
                 (begin
                   (let ((_g245398_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g245397_)
                                (##vector-length _g245397_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g245398_ 3)))
                         (error "Context expects 3 values" _g245398_)))
                   (let ((_ids231082_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245397_ 0)))
                         (_impls231083_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245397_ 1)))
                         (_clauses231084_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245397_ 2))))
                     (let* ((_g245399_
                             (for-each gx#core-bind-runtime! _ids231082_))
                            (_xbind231087_
                             (map _bind-e230297_ _ids231082_ _impls231083_))
                            (_expr*231089_
                             (let ((__tmp245401
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses231084_)))
                                   (__tmp245400
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp245401
                                __tmp245400)))
                            (_bind*231091_
                             (let ()
                               (declare (not safe))
                               (_bind-e__242978242979_
                                _L231030_
                                _expr*231089_
                                '#f))))
                       (let ((__tmp245403
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L231030_)))
                             (__tmp245402
                              (map gxc#identifier-symbol _ids231082_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp245403
                          '" => "
                          __tmp245402))
                       (let ((__tmp245404
                              (let ((__tmp245405
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind230438_
                                               _xbind231087_))))
                                (declare (not safe))
                                (cons _bind*231091_ __tmp245405))))
                         (declare (not safe))
                         (_lp230435_ _rest230458_ __tmp245404)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244896244897_
                                                       (lambda (_e231050231099_
                                                                _hd231049231102_
                                                                _tl231048231104_)
                                                         (let ((_L231107_
                                                                _tl231048231104_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L231107_))
                       (___kont244887244888_ _L231107_)
                       (___kont244889244890_ _tl231048231104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244885244886_))
                                                      (let ((_e231050231099_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244885244886_))))
                (let ((_tl231048231104_
                       (let () (declare (not safe)) (##cdr _e231050231099_)))
                      (_hd231049231102_
                       (let () (declare (not safe)) (##car _e231050231099_))))
                  (___match244896244897_
                   _e231050231099_
                   _hd231049231102_
                   _tl231048231104_)))
              (let () (declare (not safe)) (_g231045231059_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont244909244910_
                                          (lambda (_L230857_ _L230858_)
                                            (let* ((_g230872230902_
                                                    (lambda (_g230873230899_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230873230899_))))
                                                   (_g230871230997_
                                                    (lambda (_g230873230905_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230873230905_))
                                                          (let ((_e230879230907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230873230905_))))
                    (let ((_hd230878230910_
                           (let ()
                             (declare (not safe))
                             (##car _e230879230907_)))
                          (_tl230877230912_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230879230907_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230877230912_))
                          (let ((_e230882230915_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230877230912_))))
                            (let ((_hd230881230918_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230882230915_)))
                                  (_tl230880230920_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230882230915_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230881230918_))
                                  (let ((_e230885230923_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230881230918_))))
                                    (let ((_hd230884230926_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230885230923_)))
                                          (_tl230883230928_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230885230923_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230884230926_))
                                          (let ((_e230888230931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230884230926_))))
                                            (let ((_hd230887230934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230888230931_)))
                                                  (_tl230886230936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230888230931_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230887230934_))
                                                  (let ((_e230891230939_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230887230934_))))
                                                    (let ((_hd230890230942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230891230939_)))
                                                          (_tl230889230944_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230891230939_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230889230944_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230886230936_))
                      (let ((_e230894230947_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230886230936_))))
                        (let ((_hd230893230950_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230894230947_)))
                              (_tl230892230952_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230894230947_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230892230952_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230883230928_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230880230920_))
                                      (let ((_e230897230955_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230880230920_))))
                                        (let ((_hd230896230958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230897230955_)))
                                              (_tl230895230960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230897230955_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230895230960_))
                                              ((lambda (_L230963_
                                                        _L230964_
                                                        _L230965_)
                                                 (let* ((_lambda-id230989_
                                                         (let ((__tmp245407
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230858_)))
                       (__tmp245406 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp245407 __tmp245406)))
                (_lambda-id230991_
                 (let ((__tmp245408
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx230295_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id230989_ __tmp245408)))
                (_g245409_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id230991_)))
                (_new-case-lambda-expr230994_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L230963_
                    _L230965_
                    _lambda-id230991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp245411
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230858_)))
                                                         (__tmp245410
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id230991_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp245411
                                                      '" => "
                                                      __tmp245410))
                                                   (let ((__tmp245414
                                                          (let ((__tmp245415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__242978242979_
                            _L230858_
                            _new-case-lambda-expr230994_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp245415 _rest230458_)))
                 (__tmp245412
                  (let ((__tmp245413
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__242980242981_
                            _lambda-id230991_
                            _L230964_))))
                    (declare (not safe))
                    (cons __tmp245413 _bind230438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp230435_
                                                      __tmp245414
                                                      __tmp245412))))
                                               _hd230896230958_
                                               _hd230893230950_
                                               _hd230890230942_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230872230902_
                                                 _g230873230905_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230872230902_ _g230873230905_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230872230902_ _g230873230905_)))
                              (let ()
                                (declare (not safe))
                                (_g230872230902_ _g230873230905_)))))
                      (let ()
                        (declare (not safe))
                        (_g230872230902_ _g230873230905_)))
                  (let ()
                    (declare (not safe))
                    (_g230872230902_ _g230873230905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230872230902_
                                                     _g230873230905_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230872230902_
                                             _g230873230905_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230872230902_ _g230873230905_)))))
                          (let ()
                            (declare (not safe))
                            (_g230872230902_ _g230873230905_)))))
                  (let ()
                    (declare (not safe))
                    (_g230872230902_ _g230873230905_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230871230997_ _L230857_))))
                                         (___kont244911244912_
                                          (lambda (_L230581_ _L230582_)
                                            (let* ((_g230596230649_
                                                    (lambda (_g230597230646_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230597230646_))))
                                                   (_g230595230825_
                                                    (lambda (_g230597230652_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230597230652_))
                                                          (let ((_e230605230654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230597230652_))))
                    (let ((_hd230604230657_
                           (let ()
                             (declare (not safe))
                             (##car _e230605230654_)))
                          (_tl230603230659_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230605230654_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230603230659_))
                          (let ((_e230608230662_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230603230659_))))
                            (let ((_hd230607230665_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230608230662_)))
                                  (_tl230606230667_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230608230662_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230607230665_))
                                  (let ((_e230611230670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230607230665_))))
                                    (let ((_hd230610230673_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230611230670_)))
                                          (_tl230609230675_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230611230670_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230610230673_))
                                          (let ((_e230614230678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230610230673_))))
                                            (let ((_hd230613230681_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230614230678_)))
                                                  (_tl230612230683_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230614230678_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230613230681_))
                                                  (let ((_e230617230686_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230613230681_))))
                                                    (let ((_hd230616230689_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230617230686_)))
                                                          (_tl230615230691_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230617230686_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230615230691_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230612230683_))
                      (let ((_e230620230694_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230612230683_))))
                        (let ((_hd230619230697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230620230694_)))
                              (_tl230618230699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230620230694_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230619230697_))
                              (let ((_e230623230702_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230619230697_))))
                                (let ((_hd230622230705_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230623230702_)))
                                      (_tl230621230707_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230623230702_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230621230707_))
                                      (let ((_e230626230710_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230621230707_))))
                                        (let ((_hd230625230713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230626230710_)))
                                              (_tl230624230715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230626230710_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230625230713_))
                                              (let ((_e230629230718_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230625230713_))))
                                                (let ((_hd230628230721_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230629230718_)))
                                                      (_tl230627230723_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230629230718_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230628230721_))
                                                      (let ((_e230632230726_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230628230721_))))
                (let ((_hd230631230729_
                       (let () (declare (not safe)) (##car _e230632230726_)))
                      (_tl230630230731_
                       (let () (declare (not safe)) (##cdr _e230632230726_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230631230729_))
                      (let ((_e230635230734_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230631230729_))))
                        (let ((_hd230634230737_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230635230734_)))
                              (_tl230633230739_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230635230734_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230633230739_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230630230731_))
                                  (let ((_e230638230742_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230630230731_))))
                                    (let ((_hd230637230745_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230638230742_)))
                                          (_tl230636230747_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230638230742_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230636230747_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230627230723_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230624230715_))
                                                  (let ((_e230641230750_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230624230715_))))
                                                    (let ((_hd230640230753_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230641230750_)))
                                                          (_tl230639230755_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230641230750_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230639230755_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230618230699_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230609230675_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230606230667_))
                              (let ((_e230644230758_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230606230667_))))
                                (let ((_hd230643230761_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230644230758_)))
                                      (_tl230642230763_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230644230758_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230642230763_))
                                      ((lambda (_L230766_
                                                _L230767_
                                                _L230768_
                                                _L230769_
                                                _L230770_)
                                         (let* ((_get-kws-id230810_
                                                 (let ((__tmp245417
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230582_)))
                                                       (__tmp245416
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245417
                                                    __tmp245416)))
                                                (_get-kws-id230812_
                                                 (let ((__tmp245418
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230295_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230810_
                                                    __tmp245418)))
                                                (_main-id230814_
                                                 (let ((__tmp245420
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230582_)))
                                                       (__tmp245419
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245420
                                                    __tmp245419)))
                                                (_main-id230816_
                                                 (let ((__tmp245421
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230295_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230814_
                                                    __tmp245421)))
                                                (_g245422_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230812_)))
                                                (_g245423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230816_)))
                                                (_new-kw-dispatch230820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230766_
                                                    _L230770_
                                                    _get-kws-id230812_)))
                                                (_new-get-kws230822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230767_
                                                    _L230769_
                                                    _main-id230816_))))
                                           (let ((__tmp245426
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230582_)))
                                                 (__tmp245425
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230812_)))
                                                 (__tmp245424
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230816_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp245426
                                              '" => "
                                              __tmp245425
                                              '" => "
                                              __tmp245424))
                                           (let ((__tmp245427
                                                  (let ((__tmp245432
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242978242979_
                                                            _main-id230816_
                                                            _L230768_
                                                            '#f)))
                                                        (__tmp245428
                                                         (let ((__tmp245431
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__242978242979_
                           _get-kws-id230812_
                           _new-get-kws230822_
                           '#f)))
                       (__tmp245429
                        (let ((__tmp245430
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__242978242979_
                                  _L230582_
                                  _new-kw-dispatch230820_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp245430 _rest230458_))))
                   (declare (not safe))
                   (cons __tmp245431 __tmp245429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp245432
                                                          __tmp245428))))
                                             (declare (not safe))
                                             (_lp230435_
                                              __tmp245427
                                              _bind230438_))))
                                       _hd230643230761_
                                       _hd230640230753_
                                       _hd230637230745_
                                       _hd230634230737_
                                       _hd230616230689_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230596230649_ _g230597230652_)))))
                              (let ()
                                (declare (not safe))
                                (_g230596230649_ _g230597230652_)))
                          (let ()
                            (declare (not safe))
                            (_g230596230649_ _g230597230652_)))
                      (let ()
                        (declare (not safe))
                        (_g230596230649_ _g230597230652_)))
                  (let ()
                    (declare (not safe))
                    (_g230596230649_ _g230597230652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230596230649_
                                                     _g230597230652_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230596230649_
                                                 _g230597230652_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230596230649_
                                             _g230597230652_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230596230649_ _g230597230652_)))
                              (let ()
                                (declare (not safe))
                                (_g230596230649_ _g230597230652_)))))
                      (let ()
                        (declare (not safe))
                        (_g230596230649_ _g230597230652_)))))
              (let ()
                (declare (not safe))
                (_g230596230649_ _g230597230652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230596230649_
                                                 _g230597230652_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230596230649_ _g230597230652_)))))
                              (let ()
                                (declare (not safe))
                                (_g230596230649_ _g230597230652_)))))
                      (let ()
                        (declare (not safe))
                        (_g230596230649_ _g230597230652_)))
                  (let ()
                    (declare (not safe))
                    (_g230596230649_ _g230597230652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230596230649_
                                                     _g230597230652_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230596230649_
                                             _g230597230652_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230596230649_ _g230597230652_)))))
                          (let ()
                            (declare (not safe))
                            (_g230596230649_ _g230597230652_)))))
                  (let ()
                    (declare (not safe))
                    (_g230596230649_ _g230597230652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230595230825_ _L230581_))))
                                         (___kont244913244914_
                                          (lambda (_L230532_ _L230533_)
                                            (let ((__tmp245433
                                                   (let ((__tmp245434
                                                          (let ((__tmp245435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245436
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L230532_))))
                           (declare (not safe))
                           (cons __tmp245436 '()))))
                    (declare (not safe))
                    (cons _L230533_ __tmp245435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245434
                                                           _bind230438_))))
                                              (declare (not safe))
                                              (_lp230435_
                                               _rest230458_
                                               __tmp245433)))))
                                     (let* ((___match244980244981_
                                             (lambda (_e230492230557_
                                                      _hd230491230560_
                                                      _tl230490230562_
                                                      _e230495230565_
                                                      _hd230494230568_
                                                      _tl230493230570_
                                                      _e230498230573_
                                                      _hd230497230576_
                                                      _tl230496230578_)
                                               (let ((_L230581_
                                                      _hd230497230576_)
                                                     (_L230582_
                                                      _hd230494230568_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230582_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L230581_)))
                                                     (___kont244911244912_
                                                      _L230581_
                                                      _L230582_)
                                                     (___kont244913244914_
                                                      _hd230497230576_
                                                      _hd230491230560_)))))
                                            (___match244958244959_
                                             (lambda (_e230481230833_
                                                      _hd230480230836_
                                                      _tl230479230838_
                                                      _e230484230841_
                                                      _hd230483230844_
                                                      _tl230482230846_
                                                      _e230487230849_
                                                      _hd230486230852_
                                                      _tl230485230854_)
                                               (let ((_L230857_
                                                      _hd230486230852_)
                                                     (_L230858_
                                                      _hd230483230844_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230858_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230857_)))
                                                     (___kont244909244910_
                                                      _L230857_
                                                      _L230858_)
                                                     (___match244980244981_
                                                      _e230481230833_
                                                      _hd230480230836_
                                                      _tl230479230838_
                                                      _e230484230841_
                                                      _hd230483230844_
                                                      _tl230482230846_
                                                      _e230487230849_
                                                      _hd230486230852_
                                                      _tl230485230854_)))))
                                            (___match244936244937_
                                             (lambda (_e230470231005_
                                                      _hd230469231008_
                                                      _tl230468231010_
                                                      _e230473231013_
                                                      _hd230472231016_
                                                      _tl230471231018_
                                                      _e230476231021_
                                                      _hd230475231024_
                                                      _tl230474231026_)
                                               (let ((_L231029_
                                                      _hd230475231024_)
                                                     (_L231030_
                                                      _hd230472231016_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L231030_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L231029_)))
                                                     (___kont244907244908_
                                                      _L231029_
                                                      _L231030_)
                                                     (___match244958244959_
                                                      _e230470231005_
                                                      _hd230469231008_
                                                      _tl230468231010_
                                                      _e230473231013_
                                                      _hd230472231016_
                                                      _tl230471231018_
                                                      _e230476231021_
                                                      _hd230475231024_
                                                      _tl230474231026_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244905244906_))
                                           (let ((_e230470231005_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244905244906_))))
                                             (let ((_tl230468231010_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230470231005_)))
                                                   (_hd230469231008_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230470231005_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230469231008_))
                                                   (let ((_e230473231013_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230469231008_))))
                                                     (let ((_tl230471231018_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230473231013_)))
                                                           (_hd230472231016_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230473231013_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230471231018_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230468231010_))
                       (let ((_e230476231021_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230468231010_))))
                         (let ((_tl230474231026_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230476231021_)))
                               (_hd230475231024_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230476231021_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230474231026_))
                               (___match244936244937_
                                _e230470231005_
                                _hd230469231008_
                                _tl230468231010_
                                _e230473231013_
                                _hd230472231016_
                                _tl230471231018_
                                _e230476231021_
                                _hd230475231024_
                                _tl230474231026_)
                               (let ()
                                 (declare (not safe))
                                 (_g230464230511_)))))
                       (let () (declare (not safe)) (_g230464230511_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230468231010_))
                       (let ((_e230506230524_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230468231010_))))
                         (let ((_tl230504230529_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230506230524_)))
                               (_hd230505230527_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230506230524_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230504230529_))
                               (___kont244913244914_
                                _hd230505230527_
                                _hd230469231008_)
                               (let ()
                                 (declare (not safe))
                                 (_g230464230511_)))))
                       (let () (declare (not safe)) (_g230464230511_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230468231010_))
                                                       (let ((_e230506230524_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230468231010_))))
                 (let ((_tl230504230529_
                        (let () (declare (not safe)) (##cdr _e230506230524_)))
                       (_hd230505230527_
                        (let () (declare (not safe)) (##car _e230506230524_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230504230529_))
                       (___kont244913244914_ _hd230505230527_ _hd230469231008_)
                       (let () (declare (not safe)) (_g230464230511_)))))
               (let () (declare (not safe)) (_g230464230511_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230464230511_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230439230447_))
                             (let ((_hd230444231125_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230439230447_)))
                                   (_tl230445231127_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230439230447_))))
                               (let* ((_hd231130_ _hd230444231125_)
                                      (_rest231132_ _tl230445231127_))
                                 (declare (not safe))
                                 (_K230443231122_ _rest231132_ _hd231130_)))
                             (let ()
                               (declare (not safe))
                               (_else230441230455_))))))))
          (let* ((___stx244997244998_ _stx230295_)
                 (_g230301230328_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244997244998_)))))
            (let ((___kont244999245000_
                   (lambda (_L230388_ _L230389_ _L230390_)
                     (let ((__tmp245438
                            (lambda ()
                              (let ((_hd230427_
                                     (let ((__tmp245439
                                            (let ((__tmp245440
                                                   (lambda (_g230419230422_
                                                            _g230420230424_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230419230422_
                                                             _g230420230424_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245440
                                                      '()
                                                      _L230389_))))
                                       (declare (not safe))
                                       (_compile-bindings230298_ __tmp245439)))
                                    (_body230428_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L230388_))))
                                (let ((__tmp245441
                                       (let ((__tmp245442
                                              (let ((__tmp245443
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body230428_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd230427_
                                                      __tmp245443))))
                                         (declare (not safe))
                                         (cons _L230390_ __tmp245442))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp245441
                                   _stx230295_)))))
                           (__tmp245437
                            (let ((__obj245062
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj245062)
                              __obj245062)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp245438
                        gx#current-expander-context
                        __tmp245437))))
                  (___kont245003245004_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx230295_)))))
              (let ((___match245024245025_
                     (lambda (_e230308230340_
                              _hd230307230343_
                              _tl230306230345_
                              _e230311230348_
                              _hd230310230351_
                              _tl230309230353_
                              ___splice245001245002_
                              _target230312230356_
                              _tl230314230358_)
                       (letrec ((_loop230315230361_
                                 (lambda (_hd230313230364_ _bind230319230366_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd230313230364_))
                                       (let ((_e230316230369_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd230313230364_))))
                                         (let ((_lp-tl230318230374_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e230316230369_)))
                                               (_lp-hd230317230372_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e230316230369_))))
                                           (let ((__tmp245446
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd230317230372_
                                                          _bind230319230366_))))
                                             (declare (not safe))
                                             (_loop230315230361_
                                              _lp-tl230318230374_
                                              __tmp245446))))
                                       (let ((_bind230320230377_
                                              (reverse _bind230319230366_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl230309230353_))
                                             (let ((_e230323230380_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl230309230353_))))
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
                                                       (gx#stx-null?
                                                        _tl230321230385_))
                                                     (let ((_L230388_
                                                            _hd230322230383_)
                                                           (_L230389_
                                                            _bind230320230377_)
                                                           (_L230390_
                                                            _hd230307230343_))
                                                       (if (let ((__tmp245444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245445
                                 (lambda (_g230411230414_ _g230412230416_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g230411230414_ _g230412230416_)))))
                            (declare (not safe))
                            (foldr1 __tmp245445 '() _L230389_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp245444))
                   (___kont244999245000_ _L230388_ _L230389_ _L230390_)
                   (___kont245003245004_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont245003245004_))))
                                             (___kont245003245004_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop230315230361_ _target230312230356_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244997244998_))
                    (let ((_e230308230340_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244997244998_))))
                      (let ((_tl230306230345_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230308230340_)))
                            (_hd230307230343_
                             (let ()
                               (declare (not safe))
                               (##car _e230308230340_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230306230345_))
                            (let ((_e230311230348_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230306230345_))))
                              (let ((_tl230309230353_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230311230348_)))
                                    (_hd230310230351_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230311230348_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd230310230351_))
                                    (let ((___splice245001245002_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd230310230351_
                                              '0))))
                                      (let ((_tl230314230358_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice245001245002_
                                                '1)))
                                            (_target230312230356_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice245001245002_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230314230358_))
                                            (___match245024245025_
                                             _e230308230340_
                                             _hd230307230343_
                                             _tl230306230345_
                                             _e230311230348_
                                             _hd230310230351_
                                             _tl230309230353_
                                             ___splice245001245002_
                                             _target230312230356_
                                             _tl230314230358_)
                                            (___kont245003245004_))))
                                    (___kont245003245004_))))
                            (___kont245003245004_))))
                    (___kont245003245004_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind230213_)
        (let* ((___stx245027245028_ _bind230213_)
               (_g230216230233_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx245027245028_)))))
          (let ((___kont245029245030_
                 (lambda (_L230269_ _L230270_)
                   (if (let () (declare (not safe)) (gx#identifier? _L230270_))
                       (let ((_$e230286_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L230269_))))
                         (if _$e230286_
                             _$e230286_
                             (let ((_$e230289_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L230269_))))
                               (if _$e230289_
                                   _$e230289_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L230269_))))))
                       '#f)))
                (___kont245031245032_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx245027245028_))
                (let ((_e230222230245_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx245027245028_))))
                  (let ((_tl230220230250_
                         (let () (declare (not safe)) (##cdr _e230222230245_)))
                        (_hd230221230248_
                         (let ()
                           (declare (not safe))
                           (##car _e230222230245_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd230221230248_))
                        (let ((_e230225230253_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd230221230248_))))
                          (let ((_tl230223230258_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230225230253_)))
                                (_hd230224230256_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230225230253_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230223230258_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl230220230250_))
                                    (let ((_e230228230261_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl230220230250_))))
                                      (let ((_tl230226230266_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230228230261_)))
                                            (_hd230227230264_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230228230261_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230226230266_))
                                            (___kont245029245030_
                                             _hd230227230264_
                                             _hd230224230256_)
                                            (___kont245031245032_))))
                                    (___kont245031245032_))
                                (___kont245031245032_))))
                        (___kont245031245032_))))
                (___kont245031245032_))))))))
