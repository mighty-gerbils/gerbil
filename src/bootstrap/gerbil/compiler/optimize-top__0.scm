(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707841981)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl238398_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245059 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238398_ __tmp245059))
           (let ()
             (declare (not safe))
             (table-set! _tbl238398_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238398_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238398_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238398_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl238398_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx238381_ . _args238383_)
        (let ((__tmp245061
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238383_)
                     (gxc#compile-e__0 _stx238381_)
                     (let ((_arg1238388_ (car _args238383_))
                           (_rest238390_ (cdr _args238383_)))
                       (if (null? _rest238390_)
                           (gxc#compile-e__1 _stx238381_ _arg1238388_)
                           (let ((_arg2238393_ (car _rest238390_))
                                 (_rest238395_ (cdr _rest238390_)))
                             (if (null? _rest238395_)
                                 (gxc#compile-e__2
                                  _stx238381_
                                  _arg1238388_
                                  _arg2238393_)
                                 (apply gxc#compile-e
                                        _stx238381_
                                        _arg1238388_
                                        _arg2238393_
                                        _rest238395_))))))))
              (__tmp245060 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp245061
           gxc#current-compile-methods
           __tmp245060))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl238378_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245062 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl238378_ __tmp245062))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238378_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238378_ '%#call gxc#basic-expression-type-call%))
           _tbl238378_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx238361_ . _args238363_)
        (let ((__tmp245064
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238363_)
                     (gxc#compile-e__0 _stx238361_)
                     (let ((_arg1238368_ (car _args238363_))
                           (_rest238370_ (cdr _args238363_)))
                       (if (null? _rest238370_)
                           (gxc#compile-e__1 _stx238361_ _arg1238368_)
                           (let ((_arg2238373_ (car _rest238370_))
                                 (_rest238375_ (cdr _rest238370_)))
                             (if (null? _rest238375_)
                                 (gxc#compile-e__2
                                  _stx238361_
                                  _arg1238368_
                                  _arg2238373_)
                                 (apply gxc#compile-e
                                        _stx238361_
                                        _arg1238368_
                                        _arg2238373_
                                        _rest238375_))))))))
              (__tmp245063 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp245064
           gxc#current-compile-methods
           __tmp245063))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl238358_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245065 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl238358_ __tmp245065))
           (let ()
             (declare (not safe))
             (table-set! _tbl238358_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238358_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238358_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238358_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238358_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238358_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238358_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238358_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238358_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238358_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238358_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238358_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl238358_ '%#set! gxc#collect-body-setq%))
           _tbl238358_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx238341_ . _args238343_)
        (let ((__tmp245067
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238343_)
                     (gxc#compile-e__0 _stx238341_)
                     (let ((_arg1238348_ (car _args238343_))
                           (_rest238350_ (cdr _args238343_)))
                       (if (null? _rest238350_)
                           (gxc#compile-e__1 _stx238341_ _arg1238348_)
                           (let ((_arg2238353_ (car _rest238350_))
                                 (_rest238355_ (cdr _rest238350_)))
                             (if (null? _rest238355_)
                                 (gxc#compile-e__2
                                  _stx238341_
                                  _arg1238348_
                                  _arg2238353_)
                                 (apply gxc#compile-e
                                        _stx238341_
                                        _arg1238348_
                                        _arg2238353_
                                        _rest238355_))))))))
              (__tmp245066 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp245067
           gxc#current-compile-methods
           __tmp245066))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl238338_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245068 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl238338_ __tmp245068))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238338_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238338_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238338_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238338_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238338_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238338_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238338_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238338_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl238338_ '%#ref gxc#basic-expression-type-ref%))
           _tbl238338_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx238321_ . _args238323_)
        (let ((__tmp245070
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238323_)
                     (gxc#compile-e__0 _stx238321_)
                     (let ((_arg1238328_ (car _args238323_))
                           (_rest238330_ (cdr _args238323_)))
                       (if (null? _rest238330_)
                           (gxc#compile-e__1 _stx238321_ _arg1238328_)
                           (let ((_arg2238333_ (car _rest238330_))
                                 (_rest238335_ (cdr _rest238330_)))
                             (if (null? _rest238335_)
                                 (gxc#compile-e__2
                                  _stx238321_
                                  _arg1238328_
                                  _arg2238333_)
                                 (apply gxc#compile-e
                                        _stx238321_
                                        _arg1238328_
                                        _arg2238333_
                                        _rest238335_))))))))
              (__tmp245069 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp245070
           gxc#current-compile-methods
           __tmp245069))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl238318_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp245071 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl238318_ __tmp245071))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238318_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238318_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238318_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl238318_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl238318_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx238301_ . _args238303_)
        (let ((__tmp245073
               (lambda ()
                 (declare (not safe))
                 (if (null? _args238303_)
                     (gxc#compile-e__0 _stx238301_)
                     (let ((_arg1238308_ (car _args238303_))
                           (_rest238310_ (cdr _args238303_)))
                       (if (null? _rest238310_)
                           (gxc#compile-e__1 _stx238301_ _arg1238308_)
                           (let ((_arg2238313_ (car _rest238310_))
                                 (_rest238315_ (cdr _rest238310_)))
                             (if (null? _rest238315_)
                                 (gxc#compile-e__2
                                  _stx238301_
                                  _arg1238308_
                                  _arg2238313_)
                                 (apply gxc#compile-e
                                        _stx238301_
                                        _arg1238308_
                                        _arg2238313_
                                        _rest238315_))))))))
              (__tmp245072 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp245073
           gxc#current-compile-methods
           __tmp245072))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx238204_)
        (let* ((___stx242979242980_ _stx238204_)
               (_g238207238227_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242979242980_)))))
          (let ((___kont242981242982_
                 (lambda (_L238271_ _L238272_)
                   (let ((_sym238290_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L238272_))))
                     (if (let ((__tmp245074 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp245074 _sym238290_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym238290_))
                         (let ((_type238291238293_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L238271_))))
                           (if _type238291238293_
                               (let ((_type238296_ _type238291238293_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym238290_
                                  _type238296_))
                               '#f))))))
                (___kont242983242984_ (lambda () '#!void)))
            (let ((___match243012243013_
                   (lambda (_e238213238239_
                            _hd238212238242_
                            _tl238211238244_
                            _e238216238247_
                            _hd238215238250_
                            _tl238214238252_
                            _e238219238255_
                            _hd238218238258_
                            _tl238217238260_
                            _e238222238263_
                            _hd238221238266_
                            _tl238220238268_)
                     (let ((_L238271_ _hd238221238266_)
                           (_L238272_ _hd238218238258_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L238272_))
                           (___kont242981242982_ _L238271_ _L238272_)
                           (___kont242983242984_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242979242980_))
                  (let ((_e238213238239_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242979242980_))))
                    (let ((_tl238211238244_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238213238239_)))
                          (_hd238212238242_
                           (let ()
                             (declare (not safe))
                             (##car _e238213238239_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238211238244_))
                          (let ((_e238216238247_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238211238244_))))
                            (let ((_tl238214238252_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238216238247_)))
                                  (_hd238215238250_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238216238247_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238215238250_))
                                  (let ((_e238219238255_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238215238250_))))
                                    (let ((_tl238217238260_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238219238255_)))
                                          (_hd238218238258_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238219238255_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238217238260_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238214238252_))
                                              (let ((_e238222238263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238214238252_))))
                                                (let ((_tl238220238268_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238222238263_)))
                                                      (_hd238221238266_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238222238263_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238220238268_))
                                                      (___match243012243013_
                                                       _e238213238239_
                                                       _hd238212238242_
                                                       _tl238211238244_
                                                       _e238216238247_
                                                       _hd238215238250_
                                                       _tl238214238252_
                                                       _e238219238255_
                                                       _hd238218238258_
                                                       _tl238217238260_
                                                       _e238222238263_
                                                       _hd238221238266_
                                                       _tl238220238268_)
                                                      (___kont242983242984_))))
                                              (___kont242983242984_))
                                          (___kont242983242984_))))
                                  (___kont242983242984_))))
                          (___kont242983242984_))))
                  (___kont242983242984_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx238060_)
        (let* ((___stx243015243016_ _stx238060_)
               (_g238063238094_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243015243016_)))))
          (let ((___kont243017243018_
                 (lambda (_L238176_ _L238177_)
                   (let ((_sym238193_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L238177_))))
                     (if (let ((__tmp245075 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp245075 _sym238193_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym238193_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym238193_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym238193_))
                             (let ((_type238194238196_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L238176_))))
                               (if _type238194238196_
                                   (let ((_type238199_ _type238194238196_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym238193_
                                      _type238199_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L238176_)))))
                (___kont243019243020_
                 (lambda (_L238123_ _L238124_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L238123_)))))
            (let ((___match243048243049_
                   (lambda (_e238069238144_
                            _hd238068238147_
                            _tl238067238149_
                            _e238072238152_
                            _hd238071238155_
                            _tl238070238157_
                            _e238075238160_
                            _hd238074238163_
                            _tl238073238165_
                            _e238078238168_
                            _hd238077238171_
                            _tl238076238173_)
                     (let ((_L238176_ _hd238077238171_)
                           (_L238177_ _hd238074238163_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L238177_))
                           (___kont243017243018_ _L238176_ _L238177_)
                           (___kont243019243020_
                            _hd238077238171_
                            _hd238071238155_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243015243016_))
                  (let ((_e238069238144_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243015243016_))))
                    (let ((_tl238067238149_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238069238144_)))
                          (_hd238068238147_
                           (let ()
                             (declare (not safe))
                             (##car _e238069238144_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238067238149_))
                          (let ((_e238072238152_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238067238149_))))
                            (let ((_tl238070238157_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238072238152_)))
                                  (_hd238071238155_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238072238152_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238071238155_))
                                  (let ((_e238075238160_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238071238155_))))
                                    (let ((_tl238073238165_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238075238160_)))
                                          (_hd238074238163_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238075238160_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238073238165_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238070238157_))
                                              (let ((_e238078238168_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238070238157_))))
                                                (let ((_tl238076238173_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238078238168_)))
                                                      (_hd238077238171_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238078238168_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238076238173_))
                                                      (___match243048243049_
                                                       _e238069238144_
                                                       _hd238068238147_
                                                       _tl238067238149_
                                                       _e238072238152_
                                                       _hd238071238155_
                                                       _tl238070238157_
                                                       _e238075238160_
                                                       _hd238074238163_
                                                       _tl238073238165_
                                                       _e238078238168_
                                                       _hd238077238171_
                                                       _tl238076238173_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g238063238094_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g238063238094_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238070238157_))
                                              (let ((_e238089238115_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238070238157_))))
                                                (let ((_tl238087238120_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238089238115_)))
                                                      (_hd238088238118_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238089238115_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238087238120_))
                                                      (___kont243019243020_
                                                       _hd238088238118_
                                                       _hd238071238155_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g238063238094_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g238063238094_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238070238157_))
                                      (let ((_e238089238115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238070238157_))))
                                        (let ((_tl238087238120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238089238115_)))
                                              (_hd238088238118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238089238115_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238087238120_))
                                              (___kont243019243020_
                                               _hd238088238118_
                                               _hd238071238155_)
                                              (let ()
                                                (declare (not safe))
                                                (_g238063238094_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238063238094_))))))
                          (let () (declare (not safe)) (_g238063238094_)))))
                  (let () (declare (not safe)) (_g238063238094_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx237845_)
        (letrec ((_collect-e237847_
                  (lambda (_hd238004_ _expr238005_)
                    (let* ((___stx243071243072_ _hd238004_)
                           (_g238008238018_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx243071243072_)))))
                      (let ((___kont243073243074_
                             (lambda (_L238038_)
                               (let ((_sym238049_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L238038_))))
                                 (if (let ((__tmp245076
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp245076 _sym238049_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym238049_))
                                     (let ((_type238050238052_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr238005_))))
                                       (if _type238050238052_
                                           (let ((_type238055_
                                                  _type238050238052_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym238049_
                                              _type238055_
                                              '#t))
                                           '#f))))))
                            (___kont243075243076_ (lambda () '#!void)))
                        (let ((___match243084243085_
                               (lambda (_e238013238030_
                                        _hd238012238033_
                                        _tl238011238035_)
                                 (let ((_L238038_ _hd238012238033_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L238038_))
                                       (___kont243073243074_ _L238038_)
                                       (___kont243075243076_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx243071243072_))
                              (let ((_e238013238030_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx243071243072_))))
                                (let ((_tl238011238035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238013238030_)))
                                      (_hd238012238033_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238013238030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238011238035_))
                                      (___match243084243085_
                                       _e238013238030_
                                       _hd238012238033_
                                       _tl238011238035_)
                                      (___kont243075243076_))))
                              (___kont243075243076_))))))))
          (let* ((_g237849237884_
                  (lambda (_g237850237881_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g237850237881_))))
                 (_g237848238001_
                  (lambda (_g237850237887_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g237850237887_))
                        (let ((_e237856237889_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g237850237887_))))
                          (let ((_hd237855237892_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237856237889_)))
                                (_tl237854237894_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237856237889_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237854237894_))
                                (let ((_e237859237897_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237854237894_))))
                                  (let ((_hd237858237900_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237859237897_)))
                                        (_tl237857237902_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237859237897_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd237858237900_))
                                        (let ((_g245077_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd237858237900_
                                                  '0))))
                                          (begin
                                            (let ((_g245078_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g245077_)
                                                         (##vector-length
                                                          _g245077_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g245078_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g245078_)))
                                            (let ((_target237860237905_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g245077_
                                                      0)))
                                                  (_tl237862237907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g245077_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237862237907_))
                                                  (letrec ((_loop237863237910_
                                                            (lambda (_hd237861237913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr237867237915_
                             _hd237868237917_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd237861237913_))
                          (let ((_e237864237920_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd237861237913_))))
                            (let ((_lp-hd237865237923_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237864237920_)))
                                  (_lp-tl237866237925_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237864237920_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd237865237923_))
                                  (let ((_e237873237928_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd237865237923_))))
                                    (let ((_hd237872237931_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237873237928_)))
                                          (_tl237871237933_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237873237928_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl237871237933_))
                                          (let ((_e237876237936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl237871237933_))))
                                            (let ((_hd237875237939_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237876237936_)))
                                                  (_tl237874237941_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237876237936_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237874237941_))
                                                  (let ((__tmp245083
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd237875237939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr237867237915_)))
                (__tmp245082
                 (let ()
                   (declare (not safe))
                   (cons _hd237872237931_ _hd237868237917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop237863237910_
                                                     _lp-tl237866237925_
                                                     __tmp245083
                                                     __tmp245082))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237849237884_
                                                     _g237850237887_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237849237884_
                                             _g237850237887_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237849237884_ _g237850237887_)))))
                          (let ((_expr237869237944_
                                 (reverse _expr237867237915_))
                                (_hd237870237946_ (reverse _hd237868237917_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237857237902_))
                                (let ((_e237879237949_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237857237902_))))
                                  (let ((_hd237878237952_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237879237949_)))
                                        (_tl237877237954_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237879237949_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237877237954_))
                                        ((lambda (_L237957_
                                                  _L237958_
                                                  _L237959_)
                                           (for-each
                                            _collect-e237847_
                                            (let ((__tmp245079
                                                   (lambda (_g237979237982_
                                                            _g237980237984_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237979237982_
                                                             _g237980237984_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245079
                                                      '()
                                                      _L237959_))
                                            (let ((__tmp245080
                                                   (lambda (_g237986237989_
                                                            _g237987237991_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237986237989_
                                                             _g237987237991_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245080
                                                      '()
                                                      _L237958_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp245081
                                                   (lambda (_g237993237996_
                                                            _g237994237998_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237993237996_
                                                             _g237994237998_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245081
                                                      '()
                                                      _L237958_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L237957_)))
                                         _hd237878237952_
                                         _expr237869237944_
                                         _hd237870237946_)
                                        (let ()
                                          (declare (not safe))
                                          (_g237849237884_ _g237850237887_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237849237884_ _g237850237887_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop237863237910_
                                                       _target237860237905_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237849237884_
                                                     _g237850237887_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237849237884_ _g237850237887_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237849237884_ _g237850237887_)))))
                        (let ()
                          (declare (not safe))
                          (_g237849237884_ _g237850237887_))))))
            (declare (not safe))
            (_g237848238001_ _stx237845_)))))
    (define gxc#collect-type-call%
      (lambda (_stx237337_)
        (let* ((___stx243087243088_ _stx237337_)
               (_g237341237456_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243087243088_)))))
          (let ((___kont243089243090_
                 (lambda (_L237795_ _L237796_ _L237797_ _L237798_ _L237799_)
                   (let ((__tmp245087
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237798_)))
                         (__tmp245086
                          (let () (declare (not safe)) (gx#stx-e _L237797_)))
                         (__tmp245085
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237796_)))
                         (__tmp245084
                          (let () (declare (not safe)) (gx#stx-e _L237795_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp245087
                      __tmp245086
                      __tmp245085
                      __tmp245084))))
                (___kont243091243092_
                 (lambda (_L237623_ _L237624_ _L237625_ _L237626_)
                   (let ((__tmp245090
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237625_)))
                         (__tmp245089
                          (let () (declare (not safe)) (gx#stx-e _L237624_)))
                         (__tmp245088
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237623_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp245090
                      __tmp245089
                      __tmp245088
                      '#f))))
                (___kont243093243094_
                 (lambda (_L237493_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp245091
                           (lambda (_g237506237509_ _g237507237511_)
                             (let ()
                               (declare (not safe))
                               (cons _g237506237509_ _g237507237511_)))))
                      (declare (not safe))
                      (foldr1 __tmp245091 '() _L237493_))))))
            (let* ((___match243344243345_
                    (lambda (_e237442237461_
                             _hd237441237464_
                             _tl237440237466_
                             ___splice243095243096_
                             _target237443237469_
                             _tl237445237471_)
                      (letrec ((_loop237446237474_
                                (lambda (_hd237444237477_ _expr237450237479_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd237444237477_))
                                      (let ((_e237447237482_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd237444237477_))))
                                        (let ((_lp-tl237449237487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237447237482_)))
                                              (_lp-hd237448237485_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237447237482_))))
                                          (let ((__tmp245092
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd237448237485_
                                                         _expr237450237479_))))
                                            (declare (not safe))
                                            (_loop237446237474_
                                             _lp-tl237449237487_
                                             __tmp245092))))
                                      (let ((_expr237451237490_
                                             (reverse _expr237450237479_)))
                                        (___kont243093243094_
                                         _expr237451237490_))))))
                        (let ()
                          (declare (not safe))
                          (_loop237446237474_ _target237443237469_ '())))))
                   (___match243224243225_
                    (lambda (_e237350237667_
                             _hd237349237670_
                             _tl237348237672_
                             _e237353237675_
                             _hd237352237678_
                             _tl237351237680_
                             _e237356237683_
                             _hd237355237686_
                             _tl237354237688_
                             _e237359237691_
                             _hd237358237694_
                             _tl237357237696_
                             _e237362237699_
                             _hd237361237702_
                             _tl237360237704_
                             _e237365237707_
                             _hd237364237710_
                             _tl237363237712_
                             _e237368237715_
                             _hd237367237718_
                             _tl237366237720_
                             _e237371237723_
                             _hd237370237726_
                             _tl237369237728_
                             _e237374237731_
                             _hd237373237734_
                             _tl237372237736_
                             _e237377237739_
                             _hd237376237742_
                             _tl237375237744_
                             _e237380237747_
                             _hd237379237750_
                             _tl237378237752_
                             _e237383237755_
                             _hd237382237758_
                             _tl237381237760_
                             _e237386237763_
                             _hd237385237766_
                             _tl237384237768_
                             _e237389237771_
                             _hd237388237774_
                             _tl237387237776_
                             _e237392237779_
                             _hd237391237782_
                             _tl237390237784_
                             _e237395237787_
                             _hd237394237790_
                             _tl237393237792_)
                      (let ((_L237795_ _hd237394237790_)
                            (_L237796_ _hd237385237766_)
                            (_L237797_ _hd237376237742_)
                            (_L237798_ _hd237367237718_)
                            (_L237799_ _hd237358237694_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L237799_
                               'bind-method!))
                            (___kont243089243090_
                             _L237795_
                             _L237796_
                             _L237797_
                             _L237798_
                             _L237799_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl237348237672_))
                                (let ((___splice243095243096_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl237348237672_
                                          '0))))
                                  (let ((_tl237445237471_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice243095243096_
                                            '1)))
                                        (_target237443237469_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice243095243096_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237445237471_))
                                        (___match243344243345_
                                         _e237350237667_
                                         _hd237349237670_
                                         _tl237348237672_
                                         ___splice243095243096_
                                         _target237443237469_
                                         _tl237445237471_)
                                        (let ()
                                          (declare (not safe))
                                          (_g237341237456_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237341237456_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243087243088_))
                  (let ((_e237350237667_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243087243088_))))
                    (let ((_tl237348237672_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237350237667_)))
                          (_hd237349237670_
                           (let ()
                             (declare (not safe))
                             (##car _e237350237667_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237348237672_))
                          (let ((_e237353237675_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237348237672_))))
                            (let ((_tl237351237680_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237353237675_)))
                                  (_hd237352237678_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237353237675_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237352237678_))
                                  (let ((_e237356237683_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237352237678_))))
                                    (let ((_tl237354237688_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237356237683_)))
                                          (_hd237355237686_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237356237683_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd237355237686_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd237355237686_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237354237688_))
                                                  (let ((_e237359237691_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237354237688_))))
                                                    (let ((_tl237357237696_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237359237691_)))
                                                          (_hd237358237694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237359237691_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237357237696_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237351237680_))
                      (let ((_e237362237699_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237351237680_))))
                        (let ((_tl237360237704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237362237699_)))
                              (_hd237361237702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237362237699_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd237361237702_))
                              (let ((_e237365237707_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd237361237702_))))
                                (let ((_tl237363237712_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237365237707_)))
                                      (_hd237364237710_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237365237707_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd237364237710_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd237364237710_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237363237712_))
                                              (let ((_e237368237715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237363237712_))))
                                                (let ((_tl237366237720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237368237715_)))
                                                      (_hd237367237718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237368237715_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237366237720_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl237360237704_))
                                                          (let ((_e237371237723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl237360237704_))))
                    (let ((_tl237369237728_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237371237723_)))
                          (_hd237370237726_
                           (let ()
                             (declare (not safe))
                             (##car _e237371237723_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd237370237726_))
                          (let ((_e237374237731_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd237370237726_))))
                            (let ((_tl237372237736_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237374237731_)))
                                  (_hd237373237734_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237374237731_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd237373237734_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd237373237734_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl237372237736_))
                                          (let ((_e237377237739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl237372237736_))))
                                            (let ((_tl237375237744_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237377237739_)))
                                                  (_hd237376237742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237377237739_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237375237744_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl237369237728_))
                                                      (let ((_e237380237747_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl237369237728_))))
                (let ((_tl237378237752_
                       (let () (declare (not safe)) (##cdr _e237380237747_)))
                      (_hd237379237750_
                       (let () (declare (not safe)) (##car _e237380237747_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237379237750_))
                      (let ((_e237383237755_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237379237750_))))
                        (let ((_tl237381237760_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237383237755_)))
                              (_hd237382237758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237383237755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd237382237758_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd237382237758_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237381237760_))
                                      (let ((_e237386237763_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237381237760_))))
                                        (let ((_tl237384237768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237386237763_)))
                                              (_hd237385237766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237386237763_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237384237768_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237378237752_))
                                                  (let ((_e237389237771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237378237752_))))
                                                    (let ((_tl237387237776_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237389237771_)))
                                                          (_hd237388237774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237389237771_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd237388237774_))
                                                          (let ((_e237392237779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd237388237774_))))
                    (let ((_tl237390237784_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237392237779_)))
                          (_hd237391237782_
                           (let ()
                             (declare (not safe))
                             (##car _e237392237779_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd237391237782_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd237391237782_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl237390237784_))
                                  (let ((_e237395237787_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl237390237784_))))
                                    (let ((_tl237393237792_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237395237787_)))
                                          (_hd237394237790_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237395237787_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237393237792_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237387237776_))
                                              (___match243224243225_
                                               _e237350237667_
                                               _hd237349237670_
                                               _tl237348237672_
                                               _e237353237675_
                                               _hd237352237678_
                                               _tl237351237680_
                                               _e237356237683_
                                               _hd237355237686_
                                               _tl237354237688_
                                               _e237359237691_
                                               _hd237358237694_
                                               _tl237357237696_
                                               _e237362237699_
                                               _hd237361237702_
                                               _tl237360237704_
                                               _e237365237707_
                                               _hd237364237710_
                                               _tl237363237712_
                                               _e237368237715_
                                               _hd237367237718_
                                               _tl237366237720_
                                               _e237371237723_
                                               _hd237370237726_
                                               _tl237369237728_
                                               _e237374237731_
                                               _hd237373237734_
                                               _tl237372237736_
                                               _e237377237739_
                                               _hd237376237742_
                                               _tl237375237744_
                                               _e237380237747_
                                               _hd237379237750_
                                               _tl237378237752_
                                               _e237383237755_
                                               _hd237382237758_
                                               _tl237381237760_
                                               _e237386237763_
                                               _hd237385237766_
                                               _tl237384237768_
                                               _e237389237771_
                                               _hd237388237774_
                                               _tl237387237776_
                                               _e237392237779_
                                               _hd237391237782_
                                               _tl237390237784_
                                               _e237395237787_
                                               _hd237394237790_
                                               _tl237393237792_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237348237672_))
                                                  (let ((___splice243095243096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237348237672_
                                                            '0))))
                                                    (let ((_tl237445237471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243095243096_
                                                              '1)))
                                                          (_target237443237469_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243095243096_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237445237471_))
                                                          (___match243344243345_
                                                           _e237350237667_
                                                           _hd237349237670_
                                                           _tl237348237672_
                                                           ___splice243095243096_
                                                           _target237443237469_
                                                           _tl237445237471_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237341237456_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237341237456_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237348237672_))
                                              (let ((___splice243095243096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237348237672_
                                                        '0))))
                                                (let ((_tl237445237471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243095243096_
                                                          '1)))
                                                      (_target237443237469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243095243096_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237445237471_))
                                                      (___match243344243345_
                                                       _e237350237667_
                                                       _hd237349237670_
                                                       _tl237348237672_
                                                       ___splice243095243096_
                                                       _target237443237469_
                                                       _tl237445237471_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237341237456_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237341237456_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237348237672_))
                                      (let ((___splice243095243096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237348237672_
                                                '0))))
                                        (let ((_tl237445237471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243095243096_
                                                  '1)))
                                              (_target237443237469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243095243096_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237445237471_))
                                              (___match243344243345_
                                               _e237350237667_
                                               _hd237349237670_
                                               _tl237348237672_
                                               ___splice243095243096_
                                               _target237443237469_
                                               _tl237445237471_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237341237456_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237341237456_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237348237672_))
                                  (let ((___splice243095243096_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237348237672_
                                            '0))))
                                    (let ((_tl237445237471_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243095243096_
                                              '1)))
                                          (_target237443237469_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243095243096_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237445237471_))
                                          (___match243344243345_
                                           _e237350237667_
                                           _hd237349237670_
                                           _tl237348237672_
                                           ___splice243095243096_
                                           _target237443237469_
                                           _tl237445237471_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237341237456_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237341237456_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237348237672_))
                              (let ((___splice243095243096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237348237672_
                                        '0))))
                                (let ((_tl237445237471_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243095243096_
                                          '1)))
                                      (_target237443237469_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243095243096_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237445237471_))
                                      (___match243344243345_
                                       _e237350237667_
                                       _hd237349237670_
                                       _tl237348237672_
                                       ___splice243095243096_
                                       _target237443237469_
                                       _tl237445237471_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237341237456_)))))
                              (let ()
                                (declare (not safe))
                                (_g237341237456_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237348237672_))
                      (let ((___splice243095243096_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237348237672_ '0))))
                        (let ((_tl237445237471_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243095243096_ '1)))
                              (_target237443237469_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243095243096_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237445237471_))
                              (___match243344243345_
                               _e237350237667_
                               _hd237349237670_
                               _tl237348237672_
                               ___splice243095243096_
                               _target237443237469_
                               _tl237445237471_)
                              (let ()
                                (declare (not safe))
                                (_g237341237456_)))))
                      (let () (declare (not safe)) (_g237341237456_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237378237752_))
                                                      (if (let ((__tmp245093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp245093 'bind-method!))
                  (let ((_L237623_ _hd237385237766_)
                        (_L237624_ _hd237376237742_)
                        (_L237625_ _hd237367237718_)
                        (_L237626_ _hd237358237694_))
                    (___kont243091243092_
                     _L237623_
                     _L237624_
                     _L237625_
                     _L237626_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237348237672_))
                      (let ((___splice243095243096_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237348237672_ '0))))
                        (let ((_tl237445237471_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243095243096_ '1)))
                              (_target237443237469_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243095243096_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237445237471_))
                              (___match243344243345_
                               _e237350237667_
                               _hd237349237670_
                               _tl237348237672_
                               ___splice243095243096_
                               _target237443237469_
                               _tl237445237471_)
                              (let ()
                                (declare (not safe))
                                (_g237341237456_)))))
                      (let () (declare (not safe)) (_g237341237456_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237348237672_))
                  (let ((___splice243095243096_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237348237672_ '0))))
                    (let ((_tl237445237471_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243095243096_ '1)))
                          (_target237443237469_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243095243096_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237445237471_))
                          (___match243344243345_
                           _e237350237667_
                           _hd237349237670_
                           _tl237348237672_
                           ___splice243095243096_
                           _target237443237469_
                           _tl237445237471_)
                          (let () (declare (not safe)) (_g237341237456_)))))
                  (let () (declare (not safe)) (_g237341237456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237348237672_))
                                                  (let ((___splice243095243096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237348237672_
                                                            '0))))
                                                    (let ((_tl237445237471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243095243096_
                                                              '1)))
                                                          (_target237443237469_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243095243096_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237445237471_))
                                                          (___match243344243345_
                                                           _e237350237667_
                                                           _hd237349237670_
                                                           _tl237348237672_
                                                           ___splice243095243096_
                                                           _target237443237469_
                                                           _tl237445237471_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237341237456_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237341237456_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237348237672_))
                                          (let ((___splice243095243096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237348237672_
                                                    '0))))
                                            (let ((_tl237445237471_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243095243096_
                                                      '1)))
                                                  (_target237443237469_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243095243096_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237445237471_))
                                                  (___match243344243345_
                                                   _e237350237667_
                                                   _hd237349237670_
                                                   _tl237348237672_
                                                   ___splice243095243096_
                                                   _target237443237469_
                                                   _tl237445237471_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237341237456_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237341237456_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237348237672_))
                                      (let ((___splice243095243096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237348237672_
                                                '0))))
                                        (let ((_tl237445237471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243095243096_
                                                  '1)))
                                              (_target237443237469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243095243096_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237445237471_))
                                              (___match243344243345_
                                               _e237350237667_
                                               _hd237349237670_
                                               _tl237348237672_
                                               ___splice243095243096_
                                               _target237443237469_
                                               _tl237445237471_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237341237456_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237341237456_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237348237672_))
                                  (let ((___splice243095243096_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237348237672_
                                            '0))))
                                    (let ((_tl237445237471_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243095243096_
                                              '1)))
                                          (_target237443237469_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243095243096_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237445237471_))
                                          (___match243344243345_
                                           _e237350237667_
                                           _hd237349237670_
                                           _tl237348237672_
                                           ___splice243095243096_
                                           _target237443237469_
                                           _tl237445237471_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237341237456_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237341237456_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl237348237672_))
                          (let ((___splice243095243096_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl237348237672_
                                    '0))))
                            (let ((_tl237445237471_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243095243096_ '1)))
                                  (_target237443237469_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243095243096_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237445237471_))
                                  (___match243344243345_
                                   _e237350237667_
                                   _hd237349237670_
                                   _tl237348237672_
                                   ___splice243095243096_
                                   _target237443237469_
                                   _tl237445237471_)
                                  (let ()
                                    (declare (not safe))
                                    (_g237341237456_)))))
                          (let () (declare (not safe)) (_g237341237456_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237348237672_))
                  (let ((___splice243095243096_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237348237672_ '0))))
                    (let ((_tl237445237471_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243095243096_ '1)))
                          (_target237443237469_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243095243096_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237445237471_))
                          (___match243344243345_
                           _e237350237667_
                           _hd237349237670_
                           _tl237348237672_
                           ___splice243095243096_
                           _target237443237469_
                           _tl237445237471_)
                          (let () (declare (not safe)) (_g237341237456_)))))
                  (let () (declare (not safe)) (_g237341237456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl237348237672_))
                                                      (let ((___splice243095243096_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl237348237672_ '0))))
                (let ((_tl237445237471_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243095243096_ '1)))
                      (_target237443237469_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243095243096_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl237445237471_))
                      (___match243344243345_
                       _e237350237667_
                       _hd237349237670_
                       _tl237348237672_
                       ___splice243095243096_
                       _target237443237469_
                       _tl237445237471_)
                      (let () (declare (not safe)) (_g237341237456_)))))
              (let () (declare (not safe)) (_g237341237456_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237348237672_))
                                              (let ((___splice243095243096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237348237672_
                                                        '0))))
                                                (let ((_tl237445237471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243095243096_
                                                          '1)))
                                                      (_target237443237469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243095243096_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237445237471_))
                                                      (___match243344243345_
                                                       _e237350237667_
                                                       _hd237349237670_
                                                       _tl237348237672_
                                                       ___splice243095243096_
                                                       _target237443237469_
                                                       _tl237445237471_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237341237456_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237341237456_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237348237672_))
                                          (let ((___splice243095243096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237348237672_
                                                    '0))))
                                            (let ((_tl237445237471_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243095243096_
                                                      '1)))
                                                  (_target237443237469_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243095243096_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237445237471_))
                                                  (___match243344243345_
                                                   _e237350237667_
                                                   _hd237349237670_
                                                   _tl237348237672_
                                                   ___splice243095243096_
                                                   _target237443237469_
                                                   _tl237445237471_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237341237456_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237341237456_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237348237672_))
                                      (let ((___splice243095243096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237348237672_
                                                '0))))
                                        (let ((_tl237445237471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243095243096_
                                                  '1)))
                                              (_target237443237469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243095243096_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237445237471_))
                                              (___match243344243345_
                                               _e237350237667_
                                               _hd237349237670_
                                               _tl237348237672_
                                               ___splice243095243096_
                                               _target237443237469_
                                               _tl237445237471_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237341237456_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237341237456_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237348237672_))
                              (let ((___splice243095243096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237348237672_
                                        '0))))
                                (let ((_tl237445237471_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243095243096_
                                          '1)))
                                      (_target237443237469_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243095243096_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237445237471_))
                                      (___match243344243345_
                                       _e237350237667_
                                       _hd237349237670_
                                       _tl237348237672_
                                       ___splice243095243096_
                                       _target237443237469_
                                       _tl237445237471_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237341237456_)))))
                              (let ()
                                (declare (not safe))
                                (_g237341237456_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237348237672_))
                      (let ((___splice243095243096_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237348237672_ '0))))
                        (let ((_tl237445237471_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243095243096_ '1)))
                              (_target237443237469_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243095243096_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237445237471_))
                              (___match243344243345_
                               _e237350237667_
                               _hd237349237670_
                               _tl237348237672_
                               ___splice243095243096_
                               _target237443237469_
                               _tl237445237471_)
                              (let ()
                                (declare (not safe))
                                (_g237341237456_)))))
                      (let () (declare (not safe)) (_g237341237456_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl237348237672_))
                  (let ((___splice243095243096_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl237348237672_ '0))))
                    (let ((_tl237445237471_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243095243096_ '1)))
                          (_target237443237469_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice243095243096_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237445237471_))
                          (___match243344243345_
                           _e237350237667_
                           _hd237349237670_
                           _tl237348237672_
                           ___splice243095243096_
                           _target237443237469_
                           _tl237445237471_)
                          (let () (declare (not safe)) (_g237341237456_)))))
                  (let () (declare (not safe)) (_g237341237456_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237348237672_))
                                                  (let ((___splice243095243096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237348237672_
                                                            '0))))
                                                    (let ((_tl237445237471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243095243096_
                                                              '1)))
                                                          (_target237443237469_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243095243096_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237445237471_))
                                                          (___match243344243345_
                                                           _e237350237667_
                                                           _hd237349237670_
                                                           _tl237348237672_
                                                           ___splice243095243096_
                                                           _target237443237469_
                                                           _tl237445237471_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237341237456_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237341237456_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237348237672_))
                                              (let ((___splice243095243096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237348237672_
                                                        '0))))
                                                (let ((_tl237445237471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243095243096_
                                                          '1)))
                                                      (_target237443237469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243095243096_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237445237471_))
                                                      (___match243344243345_
                                                       _e237350237667_
                                                       _hd237349237670_
                                                       _tl237348237672_
                                                       ___splice243095243096_
                                                       _target237443237469_
                                                       _tl237445237471_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237341237456_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237341237456_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl237348237672_))
                                          (let ((___splice243095243096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl237348237672_
                                                    '0))))
                                            (let ((_tl237445237471_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243095243096_
                                                      '1)))
                                                  (_target237443237469_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice243095243096_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237445237471_))
                                                  (___match243344243345_
                                                   _e237350237667_
                                                   _hd237349237670_
                                                   _tl237348237672_
                                                   ___splice243095243096_
                                                   _target237443237469_
                                                   _tl237445237471_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237341237456_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237341237456_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl237348237672_))
                                  (let ((___splice243095243096_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl237348237672_
                                            '0))))
                                    (let ((_tl237445237471_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243095243096_
                                              '1)))
                                          (_target237443237469_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice243095243096_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237445237471_))
                                          (___match243344243345_
                                           _e237350237667_
                                           _hd237349237670_
                                           _tl237348237672_
                                           ___splice243095243096_
                                           _target237443237469_
                                           _tl237445237471_)
                                          (let ()
                                            (declare (not safe))
                                            (_g237341237456_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237341237456_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl237348237672_))
                          (let ((___splice243095243096_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl237348237672_
                                    '0))))
                            (let ((_tl237445237471_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243095243096_ '1)))
                                  (_target237443237469_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243095243096_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237445237471_))
                                  (___match243344243345_
                                   _e237350237667_
                                   _hd237349237670_
                                   _tl237348237672_
                                   ___splice243095243096_
                                   _target237443237469_
                                   _tl237445237471_)
                                  (let ()
                                    (declare (not safe))
                                    (_g237341237456_)))))
                          (let () (declare (not safe)) (_g237341237456_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl237348237672_))
                      (let ((___splice243095243096_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl237348237672_ '0))))
                        (let ((_tl237445237471_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243095243096_ '1)))
                              (_target237443237469_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice243095243096_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237445237471_))
                              (___match243344243345_
                               _e237350237667_
                               _hd237349237670_
                               _tl237348237672_
                               ___splice243095243096_
                               _target237443237469_
                               _tl237445237471_)
                              (let ()
                                (declare (not safe))
                                (_g237341237456_)))))
                      (let () (declare (not safe)) (_g237341237456_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl237348237672_))
                                                      (let ((___splice243095243096_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl237348237672_ '0))))
                (let ((_tl237445237471_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243095243096_ '1)))
                      (_target237443237469_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice243095243096_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl237445237471_))
                      (___match243344243345_
                       _e237350237667_
                       _hd237349237670_
                       _tl237348237672_
                       ___splice243095243096_
                       _target237443237469_
                       _tl237445237471_)
                      (let () (declare (not safe)) (_g237341237456_)))))
              (let () (declare (not safe)) (_g237341237456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl237348237672_))
                                                  (let ((___splice243095243096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl237348237672_
                                                            '0))))
                                                    (let ((_tl237445237471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243095243096_
                                                              '1)))
                                                          (_target237443237469_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243095243096_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237445237471_))
                                                          (___match243344243345_
                                                           _e237350237667_
                                                           _hd237349237670_
                                                           _tl237348237672_
                                                           ___splice243095243096_
                                                           _target237443237469_
                                                           _tl237445237471_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g237341237456_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237341237456_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl237348237672_))
                                              (let ((___splice243095243096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl237348237672_
                                                        '0))))
                                                (let ((_tl237445237471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243095243096_
                                                          '1)))
                                                      (_target237443237469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice243095243096_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237445237471_))
                                                      (___match243344243345_
                                                       _e237350237667_
                                                       _hd237349237670_
                                                       _tl237348237672_
                                                       ___splice243095243096_
                                                       _target237443237469_
                                                       _tl237445237471_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237341237456_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237341237456_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl237348237672_))
                                      (let ((___splice243095243096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl237348237672_
                                                '0))))
                                        (let ((_tl237445237471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243095243096_
                                                  '1)))
                                              (_target237443237469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice243095243096_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237445237471_))
                                              (___match243344243345_
                                               _e237350237667_
                                               _hd237349237670_
                                               _tl237348237672_
                                               ___splice243095243096_
                                               _target237443237469_
                                               _tl237445237471_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237341237456_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237341237456_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl237348237672_))
                              (let ((___splice243095243096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl237348237672_
                                        '0))))
                                (let ((_tl237445237471_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243095243096_
                                          '1)))
                                      (_target237443237469_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice243095243096_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237445237471_))
                                      (___match243344243345_
                                       _e237350237667_
                                       _hd237349237670_
                                       _tl237348237672_
                                       ___splice243095243096_
                                       _target237443237469_
                                       _tl237445237471_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237341237456_)))))
                              (let ()
                                (declare (not safe))
                                (_g237341237456_))))))
                  (let () (declare (not safe)) (_g237341237456_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx237277_)
        (let* ((___stx243347243348_ _stx237277_)
               (_g237280237293_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243347243348_)))))
          (let ((___kont243349243350_
                 (lambda (_L237321_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L237321_))))
                (___kont243351243352_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243347243348_))
                (let ((_e237285237305_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243347243348_))))
                  (let ((_tl237283237310_
                         (let () (declare (not safe)) (##cdr _e237285237305_)))
                        (_hd237284237308_
                         (let ()
                           (declare (not safe))
                           (##car _e237285237305_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl237283237310_))
                        (let ((_e237288237313_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237283237310_))))
                          (let ((_tl237286237318_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237288237313_)))
                                (_hd237287237316_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237288237313_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl237286237318_))
                                (___kont243349243350_ _hd237287237316_)
                                (___kont243351243352_))))
                        (___kont243351243352_))))
                (___kont243351243352_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx237157_)
        (let* ((_g237159237176_
                (lambda (_g237160237173_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237160237173_))))
               (_g237158237274_
                (lambda (_g237160237179_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237160237179_))
                      (let ((_e237165237181_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237160237179_))))
                        (let ((_hd237164237184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237165237181_)))
                              (_tl237163237186_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237165237181_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237163237186_))
                              (let ((_e237168237189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237163237186_))))
                                (let ((_hd237167237192_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237168237189_)))
                                      (_tl237166237194_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237168237189_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237166237194_))
                                      (let ((_e237171237197_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237166237194_))))
                                        (let ((_hd237170237200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237171237197_)))
                                              (_tl237169237202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237171237197_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237169237202_))
                                              ((lambda (_L237205_ _L237206_)
                                                 (let* ((___stx243369243370_
                                                         _L237206_)
                                                        (_g237222237233_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx243369243370_)))))
                                                   (let ((___kont243371243372_
                                                          (lambda (_L237253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L237254_)
                    (let ((_$e237266_
                           (let ((__tmp245094
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L237254_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp245094
                              '#f))))
                      (if _$e237266_
                          ((lambda (_type-e237269_)
                             (_type-e237269_ _stx237157_ _L237206_))
                           _$e237266_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L237205_))))))
                 (___kont243373243374_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L237205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match243380243381_
                                                            (lambda (_e237228237245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd237227237248_
                             _tl237226237250_)
                      (let ((_L237253_ _tl237226237250_)
                            (_L237254_ _hd237227237248_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L237254_))
                            (___kont243371243372_ _L237253_ _L237254_)
                            (___kont243373243374_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx243369243370_))
                   (let ((_e237228237245_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx243369243370_))))
                     (let ((_tl237226237250_
                            (let ()
                              (declare (not safe))
                              (##cdr _e237228237245_)))
                           (_hd237227237248_
                            (let ()
                              (declare (not safe))
                              (##car _e237228237245_))))
                       (___match243380243381_
                        _e237228237245_
                        _hd237227237248_
                        _tl237226237250_)))
                   (___kont243373243374_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd237170237200_
                                               _hd237167237192_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237159237176_
                                                 _g237160237179_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237159237176_ _g237160237179_)))))
                              (let ()
                                (declare (not safe))
                                (_g237159237176_ _g237160237179_)))))
                      (let ()
                        (declare (not safe))
                        (_g237159237176_ _g237160237179_))))))
          (declare (not safe))
          (_g237158237274_ _stx237157_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx237001_ _ann237002_)
        (let* ((_g237004237041_
                (lambda (_g237005237038_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g237005237038_))))
               (_g237003237154_
                (lambda (_g237005237044_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g237005237044_))
                      (let ((_e237015237046_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g237005237044_))))
                        (let ((_hd237014237049_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237015237046_)))
                              (_tl237013237051_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237015237046_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237013237051_))
                              (let ((_e237018237054_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237013237051_))))
                                (let ((_hd237017237057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237018237054_)))
                                      (_tl237016237059_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237018237054_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237016237059_))
                                      (let ((_e237021237062_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237016237059_))))
                                        (let ((_hd237020237065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237021237062_)))
                                              (_tl237019237067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237021237062_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237019237067_))
                                              (let ((_e237024237070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237019237067_))))
                                                (let ((_hd237023237073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237024237070_)))
                                                      (_tl237022237075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237024237070_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl237022237075_))
                                                      (let ((_e237027237078_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl237022237075_))))
                (let ((_hd237026237081_
                       (let () (declare (not safe)) (##car _e237027237078_)))
                      (_tl237025237083_
                       (let () (declare (not safe)) (##cdr _e237027237078_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl237025237083_))
                      (let ((_e237030237086_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237025237083_))))
                        (let ((_hd237029237089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237030237086_)))
                              (_tl237028237091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237030237086_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237028237091_))
                              (let ((_e237033237094_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237028237091_))))
                                (let ((_hd237032237097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237033237094_)))
                                      (_tl237031237099_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237033237094_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237031237099_))
                                      (let ((_e237036237102_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237031237099_))))
                                        (let ((_hd237035237105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237036237102_)))
                                              (_tl237034237107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237036237102_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237034237107_))
                                              ((lambda (_L237110_
                                                        _L237111_
                                                        _L237112_
                                                        _L237113_
                                                        _L237114_
                                                        _L237115_
                                                        _L237116_)
                                                 (let ((_type-id237146_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237116_)))
                                                       (_super237147_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L237115_)))
                                                       (_slots237148_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L237114_)))
                                                       (_ctor-method237149_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237113_)))
                                                       (_struct?237150_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237112_)))
                                                       (_final?237151_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237111_)))
                                                       (_metaclass237152_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L237110_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L237110_))
                                                            '#f)))
                                                   (let ((__obj245052
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
                                                      __obj245052
                                                      _type-id237146_
                                                      _super237147_
                                                      _slots237148_
                                                      _ctor-method237149_
                                                      _struct?237150_
                                                      _final?237151_
                                                      _metaclass237152_)
                                                     __obj245052)))
                                               _hd237035237105_
                                               _hd237032237097_
                                               _hd237029237089_
                                               _hd237026237081_
                                               _hd237023237073_
                                               _hd237020237065_
                                               _hd237017237057_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237004237041_
                                                 _g237005237044_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237004237041_ _g237005237044_)))))
                              (let ()
                                (declare (not safe))
                                (_g237004237041_ _g237005237044_)))))
                      (let ()
                        (declare (not safe))
                        (_g237004237041_ _g237005237044_)))))
              (let ()
                (declare (not safe))
                (_g237004237041_ _g237005237044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237004237041_
                                                 _g237005237044_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237004237041_ _g237005237044_)))))
                              (let ()
                                (declare (not safe))
                                (_g237004237041_ _g237005237044_)))))
                      (let ()
                        (declare (not safe))
                        (_g237004237041_ _g237005237044_))))))
          (declare (not safe))
          (_g237003237154_ _ann237002_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx236949_ _ann236950_)
        (let* ((_g236952236965_
                (lambda (_g236953236962_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236953236962_))))
               (_g236951236998_
                (lambda (_g236953236968_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236953236968_))
                      (let ((_e236957236970_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236953236968_))))
                        (let ((_hd236956236973_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236957236970_)))
                              (_tl236955236975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236957236970_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236955236975_))
                              (let ((_e236960236978_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236955236975_))))
                                (let ((_hd236959236981_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236960236978_)))
                                      (_tl236958236983_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236960236978_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236958236983_))
                                      ((lambda (_L236986_)
                                         (let ((__tmp245095
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L236986_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp245095)))
                                       _hd236959236981_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236952236965_ _g236953236968_)))))
                              (let ()
                                (declare (not safe))
                                (_g236952236965_ _g236953236968_)))))
                      (let ()
                        (declare (not safe))
                        (_g236952236965_ _g236953236968_))))))
          (declare (not safe))
          (_g236951236998_ _ann236950_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx236897_ _ann236898_)
        (let* ((_g236900236913_
                (lambda (_g236901236910_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236901236910_))))
               (_g236899236946_
                (lambda (_g236901236916_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236901236916_))
                      (let ((_e236905236918_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236901236916_))))
                        (let ((_hd236904236921_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236905236918_)))
                              (_tl236903236923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236905236918_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236903236923_))
                              (let ((_e236908236926_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236903236923_))))
                                (let ((_hd236907236929_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236908236926_)))
                                      (_tl236906236931_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236908236926_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236906236931_))
                                      ((lambda (_L236934_)
                                         (let ((__tmp245096
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L236934_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp245096)))
                                       _hd236907236929_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236900236913_ _g236901236916_)))))
                              (let ()
                                (declare (not safe))
                                (_g236900236913_ _g236901236916_)))))
                      (let ()
                        (declare (not safe))
                        (_g236900236913_ _g236901236916_))))))
          (declare (not safe))
          (_g236899236946_ _ann236898_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx236813_ _ann236814_)
        (let* ((_g236816236837_
                (lambda (_g236817236834_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236817236834_))))
               (_g236815236894_
                (lambda (_g236817236840_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236817236840_))
                      (let ((_e236823236842_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236817236840_))))
                        (let ((_hd236822236845_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236823236842_)))
                              (_tl236821236847_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236823236842_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236821236847_))
                              (let ((_e236826236850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236821236847_))))
                                (let ((_hd236825236853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236826236850_)))
                                      (_tl236824236855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236826236850_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236824236855_))
                                      (let ((_e236829236858_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236824236855_))))
                                        (let ((_hd236828236861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236829236858_)))
                                              (_tl236827236863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236829236858_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236827236863_))
                                              (let ((_e236832236866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236827236863_))))
                                                (let ((_hd236831236869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236832236866_)))
                                                      (_tl236830236871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236832236866_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236830236871_))
                                                      ((lambda (_L236874_
                                                                _L236875_
                                                                _L236876_)
                                                         (let ((__tmp245099
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236876_)))
                       (__tmp245098
                        (let () (declare (not safe)) (gx#stx-e _L236875_)))
                       (__tmp245097
                        (let () (declare (not safe)) (gx#stx-e _L236874_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp245099
                    __tmp245098
                    __tmp245097)))
               _hd236831236869_
               _hd236828236861_
               _hd236825236853_)
              (let ()
                (declare (not safe))
                (_g236816236837_ _g236817236840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236816236837_
                                                 _g236817236840_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236816236837_ _g236817236840_)))))
                              (let ()
                                (declare (not safe))
                                (_g236816236837_ _g236817236840_)))))
                      (let ()
                        (declare (not safe))
                        (_g236816236837_ _g236817236840_))))))
          (declare (not safe))
          (_g236815236894_ _ann236814_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx236729_ _ann236730_)
        (let* ((_g236732236753_
                (lambda (_g236733236750_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236733236750_))))
               (_g236731236810_
                (lambda (_g236733236756_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236733236756_))
                      (let ((_e236739236758_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236733236756_))))
                        (let ((_hd236738236761_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236739236758_)))
                              (_tl236737236763_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236739236758_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236737236763_))
                              (let ((_e236742236766_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236737236763_))))
                                (let ((_hd236741236769_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236742236766_)))
                                      (_tl236740236771_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236742236766_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236740236771_))
                                      (let ((_e236745236774_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236740236771_))))
                                        (let ((_hd236744236777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236745236774_)))
                                              (_tl236743236779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236745236774_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236743236779_))
                                              (let ((_e236748236782_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236743236779_))))
                                                (let ((_hd236747236785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236748236782_)))
                                                      (_tl236746236787_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236748236782_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236746236787_))
                                                      ((lambda (_L236790_
                                                                _L236791_
                                                                _L236792_)
                                                         (let ((__tmp245102
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236792_)))
                       (__tmp245101
                        (let () (declare (not safe)) (gx#stx-e _L236791_)))
                       (__tmp245100
                        (let () (declare (not safe)) (gx#stx-e _L236790_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp245102
                    __tmp245101
                    __tmp245100)))
               _hd236747236785_
               _hd236744236777_
               _hd236741236769_)
              (let ()
                (declare (not safe))
                (_g236732236753_ _g236733236756_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236732236753_
                                                 _g236733236756_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236732236753_ _g236733236756_)))))
                              (let ()
                                (declare (not safe))
                                (_g236732236753_ _g236733236756_)))))
                      (let ()
                        (declare (not safe))
                        (_g236732236753_ _g236733236756_))))))
          (declare (not safe))
          (_g236731236810_ _ann236730_))))
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
      (lambda (_stx235849_)
        (let* ((___stx243383243384_ _stx235849_)
               (_g235855236051_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243383243384_)))))
          (let ((___kont243385243386_
                 (lambda (_L236717_)
                   (let ((__obj245053
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245053
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236717_))
                      '#f)
                     __obj245053)))
                (___kont243387243388_
                 (lambda (_L236644_
                          _L236645_
                          _L236646_
                          _L236647_
                          _L236648_
                          _L236649_)
                   (let* ((_tab236699_
                           (let () (declare (not safe)) (gx#stx-e _L236646_)))
                          (_keys236701_
                           (if _tab236699_
                               (let ((__tmp245103 (vector->list _tab236699_)))
                                 (declare (not safe))
                                 (filter values __tmp245103))
                               '#f)))
                     (let ((__tmp245104
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L236645_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys236701_
                        __tmp245104)))))
                (___kont243389243390_
                 (lambda (_L236377_
                          _L236378_
                          _L236379_
                          _L236380_
                          _L236381_
                          _L236382_
                          _L236383_
                          _L236384_
                          _L236385_
                          _L236386_)
                   (let ((__tmp245106
                          (map gx#stx-e
                               (let ((__tmp245107
                                      (lambda (_g236479236482_ _g236480236484_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g236479236482_
                                                _g236480236484_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp245107 '() _L236379_))))
                         (__tmp245105
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236383_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp245106
                      __tmp245105))))
                (___kont243393243394_
                 (lambda (_L236087_)
                   (let ((__obj245054
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245054
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236087_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L236087_)))
                     __obj245054)))
                (___kont243395243396_
                 (lambda (_L236064_)
                   (let ((__obj245055
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj245055
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236064_))
                      '#f)
                     __obj245055))))
            (let* ((___match243702243703_
                    (lambda (_e236042236079_ _hd236041236082_ _tl236040236084_)
                      (let ((_L236087_ _tl236040236084_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L236087_))
                            (___kont243393243394_ _L236087_)
                            (___kont243395243396_ _tl236040236084_)))))
                   (___match243696243697_
                    (lambda (_e235936236101_
                             _hd235935236104_
                             _tl235934236106_
                             _e235939236109_
                             _hd235938236112_
                             _tl235937236114_
                             _e235942236117_
                             _hd235941236120_
                             _tl235940236122_
                             _e235945236125_
                             _hd235944236128_
                             _tl235943236130_
                             _e235948236133_
                             _hd235947236136_
                             _tl235946236138_
                             _e235951236141_
                             _hd235950236144_
                             _tl235949236146_
                             _e235954236149_
                             _hd235953236152_
                             _tl235952236154_
                             _e235957236157_
                             _hd235956236160_
                             _tl235955236162_
                             _e235960236165_
                             _hd235959236168_
                             _tl235958236170_
                             _e235963236173_
                             _hd235962236176_
                             _tl235961236178_
                             _e235966236181_
                             _hd235965236184_
                             _tl235964236186_
                             _e235969236189_
                             _hd235968236192_
                             _tl235967236194_
                             _e235972236197_
                             _hd235971236200_
                             _tl235970236202_
                             _e235975236205_
                             _hd235974236208_
                             _tl235973236210_
                             ___splice243391243392_
                             _target235976236213_
                             _tl235978236215_
                             _e235993236218_
                             _hd235992236221_
                             _tl235991236223_
                             _e235996236226_
                             _hd235995236229_
                             _tl235994236231_
                             _e235999236234_
                             _hd235998236237_
                             _tl235997236239_)
                      (letrec ((_loop235979236242_
                                (lambda (_hd235977236245_
                                         _-absent-value235983236247_
                                         _key235984236249_
                                         _-xkwvar235985236251_
                                         _-hash-ref235986236253_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd235977236245_))
                                      (let ((_e235980236256_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd235977236245_))))
                                        (let ((_lp-tl235982236261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235980236256_)))
                                              (_lp-hd235981236259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235980236256_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd235981236259_))
                                              (let ((_e236002236264_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd235981236259_))))
                                                (let ((_tl236000236269_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236002236264_)))
                                                      (_hd236001236267_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236002236264_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd236001236267_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd236001236267_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236000236269_))
                      (let ((_e236005236272_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236000236269_))))
                        (let ((_tl236003236277_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236005236272_)))
                              (_hd236004236275_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236005236272_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd236004236275_))
                              (let ((_e236008236280_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd236004236275_))))
                                (let ((_tl236006236285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236008236280_)))
                                      (_hd236007236283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236008236280_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd236007236283_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd236007236283_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236006236285_))
                                              (let ((_e236011236288_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236006236285_))))
                                                (let ((_tl236009236293_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236011236288_)))
                                                      (_hd236010236291_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236011236288_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236009236293_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl236003236277_))
                                                          (let ((_e236014236296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl236003236277_))))
                    (let ((_tl236012236301_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236014236296_)))
                          (_hd236013236299_
                           (let ()
                             (declare (not safe))
                             (##car _e236014236296_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236013236299_))
                          (let ((_e236017236304_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236013236299_))))
                            (let ((_tl236015236309_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236017236304_)))
                                  (_hd236016236307_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236017236304_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd236016236307_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd236016236307_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236015236309_))
                                          (let ((_e236020236312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236015236309_))))
                                            (let ((_tl236018236317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236020236312_)))
                                                  (_hd236019236315_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236020236312_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236018236317_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl236012236301_))
                                                      (let ((_e236023236320_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl236012236301_))))
                (let ((_tl236021236325_
                       (let () (declare (not safe)) (##cdr _e236023236320_)))
                      (_hd236022236323_
                       (let () (declare (not safe)) (##car _e236023236320_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236022236323_))
                      (let ((_e236026236328_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236022236323_))))
                        (let ((_tl236024236333_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236026236328_)))
                              (_hd236025236331_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236026236328_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd236025236331_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd236025236331_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236024236333_))
                                      (let ((_e236029236336_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236024236333_))))
                                        (let ((_tl236027236341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236029236336_)))
                                              (_hd236028236339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236029236336_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236027236341_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236021236325_))
                                                  (let ((_e236032236344_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236021236325_))))
                                                    (let ((_tl236030236349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236032236344_)))
                                                          (_hd236031236347_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236032236344_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd236031236347_))
                                                          (let ((_e236035236352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd236031236347_))))
                    (let ((_tl236033236357_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236035236352_)))
                          (_hd236034236355_
                           (let ()
                             (declare (not safe))
                             (##car _e236035236352_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd236034236355_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd236034236355_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236033236357_))
                                  (let ((_e236038236360_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236033236357_))))
                                    (let ((_tl236036236365_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236038236360_)))
                                          (_hd236037236363_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236038236360_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236036236365_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236030236349_))
                                              (let ((__tmp245122
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236037236363_
                                                             _-absent-value235983236247_)))
                                                    (__tmp245121
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236028236339_
                                                             _key235984236249_)))
                                                    (__tmp245120
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236019236315_
                                                             _-xkwvar235985236251_)))
                                                    (__tmp245119
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd236010236291_
                                                             _-hash-ref235986236253_))))
                                                (declare (not safe))
                                                (_loop235979236242_
                                                 _lp-tl235982236261_
                                                 __tmp245122
                                                 __tmp245121
                                                 __tmp245120
                                                 __tmp245119))
                                              (___match243702243703_
                                               _e235936236101_
                                               _hd235935236104_
                                               _tl235934236106_))
                                          (___match243702243703_
                                           _e235936236101_
                                           _hd235935236104_
                                           _tl235934236106_))))
                                  (___match243702243703_
                                   _e235936236101_
                                   _hd235935236104_
                                   _tl235934236106_))
                              (___match243702243703_
                               _e235936236101_
                               _hd235935236104_
                               _tl235934236106_))
                          (___match243702243703_
                           _e235936236101_
                           _hd235935236104_
                           _tl235934236106_))))
                  (___match243702243703_
                   _e235936236101_
                   _hd235935236104_
                   _tl235934236106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243702243703_
                                                   _e235936236101_
                                                   _hd235935236104_
                                                   _tl235934236106_))
                                              (___match243702243703_
                                               _e235936236101_
                                               _hd235935236104_
                                               _tl235934236106_))))
                                      (___match243702243703_
                                       _e235936236101_
                                       _hd235935236104_
                                       _tl235934236106_))
                                  (___match243702243703_
                                   _e235936236101_
                                   _hd235935236104_
                                   _tl235934236106_))
                              (___match243702243703_
                               _e235936236101_
                               _hd235935236104_
                               _tl235934236106_))))
                      (___match243702243703_
                       _e235936236101_
                       _hd235935236104_
                       _tl235934236106_))))
              (___match243702243703_
               _e235936236101_
               _hd235935236104_
               _tl235934236106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243702243703_
                                                   _e235936236101_
                                                   _hd235935236104_
                                                   _tl235934236106_))))
                                          (___match243702243703_
                                           _e235936236101_
                                           _hd235935236104_
                                           _tl235934236106_))
                                      (___match243702243703_
                                       _e235936236101_
                                       _hd235935236104_
                                       _tl235934236106_))
                                  (___match243702243703_
                                   _e235936236101_
                                   _hd235935236104_
                                   _tl235934236106_))))
                          (___match243702243703_
                           _e235936236101_
                           _hd235935236104_
                           _tl235934236106_))))
                  (___match243702243703_
                   _e235936236101_
                   _hd235935236104_
                   _tl235934236106_))
              (___match243702243703_
               _e235936236101_
               _hd235935236104_
               _tl235934236106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243702243703_
                                               _e235936236101_
                                               _hd235935236104_
                                               _tl235934236106_))
                                          (___match243702243703_
                                           _e235936236101_
                                           _hd235935236104_
                                           _tl235934236106_))
                                      (___match243702243703_
                                       _e235936236101_
                                       _hd235935236104_
                                       _tl235934236106_))))
                              (___match243702243703_
                               _e235936236101_
                               _hd235935236104_
                               _tl235934236106_))))
                      (___match243702243703_
                       _e235936236101_
                       _hd235935236104_
                       _tl235934236106_))
                  (___match243702243703_
                   _e235936236101_
                   _hd235935236104_
                   _tl235934236106_))
              (___match243702243703_
               _e235936236101_
               _hd235935236104_
               _tl235934236106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243702243703_
                                               _e235936236101_
                                               _hd235935236104_
                                               _tl235934236106_))))
                                      (let ((_-hash-ref235990236374_
                                             (reverse _-hash-ref235986236253_))
                                            (_-xkwvar235989236372_
                                             (reverse _-xkwvar235985236251_))
                                            (_key235988236370_
                                             (reverse _key235984236249_))
                                            (_-absent-value235987236368_
                                             (reverse _-absent-value235983236247_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235943236130_))
                                            (let ((_L236377_ _hd235998236237_)
                                                  (_L236378_
                                                   _-absent-value235987236368_)
                                                  (_L236379_ _key235988236370_)
                                                  (_L236380_
                                                   _-xkwvar235989236372_)
                                                  (_L236381_
                                                   _-hash-ref235990236374_)
                                                  (_L236382_ _hd235974236208_)
                                                  (_L236383_ _hd235965236184_)
                                                  (_L236384_ _hd235956236160_)
                                                  (_L236385_ _tl235940236122_)
                                                  (_L236386_ _hd235941236120_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L236386_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L236385_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L236384_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L236386_
                                                          _L236382_))
                                                       (let ((__tmp245117
                                                              (let ((__tmp245118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g236439236442_ _g236440236444_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236439236442_ _g236440236444_)))))
                        (declare (not safe))
                        (foldr1 __tmp245118 '() _L236379_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp245117))
               (let ((__tmp245116
                      (lambda (_g236446236448_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g236446236448_
                           'hash-ref))))
                     (__tmp245114
                      (let ((__tmp245115
                             (lambda (_g236450236453_ _g236451236455_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236450236453_ _g236451236455_)))))
                        (declare (not safe))
                        (foldr1 __tmp245115 '() _L236381_))))
                 (declare (not safe))
                 (andmap1 __tmp245116 __tmp245114))
               (let ((__tmp245113
                      (lambda (_g236457236459_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g236457236459_
                           'absent-value))))
                     (__tmp245111
                      (let ((__tmp245112
                             (lambda (_g236461236464_ _g236462236466_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236461236464_ _g236462236466_)))))
                        (declare (not safe))
                        (foldr1 __tmp245112 '() _L236378_))))
                 (declare (not safe))
                 (andmap1 __tmp245113 __tmp245111))
               (let ((__tmp245110
                      (lambda (_g236468236470_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g236468236470_ _L236386_))))
                     (__tmp245108
                      (let ((__tmp245109
                             (lambda (_g236472236475_ _g236473236477_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g236472236475_ _g236473236477_)))))
                        (declare (not safe))
                        (foldr1 __tmp245109 '() _L236380_))))
                 (declare (not safe))
                 (andmap1 __tmp245110 __tmp245108)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243389243390_
                                                   _L236377_
                                                   _L236378_
                                                   _L236379_
                                                   _L236380_
                                                   _L236381_
                                                   _L236382_
                                                   _L236383_
                                                   _L236384_
                                                   _L236385_
                                                   _L236386_)
                                                  (___match243702243703_
                                                   _e235936236101_
                                                   _hd235935236104_
                                                   _tl235934236106_)))
                                            (___match243702243703_
                                             _e235936236101_
                                             _hd235935236104_
                                             _tl235934236106_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop235979236242_
                           _target235976236213_
                           '()
                           '()
                           '()
                           '())))))
                   (___match243568243569_
                    (lambda (_e235936236101_
                             _hd235935236104_
                             _tl235934236106_
                             _e235939236109_
                             _hd235938236112_
                             _tl235937236114_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235938236112_))
                          (let ((_e235942236117_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235938236112_))))
                            (let ((_tl235940236122_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235942236117_)))
                                  (_hd235941236120_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235942236117_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235937236114_))
                                  (let ((_e235945236125_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235937236114_))))
                                    (let ((_tl235943236130_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235945236125_)))
                                          (_hd235944236128_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235945236125_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235944236128_))
                                          (let ((_e235948236133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235944236128_))))
                                            (let ((_tl235946236138_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235948236133_)))
                                                  (_hd235947236136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235948236133_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd235947236136_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd235947236136_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235946236138_))
                                                          (let ((_e235951236141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235946236138_))))
                    (let ((_tl235949236146_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235951236141_)))
                          (_hd235950236144_
                           (let ()
                             (declare (not safe))
                             (##car _e235951236141_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235950236144_))
                          (let ((_e235954236149_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235950236144_))))
                            (let ((_tl235952236154_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235954236149_)))
                                  (_hd235953236152_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235954236149_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235953236152_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235953236152_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235952236154_))
                                          (let ((_e235957236157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235952236154_))))
                                            (let ((_tl235955236162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235957236157_)))
                                                  (_hd235956236160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235957236157_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235955236162_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235949236146_))
                                                      (let ((_e235960236165_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235949236146_))))
                (let ((_tl235958236170_
                       (let () (declare (not safe)) (##cdr _e235960236165_)))
                      (_hd235959236168_
                       (let () (declare (not safe)) (##car _e235960236165_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235959236168_))
                      (let ((_e235963236173_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235959236168_))))
                        (let ((_tl235961236178_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235963236173_)))
                              (_hd235962236176_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235963236173_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235962236176_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235962236176_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235961236178_))
                                      (let ((_e235966236181_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235961236178_))))
                                        (let ((_tl235964236186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235966236181_)))
                                              (_hd235965236184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235966236181_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235964236186_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235958236170_))
                                                  (let ((_e235969236189_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235958236170_))))
                                                    (let ((_tl235967236194_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235969236189_)))
                                                          (_hd235968236192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235969236189_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235968236192_))
                                                          (let ((_e235972236197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235968236192_))))
                    (let ((_tl235970236202_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235972236197_)))
                          (_hd235971236200_
                           (let ()
                             (declare (not safe))
                             (##car _e235972236197_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235971236200_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd235971236200_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235970236202_))
                                  (let ((_e235975236205_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235970236202_))))
                                    (let ((_tl235973236210_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235975236205_)))
                                          (_hd235974236208_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235975236205_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235973236210_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235967236194_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl235967236194_))
                                                        '1)
                                                  (let ((___splice243391243392_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235967236194_
                                                            '1))))
                                                    (let ((_tl235978236215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243391243392_
                                                              '1)))
                                                          (_target235976236213_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice243391243392_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235978236215_))
                                                          (let ((_e235993236218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235978236215_))))
                    (let ((_tl235991236223_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235993236218_)))
                          (_hd235992236221_
                           (let ()
                             (declare (not safe))
                             (##car _e235993236218_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235992236221_))
                          (let ((_e235996236226_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235992236221_))))
                            (let ((_tl235994236231_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235996236226_)))
                                  (_hd235995236229_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235996236226_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235995236229_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235995236229_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235994236231_))
                                          (let ((_e235999236234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235994236231_))))
                                            (let ((_tl235997236239_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235999236234_)))
                                                  (_hd235998236237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235999236234_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235997236239_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235991236223_))
                                                      (___match243696243697_
                                                       _e235936236101_
                                                       _hd235935236104_
                                                       _tl235934236106_
                                                       _e235939236109_
                                                       _hd235938236112_
                                                       _tl235937236114_
                                                       _e235942236117_
                                                       _hd235941236120_
                                                       _tl235940236122_
                                                       _e235945236125_
                                                       _hd235944236128_
                                                       _tl235943236130_
                                                       _e235948236133_
                                                       _hd235947236136_
                                                       _tl235946236138_
                                                       _e235951236141_
                                                       _hd235950236144_
                                                       _tl235949236146_
                                                       _e235954236149_
                                                       _hd235953236152_
                                                       _tl235952236154_
                                                       _e235957236157_
                                                       _hd235956236160_
                                                       _tl235955236162_
                                                       _e235960236165_
                                                       _hd235959236168_
                                                       _tl235958236170_
                                                       _e235963236173_
                                                       _hd235962236176_
                                                       _tl235961236178_
                                                       _e235966236181_
                                                       _hd235965236184_
                                                       _tl235964236186_
                                                       _e235969236189_
                                                       _hd235968236192_
                                                       _tl235967236194_
                                                       _e235972236197_
                                                       _hd235971236200_
                                                       _tl235970236202_
                                                       _e235975236205_
                                                       _hd235974236208_
                                                       _tl235973236210_
                                                       ___splice243391243392_
                                                       _target235976236213_
                                                       _tl235978236215_
                                                       _e235993236218_
                                                       _hd235992236221_
                                                       _tl235991236223_
                                                       _e235996236226_
                                                       _hd235995236229_
                                                       _tl235994236231_
                                                       _e235999236234_
                                                       _hd235998236237_
                                                       _tl235997236239_)
                                                      (___match243702243703_
                                                       _e235936236101_
                                                       _hd235935236104_
                                                       _tl235934236106_))
                                                  (___match243702243703_
                                                   _e235936236101_
                                                   _hd235935236104_
                                                   _tl235934236106_))))
                                          (___match243702243703_
                                           _e235936236101_
                                           _hd235935236104_
                                           _tl235934236106_))
                                      (___match243702243703_
                                       _e235936236101_
                                       _hd235935236104_
                                       _tl235934236106_))
                                  (___match243702243703_
                                   _e235936236101_
                                   _hd235935236104_
                                   _tl235934236106_))))
                          (___match243702243703_
                           _e235936236101_
                           _hd235935236104_
                           _tl235934236106_))))
                  (___match243702243703_
                   _e235936236101_
                   _hd235935236104_
                   _tl235934236106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243702243703_
                                                   _e235936236101_
                                                   _hd235935236104_
                                                   _tl235934236106_))
                                              (___match243702243703_
                                               _e235936236101_
                                               _hd235935236104_
                                               _tl235934236106_))
                                          (___match243702243703_
                                           _e235936236101_
                                           _hd235935236104_
                                           _tl235934236106_))))
                                  (___match243702243703_
                                   _e235936236101_
                                   _hd235935236104_
                                   _tl235934236106_))
                              (___match243702243703_
                               _e235936236101_
                               _hd235935236104_
                               _tl235934236106_))
                          (___match243702243703_
                           _e235936236101_
                           _hd235935236104_
                           _tl235934236106_))))
                  (___match243702243703_
                   _e235936236101_
                   _hd235935236104_
                   _tl235934236106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243702243703_
                                                   _e235936236101_
                                                   _hd235935236104_
                                                   _tl235934236106_))
                                              (___match243702243703_
                                               _e235936236101_
                                               _hd235935236104_
                                               _tl235934236106_))))
                                      (___match243702243703_
                                       _e235936236101_
                                       _hd235935236104_
                                       _tl235934236106_))
                                  (___match243702243703_
                                   _e235936236101_
                                   _hd235935236104_
                                   _tl235934236106_))
                              (___match243702243703_
                               _e235936236101_
                               _hd235935236104_
                               _tl235934236106_))))
                      (___match243702243703_
                       _e235936236101_
                       _hd235935236104_
                       _tl235934236106_))))
              (___match243702243703_
               _e235936236101_
               _hd235935236104_
               _tl235934236106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243702243703_
                                                   _e235936236101_
                                                   _hd235935236104_
                                                   _tl235934236106_))))
                                          (___match243702243703_
                                           _e235936236101_
                                           _hd235935236104_
                                           _tl235934236106_))
                                      (___match243702243703_
                                       _e235936236101_
                                       _hd235935236104_
                                       _tl235934236106_))
                                  (___match243702243703_
                                   _e235936236101_
                                   _hd235935236104_
                                   _tl235934236106_))))
                          (___match243702243703_
                           _e235936236101_
                           _hd235935236104_
                           _tl235934236106_))))
                  (___match243702243703_
                   _e235936236101_
                   _hd235935236104_
                   _tl235934236106_))
              (___match243702243703_
               _e235936236101_
               _hd235935236104_
               _tl235934236106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243702243703_
                                                   _e235936236101_
                                                   _hd235935236104_
                                                   _tl235934236106_))))
                                          (___match243702243703_
                                           _e235936236101_
                                           _hd235935236104_
                                           _tl235934236106_))))
                                  (___match243702243703_
                                   _e235936236101_
                                   _hd235935236104_
                                   _tl235934236106_))))
                          (___match243702243703_
                           _e235936236101_
                           _hd235935236104_
                           _tl235934236106_))))
                   (___match243556243557_
                    (lambda (_e235869236492_
                             _hd235868236495_
                             _tl235867236497_
                             _e235872236500_
                             _hd235871236503_
                             _tl235870236505_
                             _e235875236508_
                             _hd235874236511_
                             _tl235873236513_
                             _e235878236516_
                             _hd235877236519_
                             _tl235876236521_
                             _e235881236524_
                             _hd235880236527_
                             _tl235879236529_
                             _e235884236532_
                             _hd235883236535_
                             _tl235882236537_
                             _e235887236540_
                             _hd235886236543_
                             _tl235885236545_
                             _e235890236548_
                             _hd235889236551_
                             _tl235888236553_
                             _e235893236556_
                             _hd235892236559_
                             _tl235891236561_
                             _e235896236564_
                             _hd235895236567_
                             _tl235894236569_
                             _e235899236572_
                             _hd235898236575_
                             _tl235897236577_
                             _e235902236580_
                             _hd235901236583_
                             _tl235900236585_
                             _e235905236588_
                             _hd235904236591_
                             _tl235903236593_
                             _e235908236596_
                             _hd235907236599_
                             _tl235906236601_
                             _e235911236604_
                             _hd235910236607_
                             _tl235909236609_
                             _e235914236612_
                             _hd235913236615_
                             _tl235912236617_
                             _e235917236620_
                             _hd235916236623_
                             _tl235915236625_
                             _e235920236628_
                             _hd235919236631_
                             _tl235918236633_
                             _e235923236636_
                             _hd235922236639_
                             _tl235921236641_)
                      (let ((_L236644_ _hd235922236639_)
                            (_L236645_ _hd235913236615_)
                            (_L236646_ _hd235904236591_)
                            (_L236647_ _hd235895236567_)
                            (_L236648_ _hd235886236543_)
                            (_L236649_ _hd235871236503_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L236649_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L236648_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L236647_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L236649_ _L236644_)))
                            (___kont243387243388_
                             _L236644_
                             _L236645_
                             _L236646_
                             _L236647_
                             _L236648_
                             _L236649_)
                            (___match243568243569_
                             _e235869236492_
                             _hd235868236495_
                             _tl235867236497_
                             _e235872236500_
                             _hd235871236503_
                             _tl235870236505_)))))
                   (___match243410243411_
                    (lambda (_e235869236492_ _hd235868236495_ _tl235867236497_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235867236497_))
                          (let ((_e235872236500_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235867236497_))))
                            (let ((_tl235870236505_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235872236500_)))
                                  (_hd235871236503_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235872236500_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235870236505_))
                                  (let ((_e235875236508_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235870236505_))))
                                    (let ((_tl235873236513_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235875236508_)))
                                          (_hd235874236511_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235875236508_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235874236511_))
                                          (let ((_e235878236516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235874236511_))))
                                            (let ((_tl235876236521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235878236516_)))
                                                  (_hd235877236519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235878236516_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd235877236519_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd235877236519_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235876236521_))
                                                          (let ((_e235881236524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235876236521_))))
                    (let ((_tl235879236529_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235881236524_)))
                          (_hd235880236527_
                           (let ()
                             (declare (not safe))
                             (##car _e235881236524_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235880236527_))
                          (let ((_e235884236532_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235880236527_))))
                            (let ((_tl235882236537_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235884236532_)))
                                  (_hd235883236535_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235884236532_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235883236535_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235883236535_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235882236537_))
                                          (let ((_e235887236540_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235882236537_))))
                                            (let ((_tl235885236545_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235887236540_)))
                                                  (_hd235886236543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235887236540_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235885236545_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235879236529_))
                                                      (let ((_e235890236548_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235879236529_))))
                (let ((_tl235888236553_
                       (let () (declare (not safe)) (##cdr _e235890236548_)))
                      (_hd235889236551_
                       (let () (declare (not safe)) (##car _e235890236548_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235889236551_))
                      (let ((_e235893236556_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235889236551_))))
                        (let ((_tl235891236561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235893236556_)))
                              (_hd235892236559_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235893236556_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235892236559_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235892236559_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235891236561_))
                                      (let ((_e235896236564_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235891236561_))))
                                        (let ((_tl235894236569_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235896236564_)))
                                              (_hd235895236567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235896236564_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235894236569_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235888236553_))
                                                  (let ((_e235899236572_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235888236553_))))
                                                    (let ((_tl235897236577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235899236572_)))
                                                          (_hd235898236575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235899236572_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235898236575_))
                                                          (let ((_e235902236580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235898236575_))))
                    (let ((_tl235900236585_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235902236580_)))
                          (_hd235901236583_
                           (let ()
                             (declare (not safe))
                             (##car _e235902236580_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235901236583_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd235901236583_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235900236585_))
                                  (let ((_e235905236588_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235900236585_))))
                                    (let ((_tl235903236593_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235905236588_)))
                                          (_hd235904236591_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235905236588_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235903236593_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235897236577_))
                                              (let ((_e235908236596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235897236577_))))
                                                (let ((_tl235906236601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235908236596_)))
                                                      (_hd235907236599_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235908236596_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235907236599_))
                                                      (let ((_e235911236604_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd235907236599_))))
                (let ((_tl235909236609_
                       (let () (declare (not safe)) (##cdr _e235911236604_)))
                      (_hd235910236607_
                       (let () (declare (not safe)) (##car _e235911236604_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd235910236607_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd235910236607_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235909236609_))
                              (let ((_e235914236612_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235909236609_))))
                                (let ((_tl235912236617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235914236612_)))
                                      (_hd235913236615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235914236612_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235912236617_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235906236601_))
                                          (let ((_e235917236620_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235906236601_))))
                                            (let ((_tl235915236625_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235917236620_)))
                                                  (_hd235916236623_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235917236620_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd235916236623_))
                                                  (let ((_e235920236628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd235916236623_))))
                                                    (let ((_tl235918236633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235920236628_)))
                                                          (_hd235919236631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235920236628_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd235919236631_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd235919236631_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235918236633_))
                          (let ((_e235923236636_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235918236633_))))
                            (let ((_tl235921236641_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235923236636_)))
                                  (_hd235922236639_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235923236636_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl235921236641_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235915236625_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235873236513_))
                                          (___match243556243557_
                                           _e235869236492_
                                           _hd235868236495_
                                           _tl235867236497_
                                           _e235872236500_
                                           _hd235871236503_
                                           _tl235870236505_
                                           _e235875236508_
                                           _hd235874236511_
                                           _tl235873236513_
                                           _e235878236516_
                                           _hd235877236519_
                                           _tl235876236521_
                                           _e235881236524_
                                           _hd235880236527_
                                           _tl235879236529_
                                           _e235884236532_
                                           _hd235883236535_
                                           _tl235882236537_
                                           _e235887236540_
                                           _hd235886236543_
                                           _tl235885236545_
                                           _e235890236548_
                                           _hd235889236551_
                                           _tl235888236553_
                                           _e235893236556_
                                           _hd235892236559_
                                           _tl235891236561_
                                           _e235896236564_
                                           _hd235895236567_
                                           _tl235894236569_
                                           _e235899236572_
                                           _hd235898236575_
                                           _tl235897236577_
                                           _e235902236580_
                                           _hd235901236583_
                                           _tl235900236585_
                                           _e235905236588_
                                           _hd235904236591_
                                           _tl235903236593_
                                           _e235908236596_
                                           _hd235907236599_
                                           _tl235906236601_
                                           _e235911236604_
                                           _hd235910236607_
                                           _tl235909236609_
                                           _e235914236612_
                                           _hd235913236615_
                                           _tl235912236617_
                                           _e235917236620_
                                           _hd235916236623_
                                           _tl235915236625_
                                           _e235920236628_
                                           _hd235919236631_
                                           _tl235918236633_
                                           _e235923236636_
                                           _hd235922236639_
                                           _tl235921236641_)
                                          (___match243568243569_
                                           _e235869236492_
                                           _hd235868236495_
                                           _tl235867236497_
                                           _e235872236500_
                                           _hd235871236503_
                                           _tl235870236505_))
                                      (___match243568243569_
                                       _e235869236492_
                                       _hd235868236495_
                                       _tl235867236497_
                                       _e235872236500_
                                       _hd235871236503_
                                       _tl235870236505_))
                                  (___match243568243569_
                                   _e235869236492_
                                   _hd235868236495_
                                   _tl235867236497_
                                   _e235872236500_
                                   _hd235871236503_
                                   _tl235870236505_))))
                          (___match243568243569_
                           _e235869236492_
                           _hd235868236495_
                           _tl235867236497_
                           _e235872236500_
                           _hd235871236503_
                           _tl235870236505_))
                      (___match243568243569_
                       _e235869236492_
                       _hd235868236495_
                       _tl235867236497_
                       _e235872236500_
                       _hd235871236503_
                       _tl235870236505_))
                  (___match243568243569_
                   _e235869236492_
                   _hd235868236495_
                   _tl235867236497_
                   _e235872236500_
                   _hd235871236503_
                   _tl235870236505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243568243569_
                                                   _e235869236492_
                                                   _hd235868236495_
                                                   _tl235867236497_
                                                   _e235872236500_
                                                   _hd235871236503_
                                                   _tl235870236505_))))
                                          (___match243568243569_
                                           _e235869236492_
                                           _hd235868236495_
                                           _tl235867236497_
                                           _e235872236500_
                                           _hd235871236503_
                                           _tl235870236505_))
                                      (___match243568243569_
                                       _e235869236492_
                                       _hd235868236495_
                                       _tl235867236497_
                                       _e235872236500_
                                       _hd235871236503_
                                       _tl235870236505_))))
                              (___match243568243569_
                               _e235869236492_
                               _hd235868236495_
                               _tl235867236497_
                               _e235872236500_
                               _hd235871236503_
                               _tl235870236505_))
                          (___match243568243569_
                           _e235869236492_
                           _hd235868236495_
                           _tl235867236497_
                           _e235872236500_
                           _hd235871236503_
                           _tl235870236505_))
                      (___match243568243569_
                       _e235869236492_
                       _hd235868236495_
                       _tl235867236497_
                       _e235872236500_
                       _hd235871236503_
                       _tl235870236505_))))
              (___match243568243569_
               _e235869236492_
               _hd235868236495_
               _tl235867236497_
               _e235872236500_
               _hd235871236503_
               _tl235870236505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243568243569_
                                               _e235869236492_
                                               _hd235868236495_
                                               _tl235867236497_
                                               _e235872236500_
                                               _hd235871236503_
                                               _tl235870236505_))
                                          (___match243568243569_
                                           _e235869236492_
                                           _hd235868236495_
                                           _tl235867236497_
                                           _e235872236500_
                                           _hd235871236503_
                                           _tl235870236505_))))
                                  (___match243568243569_
                                   _e235869236492_
                                   _hd235868236495_
                                   _tl235867236497_
                                   _e235872236500_
                                   _hd235871236503_
                                   _tl235870236505_))
                              (___match243568243569_
                               _e235869236492_
                               _hd235868236495_
                               _tl235867236497_
                               _e235872236500_
                               _hd235871236503_
                               _tl235870236505_))
                          (___match243568243569_
                           _e235869236492_
                           _hd235868236495_
                           _tl235867236497_
                           _e235872236500_
                           _hd235871236503_
                           _tl235870236505_))))
                  (___match243568243569_
                   _e235869236492_
                   _hd235868236495_
                   _tl235867236497_
                   _e235872236500_
                   _hd235871236503_
                   _tl235870236505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243568243569_
                                                   _e235869236492_
                                                   _hd235868236495_
                                                   _tl235867236497_
                                                   _e235872236500_
                                                   _hd235871236503_
                                                   _tl235870236505_))
                                              (___match243568243569_
                                               _e235869236492_
                                               _hd235868236495_
                                               _tl235867236497_
                                               _e235872236500_
                                               _hd235871236503_
                                               _tl235870236505_))))
                                      (___match243568243569_
                                       _e235869236492_
                                       _hd235868236495_
                                       _tl235867236497_
                                       _e235872236500_
                                       _hd235871236503_
                                       _tl235870236505_))
                                  (___match243568243569_
                                   _e235869236492_
                                   _hd235868236495_
                                   _tl235867236497_
                                   _e235872236500_
                                   _hd235871236503_
                                   _tl235870236505_))
                              (___match243568243569_
                               _e235869236492_
                               _hd235868236495_
                               _tl235867236497_
                               _e235872236500_
                               _hd235871236503_
                               _tl235870236505_))))
                      (___match243568243569_
                       _e235869236492_
                       _hd235868236495_
                       _tl235867236497_
                       _e235872236500_
                       _hd235871236503_
                       _tl235870236505_))))
              (___match243568243569_
               _e235869236492_
               _hd235868236495_
               _tl235867236497_
               _e235872236500_
               _hd235871236503_
               _tl235870236505_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243568243569_
                                                   _e235869236492_
                                                   _hd235868236495_
                                                   _tl235867236497_
                                                   _e235872236500_
                                                   _hd235871236503_
                                                   _tl235870236505_))))
                                          (___match243568243569_
                                           _e235869236492_
                                           _hd235868236495_
                                           _tl235867236497_
                                           _e235872236500_
                                           _hd235871236503_
                                           _tl235870236505_))
                                      (___match243568243569_
                                       _e235869236492_
                                       _hd235868236495_
                                       _tl235867236497_
                                       _e235872236500_
                                       _hd235871236503_
                                       _tl235870236505_))
                                  (___match243568243569_
                                   _e235869236492_
                                   _hd235868236495_
                                   _tl235867236497_
                                   _e235872236500_
                                   _hd235871236503_
                                   _tl235870236505_))))
                          (___match243568243569_
                           _e235869236492_
                           _hd235868236495_
                           _tl235867236497_
                           _e235872236500_
                           _hd235871236503_
                           _tl235870236505_))))
                  (___match243568243569_
                   _e235869236492_
                   _hd235868236495_
                   _tl235867236497_
                   _e235872236500_
                   _hd235871236503_
                   _tl235870236505_))
              (___match243568243569_
               _e235869236492_
               _hd235868236495_
               _tl235867236497_
               _e235872236500_
               _hd235871236503_
               _tl235870236505_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243568243569_
                                                   _e235869236492_
                                                   _hd235868236495_
                                                   _tl235867236497_
                                                   _e235872236500_
                                                   _hd235871236503_
                                                   _tl235870236505_))))
                                          (___match243568243569_
                                           _e235869236492_
                                           _hd235868236495_
                                           _tl235867236497_
                                           _e235872236500_
                                           _hd235871236503_
                                           _tl235870236505_))))
                                  (___match243568243569_
                                   _e235869236492_
                                   _hd235868236495_
                                   _tl235867236497_
                                   _e235872236500_
                                   _hd235871236503_
                                   _tl235870236505_))))
                          (___match243702243703_
                           _e235869236492_
                           _hd235868236495_
                           _tl235867236497_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243383243384_))
                  (let ((_e235860236709_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243383243384_))))
                    (let ((_tl235858236714_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235860236709_)))
                          (_hd235859236712_
                           (let ()
                             (declare (not safe))
                             (##car _e235860236709_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L236717_ _tl235858236714_))
                            (___kont243385243386_ _L236717_))
                          (___match243410243411_
                           _e235860236709_
                           _hd235859236712_
                           _tl235858236714_))))
                  (let () (declare (not safe)) (_g235855236051_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx235804_)
        (letrec ((_clause-e235806_
                  (lambda (_form235847_)
                    (let ((__obj245056
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
                       __obj245056
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form235847_))
                       (if (let ((__tmp245123
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp245123))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form235847_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form235847_))
                               '#f)
                           '#f))
                      __obj245056))))
          (let* ((_g235808235818_
                  (lambda (_g235809235815_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g235809235815_))))
                 (_g235807235844_
                  (lambda (_g235809235821_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g235809235821_))
                        (let ((_e235813235823_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g235809235821_))))
                          (let ((_hd235812235826_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235813235823_)))
                                (_tl235811235828_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235813235823_))))
                            ((lambda (_L235831_)
                               (let ((_clauses235842_
                                      (map _clause-e235806_ _L235831_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses235842_)))
                             _tl235811235828_)))
                        (let ()
                          (declare (not safe))
                          (_g235808235818_ _g235809235821_))))))
            (declare (not safe))
            (_g235807235844_ _stx235804_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx235736_)
        (let* ((_g235738235755_
                (lambda (_g235739235752_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235739235752_))))
               (_g235737235801_
                (lambda (_g235739235758_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235739235758_))
                      (let ((_e235744235760_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235739235758_))))
                        (let ((_hd235743235763_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235744235760_)))
                              (_tl235742235765_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235744235760_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235742235765_))
                              (let ((_e235747235768_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235742235765_))))
                                (let ((_hd235746235771_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235747235768_)))
                                      (_tl235745235773_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235747235768_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235745235773_))
                                      (let ((_e235750235776_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235745235773_))))
                                        (let ((_hd235749235779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235750235776_)))
                                              (_tl235748235781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235750235776_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235748235781_))
                                              ((lambda (_L235784_ _L235785_)
                                                 (let ((__tmp245124
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L235784_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp245124
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd235749235779_
                                               _hd235746235771_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235738235755_
                                                 _g235739235758_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235738235755_ _g235739235758_)))))
                              (let ()
                                (declare (not safe))
                                (_g235738235755_ _g235739235758_)))))
                      (let ()
                        (declare (not safe))
                        (_g235738235755_ _g235739235758_))))))
          (declare (not safe))
          (_g235737235801_ _stx235736_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx235641_)
        (let* ((___stx243711243712_ _stx235641_)
               (_g235644235664_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243711243712_)))))
          (let ((___kont243713243714_
                 (lambda (_L235708_ _L235709_)
                   (let ((_type-e235726235728_
                          (let ((__tmp245125
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L235709_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp245125
                             '#f))))
                     (if _type-e235726235728_
                         (let ((_type-e235731_ _type-e235726235728_))
                           (_type-e235731_ _stx235641_ _L235708_))
                         '#f))))
                (___kont243715243716_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243711243712_))
                (let ((_e235650235676_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243711243712_))))
                  (let ((_tl235648235681_
                         (let () (declare (not safe)) (##cdr _e235650235676_)))
                        (_hd235649235679_
                         (let ()
                           (declare (not safe))
                           (##car _e235650235676_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235648235681_))
                        (let ((_e235653235684_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235648235681_))))
                          (let ((_tl235651235689_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235653235684_)))
                                (_hd235652235687_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235653235684_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd235652235687_))
                                (let ((_e235656235692_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd235652235687_))))
                                  (let ((_tl235654235697_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e235656235692_)))
                                        (_hd235655235695_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e235656235692_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd235655235695_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd235655235695_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl235654235697_))
                                                (let ((_e235659235700_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl235654235697_))))
                                                  (let ((_tl235657235705_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e235659235700_)))
                                                        (_hd235658235703_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e235659235700_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl235657235705_))
                                                        (___kont243713243714_
                                                         _tl235651235689_
                                                         _hd235658235703_)
                                                        (___kont243715243716_))))
                                                (___kont243715243716_))
                                            (___kont243715243716_))
                                        (___kont243715243716_))))
                                (___kont243715243716_))))
                        (___kont243715243716_))))
                (___kont243715243716_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx235590_)
        (let* ((_g235592235605_
                (lambda (_g235593235602_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235593235602_))))
               (_g235591235638_
                (lambda (_g235593235608_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235593235608_))
                      (let ((_e235597235610_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235593235608_))))
                        (let ((_hd235596235613_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235597235610_)))
                              (_tl235595235615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235597235610_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235595235615_))
                              (let ((_e235600235618_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235595235615_))))
                                (let ((_hd235599235621_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235600235618_)))
                                      (_tl235598235623_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235600235618_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235598235623_))
                                      ((lambda (_L235626_)
                                         (let ((__tmp245126
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235626_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp245126)))
                                       _hd235599235621_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235592235605_ _g235593235608_)))))
                              (let ()
                                (declare (not safe))
                                (_g235592235605_ _g235593235608_)))))
                      (let ()
                        (declare (not safe))
                        (_g235592235605_ _g235593235608_))))))
          (declare (not safe))
          (_g235591235638_ _stx235590_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form234824_)
        (let* ((___stx243749243750_ _form234824_)
               (_g234829234986_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243749243750_)))))
          (let ((___kont243751243752_
                 (lambda (_L235510_ _L235511_ _L235512_) '#t))
                (___kont243757243758_
                 (lambda (_L235298_
                          _L235299_
                          _L235300_
                          _L235301_
                          _L235302_
                          _L235303_)
                   '#t))
                (___kont243763243764_
                 (lambda (_L235094_ _L235095_ _L235096_ _L235097_) '#t))
                (___kont243765243766_ (lambda () '#f)))
            (let* ((___match243890243891_
                    (lambda (_e234948234998_
                             _hd234947235001_
                             _tl234946235003_
                             _e234951235006_
                             _hd234950235009_
                             _tl234949235011_
                             _e234954235014_
                             _hd234953235017_
                             _tl234952235019_
                             _e234957235022_
                             _hd234956235025_
                             _tl234955235027_
                             _e234960235030_
                             _hd234959235033_
                             _tl234958235035_
                             _e234963235038_
                             _hd234962235041_
                             _tl234961235043_
                             _e234966235046_
                             _hd234965235049_
                             _tl234964235051_
                             _e234969235054_
                             _hd234968235057_
                             _tl234967235059_
                             _e234972235062_
                             _hd234971235065_
                             _tl234970235067_
                             _e234975235070_
                             _hd234974235073_
                             _tl234973235075_
                             _e234978235078_
                             _hd234977235081_
                             _tl234976235083_
                             _e234981235086_
                             _hd234980235089_
                             _tl234979235091_)
                      (let ((_L235094_ _hd234980235089_)
                            (_L235095_ _hd234971235065_)
                            (_L235096_ _hd234962235041_)
                            (_L235097_ _hd234947235001_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L235097_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L235096_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L235097_ _L235094_))
                                 (let ((__tmp245127
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L235095_
                                           _L235097_))))
                                   (declare (not safe))
                                   (not __tmp245127)))
                            (___kont243763243764_
                             _L235094_
                             _L235095_
                             _L235096_
                             _L235097_)
                            (___kont243765243766_)))))
                   (___match243862243863_
                    (lambda (_e234948234998_
                             _hd234947235001_
                             _tl234946235003_
                             _e234951235006_
                             _hd234950235009_
                             _tl234949235011_
                             _e234954235014_
                             _hd234953235017_
                             _tl234952235019_
                             _e234957235022_
                             _hd234956235025_
                             _tl234955235027_
                             _e234960235030_
                             _hd234959235033_
                             _tl234958235035_
                             _e234963235038_
                             _hd234962235041_
                             _tl234961235043_
                             _e234966235046_
                             _hd234965235049_
                             _tl234964235051_
                             _e234969235054_
                             _hd234968235057_
                             _tl234967235059_
                             _e234972235062_
                             _hd234971235065_
                             _tl234970235067_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234964235051_))
                          (let ((_e234975235070_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234964235051_))))
                            (let ((_tl234973235075_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234975235070_)))
                                  (_hd234974235073_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234975235070_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234974235073_))
                                  (let ((_e234978235078_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234974235073_))))
                                    (let ((_tl234976235083_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234978235078_)))
                                          (_hd234977235081_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234978235078_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd234977235081_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd234977235081_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234976235083_))
                                                  (let ((_e234981235086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234976235083_))))
                                                    (let ((_tl234979235091_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234981235086_)))
                                                          (_hd234980235089_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234981235086_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234979235091_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl234973235075_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234949235011_))
                          (___match243890243891_
                           _e234948234998_
                           _hd234947235001_
                           _tl234946235003_
                           _e234951235006_
                           _hd234950235009_
                           _tl234949235011_
                           _e234954235014_
                           _hd234953235017_
                           _tl234952235019_
                           _e234957235022_
                           _hd234956235025_
                           _tl234955235027_
                           _e234960235030_
                           _hd234959235033_
                           _tl234958235035_
                           _e234963235038_
                           _hd234962235041_
                           _tl234961235043_
                           _e234966235046_
                           _hd234965235049_
                           _tl234964235051_
                           _e234969235054_
                           _hd234968235057_
                           _tl234967235059_
                           _e234972235062_
                           _hd234971235065_
                           _tl234970235067_
                           _e234975235070_
                           _hd234974235073_
                           _tl234973235075_
                           _e234978235078_
                           _hd234977235081_
                           _tl234976235083_
                           _e234981235086_
                           _hd234980235089_
                           _tl234979235091_)
                          (___kont243765243766_))
                      (___kont243765243766_))
                  (___kont243765243766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243765243766_))
                                              (___kont243765243766_))
                                          (___kont243765243766_))))
                                  (___kont243765243766_))))
                          (___kont243765243766_))))
                   (___match243792243793_
                    (lambda (_e234884235138_
                             _hd234883235141_
                             _tl234882235143_
                             ___splice243759243760_
                             _target234885235146_
                             _tl234887235148_)
                      (letrec ((_loop234888235151_
                                (lambda (_hd234886235154_ _arg234892235156_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234886235154_))
                                      (let ((_e234889235159_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234886235154_))))
                                        (let ((_lp-tl234891235164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234889235159_)))
                                              (_lp-hd234890235162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234889235159_))))
                                          (let ((__tmp245142
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234890235162_
                                                         _arg234892235156_))))
                                            (declare (not safe))
                                            (_loop234888235151_
                                             _lp-tl234891235164_
                                             __tmp245142))))
                                      (let ((_arg234893235167_
                                             (reverse _arg234892235156_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234882235143_))
                                            (let ((_e234896235170_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234882235143_))))
                                              (let ((_tl234894235175_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234896235170_)))
                                                    (_hd234895235173_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234896235170_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234895235173_))
                                                    (let ((_e234899235178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234895235173_))))
                                                      (let ((_tl234897235183_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234899235178_)))
                    (_hd234898235181_
                     (let () (declare (not safe)) (##car _e234899235178_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234898235181_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234898235181_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234897235183_))
                            (let ((_e234902235186_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234897235183_))))
                              (let ((_tl234900235191_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234902235186_)))
                                    (_hd234901235189_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234902235186_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234901235189_))
                                    (let ((_e234905235194_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234901235189_))))
                                      (let ((_tl234903235199_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234905235194_)))
                                            (_hd234904235197_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234905235194_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234904235197_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234904235197_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234903235199_))
                                                    (let ((_e234908235202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234903235199_))))
                                                      (let ((_tl234906235207_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234908235202_)))
                    (_hd234907235205_
                     (let () (declare (not safe)) (##car _e234908235202_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234906235207_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234900235191_))
                        (let ((_e234911235210_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234900235191_))))
                          (let ((_tl234909235215_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234911235210_)))
                                (_hd234910235213_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234911235210_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234910235213_))
                                (let ((_e234914235218_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234910235213_))))
                                  (let ((_tl234912235223_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234914235218_)))
                                        (_hd234913235221_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234914235218_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234913235221_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234913235221_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234912235223_))
                                                (let ((_e234917235226_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234912235223_))))
                                                  (let ((_tl234915235231_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234917235226_)))
                                                        (_hd234916235229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234917235226_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234915235231_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl234909235215_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl234909235215_))
                              '1)
                        (let ((___splice243761243762_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234909235215_
                                  '1))))
                          (let ((_tl234920235236_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243761243762_ '1)))
                                (_target234918235234_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243761243762_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234920235236_))
                                (let ((_e234929235239_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234920235236_))))
                                  (let ((_tl234927235244_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234929235239_)))
                                        (_hd234928235242_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234929235239_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd234928235242_))
                                        (let ((_e234932235247_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd234928235242_))))
                                          (let ((_tl234930235252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e234932235247_)))
                                                (_hd234931235250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e234932235247_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd234931235250_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd234931235250_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl234930235252_))
                                                        (let ((_e234935235255_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl234930235252_))))
                  (let ((_tl234933235260_
                         (let () (declare (not safe)) (##cdr _e234935235255_)))
                        (_hd234934235258_
                         (let ()
                           (declare (not safe))
                           (##car _e234935235255_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl234933235260_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl234927235244_))
                            (letrec ((_loop234921235263_
                                      (lambda (_hd234919235266_
                                               _xarg234925235268_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd234919235266_))
                                            (let ((_e234922235271_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd234919235266_))))
                                              (let ((_lp-tl234924235276_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234922235271_)))
                                                    (_lp-hd234923235274_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234922235271_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd234923235274_))
                                                    (let ((_e234938235279_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd234923235274_))))
                                                      (let ((_tl234936235284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234938235279_)))
                    (_hd234937235282_
                     (let () (declare (not safe)) (##car _e234938235279_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234937235282_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd234937235282_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234936235284_))
                            (let ((_e234941235287_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234936235284_))))
                              (let ((_tl234939235292_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234941235287_)))
                                    (_hd234940235290_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234941235287_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl234939235292_))
                                    (let ((__tmp245141
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd234940235290_
                                                   _xarg234925235268_))))
                                      (declare (not safe))
                                      (_loop234921235263_
                                       _lp-tl234924235276_
                                       __tmp245141))
                                    (___match243862243863_
                                     _e234884235138_
                                     _hd234883235141_
                                     _tl234882235143_
                                     _e234896235170_
                                     _hd234895235173_
                                     _tl234894235175_
                                     _e234899235178_
                                     _hd234898235181_
                                     _tl234897235183_
                                     _e234902235186_
                                     _hd234901235189_
                                     _tl234900235191_
                                     _e234905235194_
                                     _hd234904235197_
                                     _tl234903235199_
                                     _e234908235202_
                                     _hd234907235205_
                                     _tl234906235207_
                                     _e234911235210_
                                     _hd234910235213_
                                     _tl234909235215_
                                     _e234914235218_
                                     _hd234913235221_
                                     _tl234912235223_
                                     _e234917235226_
                                     _hd234916235229_
                                     _tl234915235231_))))
                            (___match243862243863_
                             _e234884235138_
                             _hd234883235141_
                             _tl234882235143_
                             _e234896235170_
                             _hd234895235173_
                             _tl234894235175_
                             _e234899235178_
                             _hd234898235181_
                             _tl234897235183_
                             _e234902235186_
                             _hd234901235189_
                             _tl234900235191_
                             _e234905235194_
                             _hd234904235197_
                             _tl234903235199_
                             _e234908235202_
                             _hd234907235205_
                             _tl234906235207_
                             _e234911235210_
                             _hd234910235213_
                             _tl234909235215_
                             _e234914235218_
                             _hd234913235221_
                             _tl234912235223_
                             _e234917235226_
                             _hd234916235229_
                             _tl234915235231_))
                        (___match243862243863_
                         _e234884235138_
                         _hd234883235141_
                         _tl234882235143_
                         _e234896235170_
                         _hd234895235173_
                         _tl234894235175_
                         _e234899235178_
                         _hd234898235181_
                         _tl234897235183_
                         _e234902235186_
                         _hd234901235189_
                         _tl234900235191_
                         _e234905235194_
                         _hd234904235197_
                         _tl234903235199_
                         _e234908235202_
                         _hd234907235205_
                         _tl234906235207_
                         _e234911235210_
                         _hd234910235213_
                         _tl234909235215_
                         _e234914235218_
                         _hd234913235221_
                         _tl234912235223_
                         _e234917235226_
                         _hd234916235229_
                         _tl234915235231_))
                    (___match243862243863_
                     _e234884235138_
                     _hd234883235141_
                     _tl234882235143_
                     _e234896235170_
                     _hd234895235173_
                     _tl234894235175_
                     _e234899235178_
                     _hd234898235181_
                     _tl234897235183_
                     _e234902235186_
                     _hd234901235189_
                     _tl234900235191_
                     _e234905235194_
                     _hd234904235197_
                     _tl234903235199_
                     _e234908235202_
                     _hd234907235205_
                     _tl234906235207_
                     _e234911235210_
                     _hd234910235213_
                     _tl234909235215_
                     _e234914235218_
                     _hd234913235221_
                     _tl234912235223_
                     _e234917235226_
                     _hd234916235229_
                     _tl234915235231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243862243863_
                                                     _e234884235138_
                                                     _hd234883235141_
                                                     _tl234882235143_
                                                     _e234896235170_
                                                     _hd234895235173_
                                                     _tl234894235175_
                                                     _e234899235178_
                                                     _hd234898235181_
                                                     _tl234897235183_
                                                     _e234902235186_
                                                     _hd234901235189_
                                                     _tl234900235191_
                                                     _e234905235194_
                                                     _hd234904235197_
                                                     _tl234903235199_
                                                     _e234908235202_
                                                     _hd234907235205_
                                                     _tl234906235207_
                                                     _e234911235210_
                                                     _hd234910235213_
                                                     _tl234909235215_
                                                     _e234914235218_
                                                     _hd234913235221_
                                                     _tl234912235223_
                                                     _e234917235226_
                                                     _hd234916235229_
                                                     _tl234915235231_))))
                                            (let ((_xarg234926235295_
                                                   (reverse _xarg234925235268_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234894235175_))
                                                  (let ((_L235298_
                                                         _hd234934235258_)
                                                        (_L235299_
                                                         _xarg234926235295_)
                                                        (_L235300_
                                                         _hd234916235229_)
                                                        (_L235301_
                                                         _hd234907235205_)
                                                        (_L235302_
                                                         _tl234887235148_)
                                                        (_L235303_
                                                         _arg234893235167_))
                                                    (if (and (let ((__tmp245139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp245140
                                   (lambda (_g235346235349_ _g235347235351_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235346235349_
                                             _g235347235351_)))))
                              (declare (not safe))
                              (foldr1 __tmp245140 '() _L235303_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp245139))
                     (let () (declare (not safe)) (gx#identifier? _L235302_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L235301_ 'apply))
                     (fx= (length (let ((__tmp245137
                                         (lambda (_g235353235356_
                                                  _g235354235358_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g235353235356_
                                                   _g235354235358_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp245137 '() _L235303_)))
                          (length (let ((__tmp245138
                                         (lambda (_g235360235363_
                                                  _g235361235365_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g235360235363_
                                                   _g235361235365_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp245138 '() _L235299_))))
                     (let ((__tmp245135
                            (let ((__tmp245136
                                   (lambda (_g235367235370_ _g235368235372_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235367235370_
                                             _g235368235372_)))))
                              (declare (not safe))
                              (foldr1 __tmp245136 '() _L235303_)))
                           (__tmp245133
                            (let ((__tmp245134
                                   (lambda (_g235374235377_ _g235375235379_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g235374235377_
                                             _g235375235379_)))))
                              (declare (not safe))
                              (foldr1 __tmp245134 '() _L235299_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp245135 __tmp245133))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L235302_ _L235298_))
                     (let ((__tmp245128
                            (let ((__tmp245132
                                   (lambda (_g235381235383_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g235381235383_
                                        _L235300_))))
                                  (__tmp245129
                                   (let ((__tmp245131
                                          (lambda (_g235385235388_
                                                   _g235386235390_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g235385235388_
                                                    _g235386235390_))))
                                         (__tmp245130
                                          (let ()
                                            (declare (not safe))
                                            (cons _L235302_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp245131
                                             __tmp245130
                                             _L235303_))))
                              (declare (not safe))
                              (find __tmp245132 __tmp245129))))
                       (declare (not safe))
                       (not __tmp245128)))
                (___kont243757243758_
                 _L235298_
                 _L235299_
                 _L235300_
                 _L235301_
                 _L235302_
                 _L235303_)
                (___match243862243863_
                 _e234884235138_
                 _hd234883235141_
                 _tl234882235143_
                 _e234896235170_
                 _hd234895235173_
                 _tl234894235175_
                 _e234899235178_
                 _hd234898235181_
                 _tl234897235183_
                 _e234902235186_
                 _hd234901235189_
                 _tl234900235191_
                 _e234905235194_
                 _hd234904235197_
                 _tl234903235199_
                 _e234908235202_
                 _hd234907235205_
                 _tl234906235207_
                 _e234911235210_
                 _hd234910235213_
                 _tl234909235215_
                 _e234914235218_
                 _hd234913235221_
                 _tl234912235223_
                 _e234917235226_
                 _hd234916235229_
                 _tl234915235231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243862243863_
                                                   _e234884235138_
                                                   _hd234883235141_
                                                   _tl234882235143_
                                                   _e234896235170_
                                                   _hd234895235173_
                                                   _tl234894235175_
                                                   _e234899235178_
                                                   _hd234898235181_
                                                   _tl234897235183_
                                                   _e234902235186_
                                                   _hd234901235189_
                                                   _tl234900235191_
                                                   _e234905235194_
                                                   _hd234904235197_
                                                   _tl234903235199_
                                                   _e234908235202_
                                                   _hd234907235205_
                                                   _tl234906235207_
                                                   _e234911235210_
                                                   _hd234910235213_
                                                   _tl234909235215_
                                                   _e234914235218_
                                                   _hd234913235221_
                                                   _tl234912235223_
                                                   _e234917235226_
                                                   _hd234916235229_
                                                   _tl234915235231_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop234921235263_ _target234918235234_ '())))
                            (___match243862243863_
                             _e234884235138_
                             _hd234883235141_
                             _tl234882235143_
                             _e234896235170_
                             _hd234895235173_
                             _tl234894235175_
                             _e234899235178_
                             _hd234898235181_
                             _tl234897235183_
                             _e234902235186_
                             _hd234901235189_
                             _tl234900235191_
                             _e234905235194_
                             _hd234904235197_
                             _tl234903235199_
                             _e234908235202_
                             _hd234907235205_
                             _tl234906235207_
                             _e234911235210_
                             _hd234910235213_
                             _tl234909235215_
                             _e234914235218_
                             _hd234913235221_
                             _tl234912235223_
                             _e234917235226_
                             _hd234916235229_
                             _tl234915235231_))
                        (___match243862243863_
                         _e234884235138_
                         _hd234883235141_
                         _tl234882235143_
                         _e234896235170_
                         _hd234895235173_
                         _tl234894235175_
                         _e234899235178_
                         _hd234898235181_
                         _tl234897235183_
                         _e234902235186_
                         _hd234901235189_
                         _tl234900235191_
                         _e234905235194_
                         _hd234904235197_
                         _tl234903235199_
                         _e234908235202_
                         _hd234907235205_
                         _tl234906235207_
                         _e234911235210_
                         _hd234910235213_
                         _tl234909235215_
                         _e234914235218_
                         _hd234913235221_
                         _tl234912235223_
                         _e234917235226_
                         _hd234916235229_
                         _tl234915235231_))))
                (___match243862243863_
                 _e234884235138_
                 _hd234883235141_
                 _tl234882235143_
                 _e234896235170_
                 _hd234895235173_
                 _tl234894235175_
                 _e234899235178_
                 _hd234898235181_
                 _tl234897235183_
                 _e234902235186_
                 _hd234901235189_
                 _tl234900235191_
                 _e234905235194_
                 _hd234904235197_
                 _tl234903235199_
                 _e234908235202_
                 _hd234907235205_
                 _tl234906235207_
                 _e234911235210_
                 _hd234910235213_
                 _tl234909235215_
                 _e234914235218_
                 _hd234913235221_
                 _tl234912235223_
                 _e234917235226_
                 _hd234916235229_
                 _tl234915235231_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243862243863_
                                                     _e234884235138_
                                                     _hd234883235141_
                                                     _tl234882235143_
                                                     _e234896235170_
                                                     _hd234895235173_
                                                     _tl234894235175_
                                                     _e234899235178_
                                                     _hd234898235181_
                                                     _tl234897235183_
                                                     _e234902235186_
                                                     _hd234901235189_
                                                     _tl234900235191_
                                                     _e234905235194_
                                                     _hd234904235197_
                                                     _tl234903235199_
                                                     _e234908235202_
                                                     _hd234907235205_
                                                     _tl234906235207_
                                                     _e234911235210_
                                                     _hd234910235213_
                                                     _tl234909235215_
                                                     _e234914235218_
                                                     _hd234913235221_
                                                     _tl234912235223_
                                                     _e234917235226_
                                                     _hd234916235229_
                                                     _tl234915235231_))
                                                (___match243862243863_
                                                 _e234884235138_
                                                 _hd234883235141_
                                                 _tl234882235143_
                                                 _e234896235170_
                                                 _hd234895235173_
                                                 _tl234894235175_
                                                 _e234899235178_
                                                 _hd234898235181_
                                                 _tl234897235183_
                                                 _e234902235186_
                                                 _hd234901235189_
                                                 _tl234900235191_
                                                 _e234905235194_
                                                 _hd234904235197_
                                                 _tl234903235199_
                                                 _e234908235202_
                                                 _hd234907235205_
                                                 _tl234906235207_
                                                 _e234911235210_
                                                 _hd234910235213_
                                                 _tl234909235215_
                                                 _e234914235218_
                                                 _hd234913235221_
                                                 _tl234912235223_
                                                 _e234917235226_
                                                 _hd234916235229_
                                                 _tl234915235231_))))
                                        (___match243862243863_
                                         _e234884235138_
                                         _hd234883235141_
                                         _tl234882235143_
                                         _e234896235170_
                                         _hd234895235173_
                                         _tl234894235175_
                                         _e234899235178_
                                         _hd234898235181_
                                         _tl234897235183_
                                         _e234902235186_
                                         _hd234901235189_
                                         _tl234900235191_
                                         _e234905235194_
                                         _hd234904235197_
                                         _tl234903235199_
                                         _e234908235202_
                                         _hd234907235205_
                                         _tl234906235207_
                                         _e234911235210_
                                         _hd234910235213_
                                         _tl234909235215_
                                         _e234914235218_
                                         _hd234913235221_
                                         _tl234912235223_
                                         _e234917235226_
                                         _hd234916235229_
                                         _tl234915235231_))))
                                (___match243862243863_
                                 _e234884235138_
                                 _hd234883235141_
                                 _tl234882235143_
                                 _e234896235170_
                                 _hd234895235173_
                                 _tl234894235175_
                                 _e234899235178_
                                 _hd234898235181_
                                 _tl234897235183_
                                 _e234902235186_
                                 _hd234901235189_
                                 _tl234900235191_
                                 _e234905235194_
                                 _hd234904235197_
                                 _tl234903235199_
                                 _e234908235202_
                                 _hd234907235205_
                                 _tl234906235207_
                                 _e234911235210_
                                 _hd234910235213_
                                 _tl234909235215_
                                 _e234914235218_
                                 _hd234913235221_
                                 _tl234912235223_
                                 _e234917235226_
                                 _hd234916235229_
                                 _tl234915235231_))))
                        (___match243862243863_
                         _e234884235138_
                         _hd234883235141_
                         _tl234882235143_
                         _e234896235170_
                         _hd234895235173_
                         _tl234894235175_
                         _e234899235178_
                         _hd234898235181_
                         _tl234897235183_
                         _e234902235186_
                         _hd234901235189_
                         _tl234900235191_
                         _e234905235194_
                         _hd234904235197_
                         _tl234903235199_
                         _e234908235202_
                         _hd234907235205_
                         _tl234906235207_
                         _e234911235210_
                         _hd234910235213_
                         _tl234909235215_
                         _e234914235218_
                         _hd234913235221_
                         _tl234912235223_
                         _e234917235226_
                         _hd234916235229_
                         _tl234915235231_))
                    (___match243862243863_
                     _e234884235138_
                     _hd234883235141_
                     _tl234882235143_
                     _e234896235170_
                     _hd234895235173_
                     _tl234894235175_
                     _e234899235178_
                     _hd234898235181_
                     _tl234897235183_
                     _e234902235186_
                     _hd234901235189_
                     _tl234900235191_
                     _e234905235194_
                     _hd234904235197_
                     _tl234903235199_
                     _e234908235202_
                     _hd234907235205_
                     _tl234906235207_
                     _e234911235210_
                     _hd234910235213_
                     _tl234909235215_
                     _e234914235218_
                     _hd234913235221_
                     _tl234912235223_
                     _e234917235226_
                     _hd234916235229_
                     _tl234915235231_))
                (___kont243765243766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243765243766_))
                                            (___kont243765243766_))
                                        (___kont243765243766_))))
                                (___kont243765243766_))))
                        (___kont243765243766_))
                    (___kont243765243766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243765243766_))
                                                (___kont243765243766_))
                                            (___kont243765243766_))))
                                    (___kont243765243766_))))
                            (___kont243765243766_))
                        (___kont243765243766_))
                    (___kont243765243766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243765243766_))))
                                            (___kont243765243766_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234888235151_ _target234885235146_ '())))))
                   (___match243780243781_
                    (lambda (_e234836235398_
                             _hd234835235401_
                             _tl234834235403_
                             ___splice243753243754_
                             _target234837235406_
                             _tl234839235408_)
                      (letrec ((_loop234840235411_
                                (lambda (_hd234838235414_ _arg234844235416_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234838235414_))
                                      (let ((_e234841235419_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234838235414_))))
                                        (let ((_lp-tl234843235424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234841235419_)))
                                              (_lp-hd234842235422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234841235419_))))
                                          (let ((__tmp245156
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234842235422_
                                                         _arg234844235416_))))
                                            (declare (not safe))
                                            (_loop234840235411_
                                             _lp-tl234843235424_
                                             __tmp245156))))
                                      (let ((_arg234845235427_
                                             (reverse _arg234844235416_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234834235403_))
                                            (let ((_e234848235430_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234834235403_))))
                                              (let ((_tl234846235435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234848235430_)))
                                                    (_hd234847235433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234848235430_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234847235433_))
                                                    (let ((_e234851235438_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234847235433_))))
                                                      (let ((_tl234849235443_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234851235438_)))
                    (_hd234850235441_
                     (let () (declare (not safe)) (##car _e234851235438_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234850235441_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234850235441_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234849235443_))
                            (let ((_e234854235446_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234849235443_))))
                              (let ((_tl234852235451_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234854235446_)))
                                    (_hd234853235449_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234854235446_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234853235449_))
                                    (let ((_e234857235454_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234853235449_))))
                                      (let ((_tl234855235459_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234857235454_)))
                                            (_hd234856235457_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234857235454_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234856235457_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234856235457_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234855235459_))
                                                    (let ((_e234860235462_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234855235459_))))
                                                      (let ((_tl234858235467_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234860235462_)))
                    (_hd234859235465_
                     (let () (declare (not safe)) (##car _e234860235462_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234858235467_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl234852235451_))
                        (let ((___splice243755243756_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234852235451_
                                  '0))))
                          (let ((_tl234863235472_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243755243756_ '1)))
                                (_target234861235470_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243755243756_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234863235472_))
                                (letrec ((_loop234864235475_
                                          (lambda (_hd234862235478_
                                                   _xarg234868235480_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd234862235478_))
                                                (let ((_e234865235483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd234862235478_))))
                                                  (let ((_lp-tl234867235488_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234865235483_)))
                                                        (_lp-hd234866235486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234865235483_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd234866235486_))
                                                        (let ((_e234872235491_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd234866235486_))))
                  (let ((_tl234870235496_
                         (let () (declare (not safe)) (##cdr _e234872235491_)))
                        (_hd234871235494_
                         (let ()
                           (declare (not safe))
                           (##car _e234872235491_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234871235494_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd234871235494_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234870235496_))
                                (let ((_e234875235499_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234870235496_))))
                                  (let ((_tl234873235504_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234875235499_)))
                                        (_hd234874235502_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234875235499_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234873235504_))
                                        (let ((__tmp245155
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd234874235502_
                                                       _xarg234868235480_))))
                                          (declare (not safe))
                                          (_loop234864235475_
                                           _lp-tl234867235488_
                                           __tmp245155))
                                        (___match243792243793_
                                         _e234836235398_
                                         _hd234835235401_
                                         _tl234834235403_
                                         ___splice243753243754_
                                         _target234837235406_
                                         _tl234839235408_))))
                                (___match243792243793_
                                 _e234836235398_
                                 _hd234835235401_
                                 _tl234834235403_
                                 ___splice243753243754_
                                 _target234837235406_
                                 _tl234839235408_))
                            (___match243792243793_
                             _e234836235398_
                             _hd234835235401_
                             _tl234834235403_
                             ___splice243753243754_
                             _target234837235406_
                             _tl234839235408_))
                        (___match243792243793_
                         _e234836235398_
                         _hd234835235401_
                         _tl234834235403_
                         ___splice243753243754_
                         _target234837235406_
                         _tl234839235408_))))
                (___match243792243793_
                 _e234836235398_
                 _hd234835235401_
                 _tl234834235403_
                 ___splice243753243754_
                 _target234837235406_
                 _tl234839235408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg234869235507_
                                                       (reverse _xarg234868235480_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234846235435_))
                                                      (let ((_L235510_
                                                             _xarg234869235507_)
                                                            (_L235511_
                                                             _hd234859235465_)
                                                            (_L235512_
                                                             _arg234845235427_))
                                                        (if (and (let ((__tmp245153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp245154
                                       (lambda (_g235540235543_
                                                _g235541235545_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235540235543_
                                                 _g235541235545_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245154 '() _L235512_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp245153))
                         (fx= (length (let ((__tmp245151
                                             (lambda (_g235547235550_
                                                      _g235548235552_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g235547235550_
                                                       _g235548235552_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp245151 '() _L235512_)))
                              (length (let ((__tmp245152
                                             (lambda (_g235554235557_
                                                      _g235555235559_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g235554235557_
                                                       _g235555235559_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp245152 '() _L235510_))))
                         (let ((__tmp245149
                                (let ((__tmp245150
                                       (lambda (_g235561235564_
                                                _g235562235566_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235561235564_
                                                 _g235562235566_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245150 '() _L235512_)))
                               (__tmp245147
                                (let ((__tmp245148
                                       (lambda (_g235568235571_
                                                _g235569235573_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g235568235571_
                                                 _g235569235573_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp245148 '() _L235510_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp245149
                                    __tmp245147))
                         (let ((__tmp245143
                                (let ((__tmp245146
                                       (lambda (_g235575235577_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g235575235577_
                                            _L235511_))))
                                      (__tmp245144
                                       (let ((__tmp245145
                                              (lambda (_g235579235582_
                                                       _g235580235584_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g235579235582_
                                                        _g235580235584_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp245145 '() _L235512_))))
                                  (declare (not safe))
                                  (find __tmp245146 __tmp245144))))
                           (declare (not safe))
                           (not __tmp245143)))
                    (___kont243751243752_ _L235510_ _L235511_ _L235512_)
                    (___match243792243793_
                     _e234836235398_
                     _hd234835235401_
                     _tl234834235403_
                     ___splice243753243754_
                     _target234837235406_
                     _tl234839235408_)))
              (___match243792243793_
               _e234836235398_
               _hd234835235401_
               _tl234834235403_
               ___splice243753243754_
               _target234837235406_
               _tl234839235408_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop234864235475_
                                     _target234861235470_
                                     '())))
                                (___match243792243793_
                                 _e234836235398_
                                 _hd234835235401_
                                 _tl234834235403_
                                 ___splice243753243754_
                                 _target234837235406_
                                 _tl234839235408_))))
                        (___match243792243793_
                         _e234836235398_
                         _hd234835235401_
                         _tl234834235403_
                         ___splice243753243754_
                         _target234837235406_
                         _tl234839235408_))
                    (___match243792243793_
                     _e234836235398_
                     _hd234835235401_
                     _tl234834235403_
                     ___splice243753243754_
                     _target234837235406_
                     _tl234839235408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243792243793_
                                                     _e234836235398_
                                                     _hd234835235401_
                                                     _tl234834235403_
                                                     ___splice243753243754_
                                                     _target234837235406_
                                                     _tl234839235408_))
                                                (___match243792243793_
                                                 _e234836235398_
                                                 _hd234835235401_
                                                 _tl234834235403_
                                                 ___splice243753243754_
                                                 _target234837235406_
                                                 _tl234839235408_))
                                            (___match243792243793_
                                             _e234836235398_
                                             _hd234835235401_
                                             _tl234834235403_
                                             ___splice243753243754_
                                             _target234837235406_
                                             _tl234839235408_))))
                                    (___match243792243793_
                                     _e234836235398_
                                     _hd234835235401_
                                     _tl234834235403_
                                     ___splice243753243754_
                                     _target234837235406_
                                     _tl234839235408_))))
                            (___match243792243793_
                             _e234836235398_
                             _hd234835235401_
                             _tl234834235403_
                             ___splice243753243754_
                             _target234837235406_
                             _tl234839235408_))
                        (___match243792243793_
                         _e234836235398_
                         _hd234835235401_
                         _tl234834235403_
                         ___splice243753243754_
                         _target234837235406_
                         _tl234839235408_))
                    (___match243792243793_
                     _e234836235398_
                     _hd234835235401_
                     _tl234834235403_
                     ___splice243753243754_
                     _target234837235406_
                     _tl234839235408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243792243793_
                                                     _e234836235398_
                                                     _hd234835235401_
                                                     _tl234834235403_
                                                     ___splice243753243754_
                                                     _target234837235406_
                                                     _tl234839235408_))))
                                            (___match243792243793_
                                             _e234836235398_
                                             _hd234835235401_
                                             _tl234834235403_
                                             ___splice243753243754_
                                             _target234837235406_
                                             _tl234839235408_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234840235411_ _target234837235406_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243749243750_))
                  (let ((_e234836235398_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243749243750_))))
                    (let ((_tl234834235403_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234836235398_)))
                          (_hd234835235401_
                           (let ()
                             (declare (not safe))
                             (##car _e234836235398_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd234835235401_))
                          (let ((___splice243753243754_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd234835235401_
                                    '0))))
                            (let ((_tl234839235408_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243753243754_ '1)))
                                  (_target234837235406_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243753243754_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234839235408_))
                                  (___match243780243781_
                                   _e234836235398_
                                   _hd234835235401_
                                   _tl234834235403_
                                   ___splice243753243754_
                                   _target234837235406_
                                   _tl234839235408_)
                                  (___match243792243793_
                                   _e234836235398_
                                   _hd234835235401_
                                   _tl234834235403_
                                   ___splice243753243754_
                                   _target234837235406_
                                   _tl234839235408_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234834235403_))
                              (let ((_e234951235006_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234834235403_))))
                                (let ((_tl234949235011_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234951235006_)))
                                      (_hd234950235009_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234951235006_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234950235009_))
                                      (let ((_e234954235014_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234950235009_))))
                                        (let ((_tl234952235019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234954235014_)))
                                              (_hd234953235017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234954235014_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd234953235017_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd234953235017_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234952235019_))
                                                      (let ((_e234957235022_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234952235019_))))
                (let ((_tl234955235027_
                       (let () (declare (not safe)) (##cdr _e234957235022_)))
                      (_hd234956235025_
                       (let () (declare (not safe)) (##car _e234957235022_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234956235025_))
                      (let ((_e234960235030_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234956235025_))))
                        (let ((_tl234958235035_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234960235030_)))
                              (_hd234959235033_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234960235030_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234959235033_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234959235033_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234958235035_))
                                      (let ((_e234963235038_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234958235035_))))
                                        (let ((_tl234961235043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234963235038_)))
                                              (_hd234962235041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234963235038_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234961235043_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234955235027_))
                                                  (let ((_e234966235046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234955235027_))))
                                                    (let ((_tl234964235051_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234966235046_)))
                                                          (_hd234965235049_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234966235046_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234965235049_))
                                                          (let ((_e234969235054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234965235049_))))
                    (let ((_tl234967235059_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234969235054_)))
                          (_hd234968235057_
                           (let ()
                             (declare (not safe))
                             (##car _e234969235054_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234968235057_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234968235057_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234967235059_))
                                  (let ((_e234972235062_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234967235059_))))
                                    (let ((_tl234970235067_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234972235062_)))
                                          (_hd234971235065_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234972235062_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234970235067_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234964235051_))
                                              (let ((_e234975235070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234964235051_))))
                                                (let ((_tl234973235075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234975235070_)))
                                                      (_hd234974235073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234975235070_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234974235073_))
                                                      (let ((_e234978235078_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234974235073_))))
                (let ((_tl234976235083_
                       (let () (declare (not safe)) (##cdr _e234978235078_)))
                      (_hd234977235081_
                       (let () (declare (not safe)) (##car _e234978235078_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd234977235081_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234977235081_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234976235083_))
                              (let ((_e234981235086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234976235083_))))
                                (let ((_tl234979235091_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234981235086_)))
                                      (_hd234980235089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234981235086_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234979235091_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234973235075_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234949235011_))
                                              (___match243890243891_
                                               _e234836235398_
                                               _hd234835235401_
                                               _tl234834235403_
                                               _e234951235006_
                                               _hd234950235009_
                                               _tl234949235011_
                                               _e234954235014_
                                               _hd234953235017_
                                               _tl234952235019_
                                               _e234957235022_
                                               _hd234956235025_
                                               _tl234955235027_
                                               _e234960235030_
                                               _hd234959235033_
                                               _tl234958235035_
                                               _e234963235038_
                                               _hd234962235041_
                                               _tl234961235043_
                                               _e234966235046_
                                               _hd234965235049_
                                               _tl234964235051_
                                               _e234969235054_
                                               _hd234968235057_
                                               _tl234967235059_
                                               _e234972235062_
                                               _hd234971235065_
                                               _tl234970235067_
                                               _e234975235070_
                                               _hd234974235073_
                                               _tl234973235075_
                                               _e234978235078_
                                               _hd234977235081_
                                               _tl234976235083_
                                               _e234981235086_
                                               _hd234980235089_
                                               _tl234979235091_)
                                              (___kont243765243766_))
                                          (___kont243765243766_))
                                      (___kont243765243766_))))
                              (___kont243765243766_))
                          (___kont243765243766_))
                      (___kont243765243766_))))
              (___kont243765243766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont243765243766_))
                                          (___kont243765243766_))))
                                  (___kont243765243766_))
                              (___kont243765243766_))
                          (___kont243765243766_))))
                  (___kont243765243766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243765243766_))
                                              (___kont243765243766_))))
                                      (___kont243765243766_))
                                  (___kont243765243766_))
                              (___kont243765243766_))))
                      (___kont243765243766_))))
              (___kont243765243766_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243765243766_))
                                              (___kont243765243766_))))
                                      (___kont243765243766_))))
                              (___kont243765243766_)))))
                  (___kont243765243766_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form234292_)
        (let* ((___stx243893243894_ _form234292_)
               (_g234296234420_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243893243894_)))))
          (let ((___kont243895243896_
                 (lambda (_L234790_ _L234791_ _L234792_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234791_))))
                (___kont243901243902_
                 (lambda (_L234638_ _L234639_ _L234640_ _L234641_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234638_))))
                (___kont243905243906_
                 (lambda (_L234505_ _L234506_ _L234507_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234505_)))))
            (let* ((___match244002244003_
                    (lambda (_e234388234425_
                             _hd234387234428_
                             _tl234386234430_
                             _e234391234433_
                             _hd234390234436_
                             _tl234389234438_
                             _e234394234441_
                             _hd234393234444_
                             _tl234392234446_
                             _e234397234449_
                             _hd234396234452_
                             _tl234395234454_
                             _e234400234457_
                             _hd234399234460_
                             _tl234398234462_
                             _e234403234465_
                             _hd234402234468_
                             _tl234401234470_
                             _e234406234473_
                             _hd234405234476_
                             _tl234404234478_
                             _e234409234481_
                             _hd234408234484_
                             _tl234407234486_
                             _e234412234489_
                             _hd234411234492_
                             _tl234410234494_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234404234478_))
                          (let ((_e234415234497_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234404234478_))))
                            (let ((_tl234413234502_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234415234497_)))
                                  (_hd234414234500_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234415234497_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234413234502_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234389234438_))
                                      (___kont243905243906_
                                       _hd234411234492_
                                       _hd234402234468_
                                       _hd234387234428_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234296234420_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g234296234420_)))))
                          (let () (declare (not safe)) (_g234296234420_)))))
                   (___match243932243933_
                    (lambda (_e234349234542_
                             _hd234348234545_
                             _tl234347234547_
                             ___splice243903243904_
                             _target234350234550_
                             _tl234352234552_)
                      (letrec ((_loop234353234555_
                                (lambda (_hd234351234558_ _arg234357234560_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234351234558_))
                                      (let ((_e234354234563_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234351234558_))))
                                        (let ((_lp-tl234356234568_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234354234563_)))
                                              (_lp-hd234355234566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234354234563_))))
                                          (let ((__tmp245157
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234355234566_
                                                         _arg234357234560_))))
                                            (declare (not safe))
                                            (_loop234353234555_
                                             _lp-tl234356234568_
                                             __tmp245157))))
                                      (let ((_arg234358234571_
                                             (reverse _arg234357234560_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234347234547_))
                                            (let ((_e234361234574_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234347234547_))))
                                              (let ((_tl234359234579_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234361234574_)))
                                                    (_hd234360234577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234361234574_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234360234577_))
                                                    (let ((_e234364234582_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234360234577_))))
                                                      (let ((_tl234362234587_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234364234582_)))
                    (_hd234363234585_
                     (let () (declare (not safe)) (##car _e234364234582_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234363234585_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234363234585_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234362234587_))
                            (let ((_e234367234590_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234362234587_))))
                              (let ((_tl234365234595_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234367234590_)))
                                    (_hd234366234593_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234367234590_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234366234593_))
                                    (let ((_e234370234598_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234366234593_))))
                                      (let ((_tl234368234603_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234370234598_)))
                                            (_hd234369234601_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234370234598_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234369234601_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234369234601_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234368234603_))
                                                    (let ((_e234373234606_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234368234603_))))
                                                      (let ((_tl234371234611_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234373234606_)))
                    (_hd234372234609_
                     (let () (declare (not safe)) (##car _e234373234606_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234371234611_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234365234595_))
                        (let ((_e234376234614_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234365234595_))))
                          (let ((_tl234374234619_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234376234614_)))
                                (_hd234375234617_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234376234614_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234375234617_))
                                (let ((_e234379234622_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234375234617_))))
                                  (let ((_tl234377234627_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234379234622_)))
                                        (_hd234378234625_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234379234622_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234378234625_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234378234625_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234377234627_))
                                                (let ((_e234382234630_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234377234627_))))
                                                  (let ((_tl234380234635_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234382234630_)))
                                                        (_hd234381234633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234382234630_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234380234635_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl234359234579_))
                                                            (___kont243901243902_
                                                             _hd234381234633_
                                                             _hd234372234609_
                                                             _tl234352234552_
                                                             _arg234358234571_)
                                                            (___match244002244003_
                                                             _e234349234542_
                                                             _hd234348234545_
                                                             _tl234347234547_
                                                             _e234361234574_
                                                             _hd234360234577_
                                                             _tl234359234579_
                                                             _e234364234582_
                                                             _hd234363234585_
                                                             _tl234362234587_
                                                             _e234367234590_
                                                             _hd234366234593_
                                                             _tl234365234595_
                                                             _e234370234598_
                                                             _hd234369234601_
                                                             _tl234368234603_
                                                             _e234373234606_
                                                             _hd234372234609_
                                                             _tl234371234611_
                                                             _e234376234614_
                                                             _hd234375234617_
                                                             _tl234374234619_
                                                             _e234379234622_
                                                             _hd234378234625_
                                                             _tl234377234627_
                                                             _e234382234630_
                                                             _hd234381234633_
                                                             _tl234380234635_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g234296234420_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g234296234420_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g234296234420_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g234296234420_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234296234420_)))))
                        (let () (declare (not safe)) (_g234296234420_)))
                    (let () (declare (not safe)) (_g234296234420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g234296234420_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g234296234420_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g234296234420_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g234296234420_)))))
                            (let () (declare (not safe)) (_g234296234420_)))
                        (let () (declare (not safe)) (_g234296234420_)))
                    (let () (declare (not safe)) (_g234296234420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g234296234420_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g234296234420_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop234353234555_ _target234350234550_ '())))))
                   (___match243920243921_
                    (lambda (_e234303234678_
                             _hd234302234681_
                             _tl234301234683_
                             ___splice243897243898_
                             _target234304234686_
                             _tl234306234688_)
                      (letrec ((_loop234307234691_
                                (lambda (_hd234305234694_ _arg234311234696_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234305234694_))
                                      (let ((_e234308234699_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234305234694_))))
                                        (let ((_lp-tl234310234704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234308234699_)))
                                              (_lp-hd234309234702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234308234699_))))
                                          (let ((__tmp245159
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234309234702_
                                                         _arg234311234696_))))
                                            (declare (not safe))
                                            (_loop234307234691_
                                             _lp-tl234310234704_
                                             __tmp245159))))
                                      (let ((_arg234312234707_
                                             (reverse _arg234311234696_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234301234683_))
                                            (let ((_e234315234710_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234301234683_))))
                                              (let ((_tl234313234715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234315234710_)))
                                                    (_hd234314234713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234315234710_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234314234713_))
                                                    (let ((_e234318234718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234314234713_))))
                                                      (let ((_tl234316234723_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234318234718_)))
                    (_hd234317234721_
                     (let () (declare (not safe)) (##car _e234318234718_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234317234721_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234317234721_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234316234723_))
                            (let ((_e234321234726_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234316234723_))))
                              (let ((_tl234319234731_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234321234726_)))
                                    (_hd234320234729_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234321234726_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234320234729_))
                                    (let ((_e234324234734_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234320234729_))))
                                      (let ((_tl234322234739_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234324234734_)))
                                            (_hd234323234737_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234324234734_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234323234737_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234323234737_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234322234739_))
                                                    (let ((_e234327234742_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234322234739_))))
                                                      (let ((_tl234325234747_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234327234742_)))
                    (_hd234326234745_
                     (let () (declare (not safe)) (##car _e234327234742_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234325234747_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl234319234731_))
                        (let ((___splice243899243900_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234319234731_
                                  '0))))
                          (let ((_tl234330234752_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243899243900_ '1)))
                                (_target234328234750_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243899243900_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234330234752_))
                                (letrec ((_loop234331234755_
                                          (lambda (_hd234329234758_
                                                   _xarg234335234760_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd234329234758_))
                                                (let ((_e234332234763_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd234329234758_))))
                                                  (let ((_lp-tl234334234768_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234332234763_)))
                                                        (_lp-hd234333234766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234332234763_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd234333234766_))
                                                        (let ((_e234339234771_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd234333234766_))))
                  (let ((_tl234337234776_
                         (let () (declare (not safe)) (##cdr _e234339234771_)))
                        (_hd234338234774_
                         (let ()
                           (declare (not safe))
                           (##car _e234339234771_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234338234774_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd234338234774_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234337234776_))
                                (let ((_e234342234779_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234337234776_))))
                                  (let ((_tl234340234784_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234342234779_)))
                                        (_hd234341234782_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234342234779_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234340234784_))
                                        (let ((__tmp245158
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd234341234782_
                                                       _xarg234335234760_))))
                                          (declare (not safe))
                                          (_loop234331234755_
                                           _lp-tl234334234768_
                                           __tmp245158))
                                        (___match243932243933_
                                         _e234303234678_
                                         _hd234302234681_
                                         _tl234301234683_
                                         ___splice243897243898_
                                         _target234304234686_
                                         _tl234306234688_))))
                                (___match243932243933_
                                 _e234303234678_
                                 _hd234302234681_
                                 _tl234301234683_
                                 ___splice243897243898_
                                 _target234304234686_
                                 _tl234306234688_))
                            (___match243932243933_
                             _e234303234678_
                             _hd234302234681_
                             _tl234301234683_
                             ___splice243897243898_
                             _target234304234686_
                             _tl234306234688_))
                        (___match243932243933_
                         _e234303234678_
                         _hd234302234681_
                         _tl234301234683_
                         ___splice243897243898_
                         _target234304234686_
                         _tl234306234688_))))
                (___match243932243933_
                 _e234303234678_
                 _hd234302234681_
                 _tl234301234683_
                 ___splice243897243898_
                 _target234304234686_
                 _tl234306234688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg234336234787_
                                                       (reverse _xarg234335234760_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234313234715_))
                                                      (___kont243895243896_
                                                       _xarg234336234787_
                                                       _hd234326234745_
                                                       _arg234312234707_)
                                                      (___match243932243933_
                                                       _e234303234678_
                                                       _hd234302234681_
                                                       _tl234301234683_
                                                       ___splice243897243898_
                                                       _target234304234686_
                                                       _tl234306234688_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop234331234755_
                                     _target234328234750_
                                     '())))
                                (___match243932243933_
                                 _e234303234678_
                                 _hd234302234681_
                                 _tl234301234683_
                                 ___splice243897243898_
                                 _target234304234686_
                                 _tl234306234688_))))
                        (___match243932243933_
                         _e234303234678_
                         _hd234302234681_
                         _tl234301234683_
                         ___splice243897243898_
                         _target234304234686_
                         _tl234306234688_))
                    (___match243932243933_
                     _e234303234678_
                     _hd234302234681_
                     _tl234301234683_
                     ___splice243897243898_
                     _target234304234686_
                     _tl234306234688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243932243933_
                                                     _e234303234678_
                                                     _hd234302234681_
                                                     _tl234301234683_
                                                     ___splice243897243898_
                                                     _target234304234686_
                                                     _tl234306234688_))
                                                (___match243932243933_
                                                 _e234303234678_
                                                 _hd234302234681_
                                                 _tl234301234683_
                                                 ___splice243897243898_
                                                 _target234304234686_
                                                 _tl234306234688_))
                                            (___match243932243933_
                                             _e234303234678_
                                             _hd234302234681_
                                             _tl234301234683_
                                             ___splice243897243898_
                                             _target234304234686_
                                             _tl234306234688_))))
                                    (___match243932243933_
                                     _e234303234678_
                                     _hd234302234681_
                                     _tl234301234683_
                                     ___splice243897243898_
                                     _target234304234686_
                                     _tl234306234688_))))
                            (___match243932243933_
                             _e234303234678_
                             _hd234302234681_
                             _tl234301234683_
                             ___splice243897243898_
                             _target234304234686_
                             _tl234306234688_))
                        (___match243932243933_
                         _e234303234678_
                         _hd234302234681_
                         _tl234301234683_
                         ___splice243897243898_
                         _target234304234686_
                         _tl234306234688_))
                    (___match243932243933_
                     _e234303234678_
                     _hd234302234681_
                     _tl234301234683_
                     ___splice243897243898_
                     _target234304234686_
                     _tl234306234688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243932243933_
                                                     _e234303234678_
                                                     _hd234302234681_
                                                     _tl234301234683_
                                                     ___splice243897243898_
                                                     _target234304234686_
                                                     _tl234306234688_))))
                                            (___match243932243933_
                                             _e234303234678_
                                             _hd234302234681_
                                             _tl234301234683_
                                             ___splice243897243898_
                                             _target234304234686_
                                             _tl234306234688_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234307234691_ _target234304234686_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243893243894_))
                  (let ((_e234303234678_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243893243894_))))
                    (let ((_tl234301234683_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234303234678_)))
                          (_hd234302234681_
                           (let ()
                             (declare (not safe))
                             (##car _e234303234678_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd234302234681_))
                          (let ((___splice243897243898_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd234302234681_
                                    '0))))
                            (let ((_tl234306234688_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243897243898_ '1)))
                                  (_target234304234686_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243897243898_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234306234688_))
                                  (___match243920243921_
                                   _e234303234678_
                                   _hd234302234681_
                                   _tl234301234683_
                                   ___splice243897243898_
                                   _target234304234686_
                                   _tl234306234688_)
                                  (___match243932243933_
                                   _e234303234678_
                                   _hd234302234681_
                                   _tl234301234683_
                                   ___splice243897243898_
                                   _target234304234686_
                                   _tl234306234688_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234301234683_))
                              (let ((_e234391234433_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234301234683_))))
                                (let ((_tl234389234438_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234391234433_)))
                                      (_hd234390234436_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234391234433_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234390234436_))
                                      (let ((_e234394234441_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234390234436_))))
                                        (let ((_tl234392234446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234394234441_)))
                                              (_hd234393234444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234394234441_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd234393234444_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd234393234444_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234392234446_))
                                                      (let ((_e234397234449_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234392234446_))))
                (let ((_tl234395234454_
                       (let () (declare (not safe)) (##cdr _e234397234449_)))
                      (_hd234396234452_
                       (let () (declare (not safe)) (##car _e234397234449_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234396234452_))
                      (let ((_e234400234457_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234396234452_))))
                        (let ((_tl234398234462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234400234457_)))
                              (_hd234399234460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234400234457_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234399234460_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234399234460_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234398234462_))
                                      (let ((_e234403234465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234398234462_))))
                                        (let ((_tl234401234470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234403234465_)))
                                              (_hd234402234468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234403234465_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234401234470_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234395234454_))
                                                  (let ((_e234406234473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234395234454_))))
                                                    (let ((_tl234404234478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234406234473_)))
                                                          (_hd234405234476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234406234473_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234405234476_))
                                                          (let ((_e234409234481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234405234476_))))
                    (let ((_tl234407234486_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234409234481_)))
                          (_hd234408234484_
                           (let ()
                             (declare (not safe))
                             (##car _e234409234481_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234408234484_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234408234484_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234407234486_))
                                  (let ((_e234412234489_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234407234486_))))
                                    (let ((_tl234410234494_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234412234489_)))
                                          (_hd234411234492_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234412234489_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234410234494_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234404234478_))
                                              (let ((_e234415234497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234404234478_))))
                                                (let ((_tl234413234502_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234415234497_)))
                                                      (_hd234414234500_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234415234497_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234413234502_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234389234438_))
                                                          (___kont243905243906_
                                                           _hd234411234492_
                                                           _hd234402234468_
                                                           _hd234302234681_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g234296234420_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234296234420_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234296234420_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g234296234420_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234296234420_)))
                              (let () (declare (not safe)) (_g234296234420_)))
                          (let () (declare (not safe)) (_g234296234420_)))))
                  (let () (declare (not safe)) (_g234296234420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234296234420_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g234296234420_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234296234420_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g234296234420_)))
                              (let ()
                                (declare (not safe))
                                (_g234296234420_)))))
                      (let () (declare (not safe)) (_g234296234420_)))))
              (let () (declare (not safe)) (_g234296234420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234296234420_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g234296234420_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234296234420_)))))
                              (let ()
                                (declare (not safe))
                                (_g234296234420_))))))
                  (let () (declare (not safe)) (_g234296234420_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form234096_)
        (let* ((_g234098234112_
                (lambda (_g234099234109_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234099234109_))))
               (_g234097234289_
                (lambda (_g234099234115_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234099234115_))
                      (let ((_e234104234117_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234099234115_))))
                        (let ((_hd234103234120_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234104234117_)))
                              (_tl234102234122_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234104234117_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234102234122_))
                              (let ((_e234107234125_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234102234122_))))
                                (let ((_hd234106234128_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234107234125_)))
                                      (_tl234105234130_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234107234125_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234105234130_))
                                      ((lambda (_L234133_ _L234134_)
                                         (let* ((___stx244015244016_ _L234134_)
                                                (_g234149234177_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx244015244016_)))))
                                           (let ((___kont244017244018_
                                                  (lambda (_L234268_)
                                                    (length (let ((__tmp245160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g234278234281_ _g234279234283_)
                             (let ()
                               (declare (not safe))
                               (cons _g234278234281_ _g234279234283_)))))
                      (declare (not safe))
                      (foldr1 __tmp245160 '() _L234268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont244021244022_
                                                  (lambda (_L234219_ _L234220_)
                                                    (let ((__tmp245161
                                                           (length (let ((__tmp245162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g234231234234_ _g234232234236_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g234231234234_
                                            _g234232234236_)))))
                             (declare (not safe))
                             (foldr1 __tmp245162 '() _L234220_)))))
              (declare (not safe))
              (cons __tmp245161 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont244025244026_
                                                  (lambda (_L234182_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match244040244041_
                                                     (lambda (___splice244023244024_
                                                              _target234163234195_
                                                              _tl234165234197_)
                                                       (letrec ((_loop234166234200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd234164234203_ _arg234170234205_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd234164234203_))
                               (let ((_e234167234208_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd234164234203_))))
                                 (let ((_lp-tl234169234213_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e234167234208_)))
                                       (_lp-hd234168234211_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e234167234208_))))
                                   (let ((__tmp245163
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd234168234211_
                                                  _arg234170234205_))))
                                     (declare (not safe))
                                     (_loop234166234200_
                                      _lp-tl234169234213_
                                      __tmp245163))))
                               (let ((_arg234171234216_
                                      (reverse _arg234170234205_)))
                                 (___kont244021244022_
                                  _tl234165234197_
                                  _arg234171234216_))))))
                 (let ()
                   (declare (not safe))
                   (_loop234166234200_ _target234163234195_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match244034244035_
                                                     (lambda (___splice244019244020_
                                                              _target234152234244_
                                                              _tl234154234246_)
                                                       (letrec ((_loop234155234249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd234153234252_ _arg234159234254_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd234153234252_))
                               (let ((_e234156234257_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd234153234252_))))
                                 (let ((_lp-tl234158234262_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e234156234257_)))
                                       (_lp-hd234157234260_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e234156234257_))))
                                   (let ((__tmp245164
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd234157234260_
                                                  _arg234159234254_))))
                                     (declare (not safe))
                                     (_loop234155234249_
                                      _lp-tl234158234262_
                                      __tmp245164))))
                               (let ((_arg234160234265_
                                      (reverse _arg234159234254_)))
                                 (___kont244017244018_ _arg234160234265_))))))
                 (let ()
                   (declare (not safe))
                   (_loop234155234249_ _target234152234244_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx244015244016_))
                                                   (let ((___splice244019244020_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx244015244016_
                                                             '0))))
                                                     (let ((_tl234154234246_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice244019244020_
                                                               '1)))
                                                           (_target234152234244_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice244019244020_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl234154234246_))
                                                           (___match244034244035_
                                                            ___splice244019244020_
                                                            _target234152234244_
                                                            _tl234154234246_)
                                                           (___match244040244041_
                                                            ___splice244019244020_
                                                            _target234152234244_
                                                            _tl234154234246_))))
                                                   (___kont244025244026_
                                                    ___stx244015244016_))))))
                                       _hd234106234128_
                                       _hd234103234120_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234098234112_ _g234099234115_)))))
                              (let ()
                                (declare (not safe))
                                (_g234098234112_ _g234099234115_)))))
                      (let ()
                        (declare (not safe))
                        (_g234098234112_ _g234099234115_))))))
          (declare (not safe))
          (_g234097234289_ _form234096_))))
    (define gxc#lambda-expr?
      (lambda (_expr234049_)
        (let* ((___stx244043244044_ _expr234049_)
               (_g234052234062_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244043244044_)))))
          (let ((___kont244045244046_ (lambda (_L234082_) '#t))
                (___kont244047244048_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244043244044_))
                (let ((_e234057234074_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244043244044_))))
                  (let ((_tl234055234079_
                         (let () (declare (not safe)) (##cdr _e234057234074_)))
                        (_hd234056234077_
                         (let ()
                           (declare (not safe))
                           (##car _e234057234074_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234056234077_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd234056234077_))
                            (___kont244045244046_ _tl234055234079_)
                            (___kont244047244048_))
                        (___kont244047244048_))))
                (___kont244047244048_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr234002_)
        (let* ((___stx244061244062_ _expr234002_)
               (_g234005234015_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244061244062_)))))
          (let ((___kont244063244064_ (lambda (_L234035_) '#t))
                (___kont244065244066_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244061244062_))
                (let ((_e234010234027_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244061244062_))))
                  (let ((_tl234008234032_
                         (let () (declare (not safe)) (##cdr _e234010234027_)))
                        (_hd234009234030_
                         (let ()
                           (declare (not safe))
                           (##car _e234010234027_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234009234030_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd234009234030_))
                            (___kont244063244064_ _tl234008234032_)
                            (___kont244065244066_))
                        (___kont244065244066_))))
                (___kont244065244066_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr233871_)
        (let* ((___stx244079244080_ _expr233871_)
               (_g233874233904_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244079244080_)))))
          (let ((___kont244081244082_
                 (lambda (_L233972_ _L233973_ _L233974_)
                   (if (let () (declare (not safe)) (gx#identifier? _L233974_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L233973_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L233972_))
                           '#f)
                       '#f)))
                (___kont244083244084_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244079244080_))
                (let ((_e233881233916_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244079244080_))))
                  (let ((_tl233879233921_
                         (let () (declare (not safe)) (##cdr _e233881233916_)))
                        (_hd233880233919_
                         (let ()
                           (declare (not safe))
                           (##car _e233881233916_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233880233919_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd233880233919_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233879233921_))
                                (let ((_e233884233924_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233879233921_))))
                                  (let ((_tl233882233929_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233884233924_)))
                                        (_hd233883233927_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233884233924_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233883233927_))
                                        (let ((_e233887233932_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233883233927_))))
                                          (let ((_tl233885233937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233887233932_)))
                                                (_hd233886233935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233887233932_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233886233935_))
                                                (let ((_e233890233940_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233886233935_))))
                                                  (let ((_tl233888233945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233890233940_)))
                                                        (_hd233889233943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233890233940_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233889233943_))
                                                        (let ((_e233893233948_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233889233943_))))
                  (let ((_tl233891233953_
                         (let () (declare (not safe)) (##cdr _e233893233948_)))
                        (_hd233892233951_
                         (let ()
                           (declare (not safe))
                           (##car _e233893233948_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233891233953_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233888233945_))
                            (let ((_e233896233956_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233888233945_))))
                              (let ((_tl233894233961_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233896233956_)))
                                    (_hd233895233959_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233896233956_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233894233961_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233885233937_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233882233929_))
                                            (let ((_e233899233964_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233882233929_))))
                                              (let ((_tl233897233969_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233899233964_)))
                                                    (_hd233898233967_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233899233964_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233897233969_))
                                                    (___kont244081244082_
                                                     _hd233898233967_
                                                     _hd233895233959_
                                                     _hd233892233951_)
                                                    (___kont244083244084_))))
                                            (___kont244083244084_))
                                        (___kont244083244084_))
                                    (___kont244083244084_))))
                            (___kont244083244084_))
                        (___kont244083244084_))))
                (___kont244083244084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244083244084_))))
                                        (___kont244083244084_))))
                                (___kont244083244084_))
                            (___kont244083244084_))
                        (___kont244083244084_))))
                (___kont244083244084_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr233196_)
        (let* ((___stx244141244142_ _expr233196_)
               (_g233199233357_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244141244142_)))))
          (let ((___kont244143244144_
                 (lambda (_L233745_
                          _L233746_
                          _L233747_
                          _L233748_
                          _L233749_
                          _L233750_
                          _L233751_
                          _L233752_
                          _L233753_
                          _L233754_
                          _L233755_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L233752_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L233748_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L233747_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233755_
                                      _L233746_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L233754_
                                          _L233751_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233749_
                                              _L233745_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233753_
                                              _L233750_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont244145244146_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244141244142_))
                (let ((_e233214233369_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244141244142_))))
                  (let ((_tl233212233374_
                         (let () (declare (not safe)) (##cdr _e233214233369_)))
                        (_hd233213233372_
                         (let ()
                           (declare (not safe))
                           (##car _e233214233369_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233213233372_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd233213233372_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233212233374_))
                                (let ((_e233217233377_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233212233374_))))
                                  (let ((_tl233215233382_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233217233377_)))
                                        (_hd233216233380_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233217233377_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233216233380_))
                                        (let ((_e233220233385_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233216233380_))))
                                          (let ((_tl233218233390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233220233385_)))
                                                (_hd233219233388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233220233385_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233219233388_))
                                                (let ((_e233223233393_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233219233388_))))
                                                  (let ((_tl233221233398_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233223233393_)))
                                                        (_hd233222233396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233223233393_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233222233396_))
                                                        (let ((_e233226233401_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233222233396_))))
                  (let ((_tl233224233406_
                         (let () (declare (not safe)) (##cdr _e233226233401_)))
                        (_hd233225233404_
                         (let ()
                           (declare (not safe))
                           (##car _e233226233401_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233224233406_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233221233398_))
                            (let ((_e233229233409_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233221233398_))))
                              (let ((_tl233227233414_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233229233409_)))
                                    (_hd233228233412_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233229233409_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233228233412_))
                                    (let ((_e233232233417_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233228233412_))))
                                      (let ((_tl233230233422_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233232233417_)))
                                            (_hd233231233420_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233232233417_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233231233420_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd233231233420_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233230233422_))
                                                    (let ((_e233235233425_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233230233422_))))
                                                      (let ((_tl233233233430_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233235233425_)))
                    (_hd233234233428_
                     (let () (declare (not safe)) (##car _e233235233425_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233234233428_))
                    (let ((_e233238233433_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233234233428_))))
                      (let ((_tl233236233438_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233238233433_)))
                            (_hd233237233436_
                             (let ()
                               (declare (not safe))
                               (##car _e233238233433_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233237233436_))
                            (let ((_e233241233441_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233237233436_))))
                              (let ((_tl233239233446_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233241233441_)))
                                    (_hd233240233444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233241233441_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233240233444_))
                                    (let ((_e233244233449_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233240233444_))))
                                      (let ((_tl233242233454_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233244233449_)))
                                            (_hd233243233452_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233244233449_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233242233454_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233239233446_))
                                                (let ((_e233247233457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233239233446_))))
                                                  (let ((_tl233245233462_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233247233457_)))
                                                        (_hd233246233460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233247233457_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233245233462_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl233236233438_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl233233233430_))
                        (let ((_e233250233465_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233233233430_))))
                          (let ((_tl233248233470_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233250233465_)))
                                (_hd233249233468_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233250233465_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233249233468_))
                                (let ((_e233253233473_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233249233468_))))
                                  (let ((_tl233251233478_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233253233473_)))
                                        (_hd233252233476_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233253233473_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233252233476_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd233252233476_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233251233478_))
                                                (let ((_e233256233481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233251233478_))))
                                                  (let ((_tl233254233486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233256233481_)))
                                                        (_hd233255233484_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233256233481_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233255233484_))
                                                        (let ((_e233259233489_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233255233484_))))
                  (let ((_tl233257233494_
                         (let () (declare (not safe)) (##cdr _e233259233489_)))
                        (_hd233258233492_
                         (let ()
                           (declare (not safe))
                           (##car _e233259233489_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233254233486_))
                        (let ((_e233262233497_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233254233486_))))
                          (let ((_tl233260233502_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233262233497_)))
                                (_hd233261233500_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233262233497_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233261233500_))
                                (let ((_e233265233505_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233261233500_))))
                                  (let ((_tl233263233510_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233265233505_)))
                                        (_hd233264233508_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233265233505_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233264233508_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd233264233508_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233263233510_))
                                                (let ((_e233268233513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233263233510_))))
                                                  (let ((_tl233266233518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233268233513_)))
                                                        (_hd233267233516_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233268233513_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233267233516_))
                                                        (let ((_e233271233521_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233267233516_))))
                  (let ((_tl233269233526_
                         (let () (declare (not safe)) (##cdr _e233271233521_)))
                        (_hd233270233524_
                         (let ()
                           (declare (not safe))
                           (##car _e233271233521_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233270233524_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233270233524_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233269233526_))
                                (let ((_e233274233529_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233269233526_))))
                                  (let ((_tl233272233534_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233274233529_)))
                                        (_hd233273233532_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233274233529_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233272233534_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233266233518_))
                                            (let ((_e233277233537_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233266233518_))))
                                              (let ((_tl233275233542_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233277233537_)))
                                                    (_hd233276233540_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233277233537_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233276233540_))
                                                    (let ((_e233280233545_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233276233540_))))
                                                      (let ((_tl233278233550_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233280233545_)))
                    (_hd233279233548_
                     (let () (declare (not safe)) (##car _e233280233545_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233279233548_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd233279233548_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233278233550_))
                            (let ((_e233283233553_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233278233550_))))
                              (let ((_tl233281233558_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233283233553_)))
                                    (_hd233282233556_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233283233553_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233281233558_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl233275233542_))
                                        (let ((_e233286233561_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl233275233542_))))
                                          (let ((_tl233284233566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233286233561_)))
                                                (_hd233285233564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233286233561_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233285233564_))
                                                (let ((_e233289233569_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233285233564_))))
                                                  (let ((_tl233287233574_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233289233569_)))
                                                        (_hd233288233572_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233289233569_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd233288233572_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd233288233572_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl233287233574_))
                        (let ((_e233292233577_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233287233574_))))
                          (let ((_tl233290233582_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233292233577_)))
                                (_hd233291233580_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233292233577_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233290233582_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233260233502_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233248233470_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233227233414_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233218233390_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233215233382_))
                                                    (let ((_e233295233585_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233215233382_))))
                                                      (let ((_tl233293233590_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233295233585_)))
                    (_hd233294233588_
                     (let () (declare (not safe)) (##car _e233295233585_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233294233588_))
                    (let ((_e233298233593_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233294233588_))))
                      (let ((_tl233296233598_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233298233593_)))
                            (_hd233297233596_
                             (let ()
                               (declare (not safe))
                               (##car _e233298233593_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd233297233596_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd233297233596_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl233296233598_))
                                    (let ((_e233301233601_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl233296233598_))))
                                      (let ((_tl233299233606_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233301233601_)))
                                            (_hd233300233604_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233301233601_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233299233606_))
                                            (let ((_e233304233609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233299233606_))))
                                              (let ((_tl233302233614_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233304233609_)))
                                                    (_hd233303233612_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233304233609_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233303233612_))
                                                    (let ((_e233307233617_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233303233612_))))
                                                      (let ((_tl233305233622_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233307233617_)))
                    (_hd233306233620_
                     (let () (declare (not safe)) (##car _e233307233617_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233306233620_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233306233620_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233305233622_))
                            (let ((_e233310233625_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233305233622_))))
                              (let ((_tl233308233630_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233310233625_)))
                                    (_hd233309233628_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233310233625_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233309233628_))
                                    (let ((_e233313233633_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233309233628_))))
                                      (let ((_tl233311233638_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233313233633_)))
                                            (_hd233312233636_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233313233633_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233312233636_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233312233636_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233311233638_))
                                                    (let ((_e233316233641_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233311233638_))))
                                                      (let ((_tl233314233646_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233316233641_)))
                    (_hd233315233644_
                     (let () (declare (not safe)) (##car _e233316233641_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233314233646_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233308233630_))
                        (let ((_e233319233649_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233308233630_))))
                          (let ((_tl233317233654_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233319233649_)))
                                (_hd233318233652_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233319233649_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233318233652_))
                                (let ((_e233322233657_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233318233652_))))
                                  (let ((_tl233320233662_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233322233657_)))
                                        (_hd233321233660_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233322233657_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233321233660_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233321233660_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233320233662_))
                                                (let ((_e233325233665_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233320233662_))))
                                                  (let ((_tl233323233670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233325233665_)))
                                                        (_hd233324233668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233325233665_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233323233670_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl233317233654_))
                                                            (let ((_e233328233673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl233317233654_))))
                      (let ((_tl233326233678_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233328233673_)))
                            (_hd233327233676_
                             (let ()
                               (declare (not safe))
                               (##car _e233328233673_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd233327233676_))
                            (let ((_e233331233681_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd233327233676_))))
                              (let ((_tl233329233686_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233331233681_)))
                                    (_hd233330233684_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233331233681_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd233330233684_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd233330233684_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233329233686_))
                                            (let ((_e233334233689_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233329233686_))))
                                              (let ((_tl233332233694_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233334233689_)))
                                                    (_hd233333233692_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233334233689_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233332233694_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl233326233678_))
                                                        (let ((_e233337233697_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl233326233678_))))
                  (let ((_tl233335233702_
                         (let () (declare (not safe)) (##cdr _e233337233697_)))
                        (_hd233336233700_
                         (let ()
                           (declare (not safe))
                           (##car _e233337233697_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd233336233700_))
                        (let ((_e233340233705_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd233336233700_))))
                          (let ((_tl233338233710_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233340233705_)))
                                (_hd233339233708_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233340233705_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd233339233708_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd233339233708_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl233338233710_))
                                        (let ((_e233343233713_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl233338233710_))))
                                          (let ((_tl233341233718_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233343233713_)))
                                                (_hd233342233716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233343233713_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233341233718_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233335233702_))
                                                    (let ((_e233346233721_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233335233702_))))
                                                      (let ((_tl233344233726_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233346233721_)))
                    (_hd233345233724_
                     (let () (declare (not safe)) (##car _e233346233721_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd233345233724_))
                    (let ((_e233349233729_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd233345233724_))))
                      (let ((_tl233347233734_
                             (let ()
                               (declare (not safe))
                               (##cdr _e233349233729_)))
                            (_hd233348233732_
                             (let ()
                               (declare (not safe))
                               (##car _e233349233729_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd233348233732_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd233348233732_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl233347233734_))
                                    (let ((_e233352233737_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl233347233734_))))
                                      (let ((_tl233350233742_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233352233737_)))
                                            (_hd233351233740_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233352233737_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233350233742_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl233344233726_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233302233614_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233293233590_))
                                                        (___kont244143244144_
                                                         _hd233351233740_
                                                         _hd233342233716_
                                                         _hd233324233668_
                                                         _hd233315233644_
                                                         _hd233300233604_
                                                         _hd233291233580_
                                                         _hd233282233556_
                                                         _hd233273233532_
                                                         _hd233258233492_
                                                         _hd233243233452_
                                                         _hd233225233404_)
                                                        (___kont244145244146_))
                                                    (___kont244145244146_))
                                                (___kont244145244146_))
                                            (___kont244145244146_))))
                                    (___kont244145244146_))
                                (___kont244145244146_))
                            (___kont244145244146_))))
                    (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244145244146_))
                                                (___kont244145244146_))))
                                        (___kont244145244146_))
                                    (___kont244145244146_))
                                (___kont244145244146_))))
                        (___kont244145244146_))))
                (___kont244145244146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244145244146_))))
                                            (___kont244145244146_))
                                        (___kont244145244146_))
                                    (___kont244145244146_))))
                            (___kont244145244146_))))
                    (___kont244145244146_))
                (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244145244146_))
                                            (___kont244145244146_))
                                        (___kont244145244146_))))
                                (___kont244145244146_))))
                        (___kont244145244146_))
                    (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244145244146_))
                                                (___kont244145244146_))
                                            (___kont244145244146_))))
                                    (___kont244145244146_))))
                            (___kont244145244146_))
                        (___kont244145244146_))
                    (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244145244146_))))
                                            (___kont244145244146_))))
                                    (___kont244145244146_))
                                (___kont244145244146_))
                            (___kont244145244146_))))
                    (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244145244146_))
                                                (___kont244145244146_))
                                            (___kont244145244146_))
                                        (___kont244145244146_))
                                    (___kont244145244146_))
                                (___kont244145244146_))))
                        (___kont244145244146_))
                    (___kont244145244146_))
                (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244145244146_))))
                                        (___kont244145244146_))
                                    (___kont244145244146_))))
                            (___kont244145244146_))
                        (___kont244145244146_))
                    (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244145244146_))))
                                            (___kont244145244146_))
                                        (___kont244145244146_))))
                                (___kont244145244146_))
                            (___kont244145244146_))
                        (___kont244145244146_))))
                (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244145244146_))
                                            (___kont244145244146_))
                                        (___kont244145244146_))))
                                (___kont244145244146_))))
                        (___kont244145244146_))))
                (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244145244146_))
                                            (___kont244145244146_))
                                        (___kont244145244146_))))
                                (___kont244145244146_))))
                        (___kont244145244146_))
                    (___kont244145244146_))
                (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244145244146_))
                                            (___kont244145244146_))))
                                    (___kont244145244146_))))
                            (___kont244145244146_))))
                    (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244145244146_))
                                                (___kont244145244146_))
                                            (___kont244145244146_))))
                                    (___kont244145244146_))))
                            (___kont244145244146_))
                        (___kont244145244146_))))
                (___kont244145244146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont244145244146_))))
                                        (___kont244145244146_))))
                                (___kont244145244146_))
                            (___kont244145244146_))
                        (___kont244145244146_))))
                (___kont244145244146_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx232938_ _id232939_ _clauses232940_ _gensym?232941_)
        (let _lp232943_ ((_rest232945_ _clauses232940_)
                         (_ids232946_ '())
                         (_impls232947_ '())
                         (_clauses232948_ '()))
          (let* ((_rest232949232957_ _rest232945_)
                 (_else232951232965_
                  (lambda ()
                    (values (reverse _ids232946_)
                            (reverse _impls232947_)
                            (reverse _clauses232948_))))
                 (_K232953233170_
                  (lambda (_rest232968_ _clause232969_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause232969_))
                        (let ((__tmp245220
                               (let ()
                                 (declare (not safe))
                                 (cons _clause232969_ _clauses232948_))))
                          (declare (not safe))
                          (_lp232943_
                           _rest232968_
                           _ids232946_
                           _impls232947_
                           __tmp245220))
                        (let* ((_g232971232982_
                                (lambda (_g232972232979_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g232972232979_))))
                               (_g232970233167_
                                (lambda (_g232972232985_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g232972232985_))
                                      (let ((_e232977232987_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g232972232985_))))
                                        (let ((_hd232976232990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232977232987_)))
                                              (_tl232975232992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232977232987_))))
                                          ((lambda (_L232995_ _L232996_)
                                             (let* ((_id233013_
                                                     (let ((__tmp245167
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id232939_)))
                                                           (__tmp245166
                                                            (length _clauses232948_))
                                                           (__tmp245165
                                                            (if _gensym?232941_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp245167
                                                        '"__"
                                                        __tmp245166
                                                        __tmp245165)))
                                                    (_id233015_
                                                     (let ((__tmp245168
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx232938_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id233013_
                                                        __tmp245168)))
                                                    (_impl233017_
                                                     (let ((__tmp245169
                                                            (let ((__tmp245171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp245170
                           (let ()
                             (declare (not safe))
                             (cons _L232996_ _L232995_))))
                      (declare (not safe))
                      (cons __tmp245171 __tmp245170))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp245169 _stx232938_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause233164_
                                                     (let* ((___stx244525244526_
                                                             _L232996_)
                                                            (_g233021233049_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx244525244526_)))))
               (let ((___kont244527244528_
                      (lambda (_L233143_)
                        (let ((__tmp245172
                               (let ((__tmp245173
                                      (let ((__tmp245174
                                             (let ((__tmp245175
                                                    (let ((__tmp245181
                                                           (let ((__tmp245182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id233015_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245182)))
                  (__tmp245176
                   (let ((__tmp245177
                          (lambda (_g233153233156_ _g233154233158_)
                            (let ((__tmp245178
                                   (let ((__tmp245180
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp245179
                                          (let ()
                                            (declare (not safe))
                                            (cons _g233153233156_ '()))))
                                     (declare (not safe))
                                     (cons __tmp245180 __tmp245179))))
                              (declare (not safe))
                              (cons __tmp245178 _g233154233158_)))))
                     (declare (not safe))
                     (foldr1 __tmp245177 '() _L233143_))))
              (declare (not safe))
              (cons __tmp245181 __tmp245176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245175))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245174
                                         _stx232938_))))
                                 (declare (not safe))
                                 (cons __tmp245173 '()))))
                          (declare (not safe))
                          (cons _L232996_ __tmp245172))))
                     (___kont244531244532_
                      (lambda (_L233094_ _L233095_)
                        (let ((__tmp245183
                               (let ((__tmp245184
                                      (let ((__tmp245185
                                             (let ((__tmp245186
                                                    (let ((__tmp245200
                                                           (let ((__tmp245201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245201)))
                  (__tmp245187
                   (let ((__tmp245198
                          (let ((__tmp245199
                                 (let ()
                                   (declare (not safe))
                                   (cons _id233015_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp245199)))
                         (__tmp245188
                          (let ((__tmp245194
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
                                                 (cons _L233094_ '()))))
                                          (declare (not safe))
                                          (cons __tmp245197 __tmp245196))))
                                   (declare (not safe))
                                   (cons __tmp245195 '())))
                                (__tmp245189
                                 (let ((__tmp245190
                                        (lambda (_g233106233109_
                                                 _g233107233111_)
                                          (let ((__tmp245191
                                                 (let ((__tmp245193
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp245192
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g233106233109_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp245193
                                                         __tmp245192))))
                                            (declare (not safe))
                                            (cons __tmp245191
                                                  _g233107233111_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp245190 '() _L233095_))))
                            (declare (not safe))
                            (foldr1 cons __tmp245194 __tmp245189))))
                     (declare (not safe))
                     (cons __tmp245198 __tmp245188))))
              (declare (not safe))
              (cons __tmp245200 __tmp245187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245186))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245185
                                         _stx232938_))))
                                 (declare (not safe))
                                 (cons __tmp245184 '()))))
                          (declare (not safe))
                          (cons _L232996_ __tmp245183))))
                     (___kont244535244536_
                      (lambda (_L233054_)
                        (let ((__tmp245202
                               (let ((__tmp245203
                                      (let ((__tmp245204
                                             (let ((__tmp245205
                                                    (let ((__tmp245213
                                                           (let ((__tmp245214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp245214)))
                  (__tmp245206
                   (let ((__tmp245211
                          (let ((__tmp245212
                                 (let ()
                                   (declare (not safe))
                                   (cons _id233015_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp245212)))
                         (__tmp245207
                          (let ((__tmp245208
                                 (let ((__tmp245210
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp245209
                                        (let ()
                                          (declare (not safe))
                                          (cons _L233054_ '()))))
                                   (declare (not safe))
                                   (cons __tmp245210 __tmp245209))))
                            (declare (not safe))
                            (cons __tmp245208 '()))))
                     (declare (not safe))
                     (cons __tmp245211 __tmp245207))))
              (declare (not safe))
              (cons __tmp245213 __tmp245206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp245205))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245204
                                         _stx232938_))))
                                 (declare (not safe))
                                 (cons __tmp245203 '()))))
                          (declare (not safe))
                          (cons _L232996_ __tmp245202)))))
                 (let* ((___match244550244551_
                         (lambda (___splice244533244534_
                                  _target233035233070_
                                  _tl233037233072_)
                           (letrec ((_loop233038233075_
                                     (lambda (_hd233036233078_
                                              _arg233042233080_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd233036233078_))
                                           (let ((_e233039233083_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd233036233078_))))
                                             (let ((_lp-tl233041233088_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e233039233083_)))
                                                   (_lp-hd233040233086_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e233039233083_))))
                                               (let ((__tmp245215
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd233040233086_
                                                              _arg233042233080_))))
                                                 (declare (not safe))
                                                 (_loop233038233075_
                                                  _lp-tl233041233088_
                                                  __tmp245215))))
                                           (let ((_arg233043233091_
                                                  (reverse _arg233042233080_)))
                                             (___kont244531244532_
                                              _tl233037233072_
                                              _arg233043233091_))))))
                             (let ()
                               (declare (not safe))
                               (_loop233038233075_
                                _target233035233070_
                                '())))))
                        (___match244544244545_
                         (lambda (___splice244529244530_
                                  _target233024233119_
                                  _tl233026233121_)
                           (letrec ((_loop233027233124_
                                     (lambda (_hd233025233127_
                                              _arg233031233129_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd233025233127_))
                                           (let ((_e233028233132_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd233025233127_))))
                                             (let ((_lp-tl233030233137_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e233028233132_)))
                                                   (_lp-hd233029233135_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e233028233132_))))
                                               (let ((__tmp245216
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd233029233135_
                                                              _arg233031233129_))))
                                                 (declare (not safe))
                                                 (_loop233027233124_
                                                  _lp-tl233030233137_
                                                  __tmp245216))))
                                           (let ((_arg233032233140_
                                                  (reverse _arg233031233129_)))
                                             (___kont244527244528_
                                              _arg233032233140_))))))
                             (let ()
                               (declare (not safe))
                               (_loop233027233124_
                                _target233024233119_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx244525244526_))
                       (let ((___splice244529244530_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx244525244526_
                                 '0))))
                         (let ((_tl233026233121_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice244529244530_ '1)))
                               (_target233024233119_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice244529244530_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl233026233121_))
                               (___match244544244545_
                                ___splice244529244530_
                                _target233024233119_
                                _tl233026233121_)
                               (___match244550244551_
                                ___splice244529244530_
                                _target233024233119_
                                _tl233026233121_))))
                       (___kont244535244536_ ___stx244525244526_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp245219
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id233015_
                                                              _ids232946_)))
                                                     (__tmp245218
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl233017_
                                                              _impls232947_)))
                                                     (__tmp245217
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause233164_
                                                              _clauses232948_))))
                                                 (declare (not safe))
                                                 (_lp232943_
                                                  _rest232968_
                                                  __tmp245219
                                                  __tmp245218
                                                  __tmp245217))))
                                           _tl232975232992_
                                           _hd232976232990_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g232971232982_ _g232972232985_))))))
                          (declare (not safe))
                          (_g232970233167_ _clause232969_))))))
            (if (let () (declare (not safe)) (##pair? _rest232949232957_))
                (let ((_hd232954233173_
                       (let ()
                         (declare (not safe))
                         (##car _rest232949232957_)))
                      (_tl232955233175_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest232949232957_))))
                  (let* ((_clause233178_ _hd232954233173_)
                         (_rest233180_ _tl232955233175_))
                    (declare (not safe))
                    (_K232953233170_ _rest233180_ _clause233178_)))
                (let () (declare (not safe)) (_else232951232965_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx233185_ _id233186_ _clauses233187_)
        (let ((_gensym?233189_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx233185_
           _id233186_
           _clauses233187_
           _gensym?233189_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g245222_
        (let ((_g245221_ (let () (declare (not safe)) (##length _g245222_))))
          (cond ((let () (declare (not safe)) (##fx= _g245221_ 3))
                 (apply (lambda (_stx233185_ _id233186_ _clauses233187_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx233185_
                             _id233186_
                             _clauses233187_)))
                        _g245222_))
                ((let () (declare (not safe)) (##fx= _g245221_ 4))
                 (apply (lambda (_stx233191_
                                 _id233192_
                                 _clauses233193_
                                 _gensym?233194_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx233191_
                             _id233192_
                             _clauses233193_
                             _gensym?233194_)))
                        _g245222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g245222_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx232215_)
        (letrec ((_case-lambda-clause-def232217_
                  (lambda (_id232934_ _impl232935_)
                    (let ((__tmp245223
                           (let ((__tmp245224
                                  (let ((__tmp245227
                                         (let ()
                                           (declare (not safe))
                                           (cons _id232934_ '())))
                                        (__tmp245225
                                         (let ((__tmp245226
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl232935_))))
                                           (declare (not safe))
                                           (cons __tmp245226 '()))))
                                    (declare (not safe))
                                    (cons __tmp245227 __tmp245225))))
                             (declare (not safe))
                             (cons '%#define-values __tmp245224))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp245223 _stx232215_))))
                 (_opt-lambda-dispatch-name232218_
                  (lambda (_id232930_)
                    (if (uninterned-symbol? _id232930_)
                        (let ((_str232932_ (symbol->string _id232930_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str232932_))
                              '"%"
                              _id232930_))
                        _id232930_)))
                 (_kw-lambda-dispatch-name232219_
                  (lambda (_id232925_ _name232926_)
                    (if (uninterned-symbol? _id232925_)
                        (let ((_str232928_ (symbol->string _id232925_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str232928_))
                              _name232926_
                              _id232925_))
                        _id232925_))))
          (let* ((___stx244573244574_ _stx232215_)
                 (_g232224232283_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244573244574_)))))
            (let ((___kont244575244576_
                   (lambda (_L232834_ _L232835_)
                     (let* ((___stx244553244554_ _L232834_)
                            (_g232852232866_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx244553244554_)))))
                       (let ((___kont244555244556_
                              (lambda (_L232910_) _stx232215_))
                             (___kont244557244558_
                              (lambda (_L232879_)
                                (let ((_g245228_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx232215_
                                          _L232835_
                                          _L232879_))))
                                  (begin
                                    (let ((_g245229_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g245228_)
                                                 (##vector-length _g245228_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g245229_ 3)))
                                          (error "Context expects 3 values"
                                                 _g245229_)))
                                    (let ((_ids232889_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245228_ 0)))
                                          (_impls232890_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245228_ 1)))
                                          (_clauses232891_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g245228_ 2))))
                                      (let* ((_g245230_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids232889_))
                                             (_defs232894_
                                              (map _case-lambda-clause-def232217_
                                                   _ids232889_
                                                   _impls232890_)))
                                        (let ((__tmp245232
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L232835_)))
                                              (__tmp245231
                                               (map gxc#identifier-symbol
                                                    _ids232889_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp245232
                                           '" => "
                                           __tmp245231))
                                        (let ((__tmp245233
                                               (let ((__tmp245234
                                                      (let ((__tmp245235
                                                             (let ((__tmp245236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp245237
                                   (let ((__tmp245238
                                          (let ((__tmp245243
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L232835_ '())))
                                                (__tmp245239
                                                 (let ((__tmp245240
                                                        (let ((__tmp245242
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses232891_)))
                      (__tmp245241
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp245242 __tmp245241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp245240 '()))))
                                            (declare (not safe))
                                            (cons __tmp245243 __tmp245239))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp245238))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp245237
                               _stx232215_))))
                       (declare (not safe))
                       (cons __tmp245236 '()))))
                (declare (not safe))
                (foldr1 cons __tmp245235 _defs232894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp245234))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp245233
                                           _stx232215_)))))))))
                         (let ((___match244564244565_
                                (lambda (_e232857232902_
                                         _hd232856232905_
                                         _tl232855232907_)
                                  (let ((_L232910_ _tl232855232907_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L232910_))
                                        (___kont244555244556_ _L232910_)
                                        (___kont244557244558_
                                         _tl232855232907_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx244553244554_))
                               (let ((_e232857232902_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx244553244554_))))
                                 (let ((_tl232855232907_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232857232902_)))
                                       (_hd232856232905_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232857232902_))))
                                   (___match244564244565_
                                    _e232857232902_
                                    _hd232856232905_
                                    _tl232855232907_)))
                               (let ()
                                 (declare (not safe))
                                 (_g232852232866_))))))))
                  (___kont244577244578_
                   (lambda (_L232652_ _L232653_)
                     (let* ((_g232669232699_
                             (lambda (_g232670232696_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g232670232696_))))
                            (_g232668232794_
                             (lambda (_g232670232702_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g232670232702_))
                                   (let ((_e232676232704_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g232670232702_))))
                                     (let ((_hd232675232707_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e232676232704_)))
                                           (_tl232674232709_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e232676232704_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl232674232709_))
                                           (let ((_e232679232712_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl232674232709_))))
                                             (let ((_hd232678232715_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232679232712_)))
                                                   (_tl232677232717_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232679232712_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd232678232715_))
                                                   (let ((_e232682232720_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd232678232715_))))
                                                     (let ((_hd232681232723_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232682232720_)))
                                                           (_tl232680232725_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232682232720_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd232681232723_))
                                                           (let ((_e232685232728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd232681232723_))))
                     (let ((_hd232684232731_
                            (let ()
                              (declare (not safe))
                              (##car _e232685232728_)))
                           (_tl232683232733_
                            (let ()
                              (declare (not safe))
                              (##cdr _e232685232728_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd232684232731_))
                           (let ((_e232688232736_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd232684232731_))))
                             (let ((_hd232687232739_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232688232736_)))
                                   (_tl232686232741_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232688232736_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232686232741_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl232683232733_))
                                       (let ((_e232691232744_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl232683232733_))))
                                         (let ((_hd232690232747_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232691232744_)))
                                               (_tl232689232749_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232691232744_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl232689232749_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl232680232725_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl232677232717_))
                                                       (let ((_e232694232752_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl232677232717_))))
                 (let ((_hd232693232755_
                        (let () (declare (not safe)) (##car _e232694232752_)))
                       (_tl232692232757_
                        (let () (declare (not safe)) (##cdr _e232694232752_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl232692232757_))
                       ((lambda (_L232760_ _L232761_ _L232762_)
                          (let* ((_lambda-id232786_
                                  (let ((__tmp245246
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L232653_)))
                                        (__tmp245244
                                         (let ((__tmp245245
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L232762_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name232218_
                                            __tmp245245))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp245246
                                     '"__"
                                     __tmp245244)))
                                 (_lambda-id232788_
                                  (let ((__tmp245247
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx232215_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id232786_
                                     __tmp245247)))
                                 (_g245248_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id232788_)))
                                 (_new-case-lambda-expr232791_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L232760_
                                     _L232762_
                                     _lambda-id232788_))))
                            (let ((__tmp245250
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L232653_)))
                                  (__tmp245249
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id232788_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp245250
                               '" => "
                               __tmp245249))
                            (let ((__tmp245251
                                   (let ((__tmp245252
                                          (let ((__tmp245260
                                                 (let ((__tmp245261
                                                        (let ((__tmp245262
                                                               (let ((__tmp245265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id232788_ '())))
                             (__tmp245263
                              (let ((__tmp245264
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L232761_))))
                                (declare (not safe))
                                (cons __tmp245264 '()))))
                         (declare (not safe))
                         (cons __tmp245265 __tmp245263))))
                  (declare (not safe))
                  (cons '%#define-values __tmp245262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp245261
                                                    _stx232215_)))
                                                (__tmp245253
                                                 (let ((__tmp245254
                                                        (let ((__tmp245255
                                                               (let ((__tmp245256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp245257
                                     (let ((__tmp245259
                                            (let ()
                                              (declare (not safe))
                                              (cons _L232653_ '())))
                                           (__tmp245258
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr232791_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp245259 __tmp245258))))
                                (declare (not safe))
                                (cons '%#define-values __tmp245257))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp245256 _stx232215_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp245255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp245254 '()))))
                                            (declare (not safe))
                                            (cons __tmp245260 __tmp245253))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp245252))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp245251
                               _stx232215_))))
                        _hd232693232755_
                        _hd232690232747_
                        _hd232687232739_)
                       (let ()
                         (declare (not safe))
                         (_g232669232699_ _g232670232702_)))))
               (let () (declare (not safe)) (_g232669232699_ _g232670232702_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232669232699_
                                                      _g232670232702_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232669232699_
                                                  _g232670232702_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232669232699_ _g232670232702_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232669232699_ _g232670232702_)))))
                           (let ()
                             (declare (not safe))
                             (_g232669232699_ _g232670232702_)))))
                   (let ()
                     (declare (not safe))
                     (_g232669232699_ _g232670232702_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232669232699_
                                                      _g232670232702_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g232669232699_
                                              _g232670232702_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g232669232699_ _g232670232702_))))))
                       (declare (not safe))
                       (_g232668232794_ _L232652_))))
                  (___kont244579244580_
                   (lambda (_L232366_ _L232367_)
                     (let* ((_g232383232436_
                             (lambda (_g232384232433_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g232384232433_))))
                            (_g232382232612_
                             (lambda (_g232384232439_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g232384232439_))
                                   (let ((_e232392232441_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g232384232439_))))
                                     (let ((_hd232391232444_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e232392232441_)))
                                           (_tl232390232446_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e232392232441_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl232390232446_))
                                           (let ((_e232395232449_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl232390232446_))))
                                             (let ((_hd232394232452_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232395232449_)))
                                                   (_tl232393232454_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232395232449_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd232394232452_))
                                                   (let ((_e232398232457_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd232394232452_))))
                                                     (let ((_hd232397232460_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232398232457_)))
                                                           (_tl232396232462_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232398232457_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd232397232460_))
                                                           (let ((_e232401232465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd232397232460_))))
                     (let ((_hd232400232468_
                            (let ()
                              (declare (not safe))
                              (##car _e232401232465_)))
                           (_tl232399232470_
                            (let ()
                              (declare (not safe))
                              (##cdr _e232401232465_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd232400232468_))
                           (let ((_e232404232473_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd232400232468_))))
                             (let ((_hd232403232476_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232404232473_)))
                                   (_tl232402232478_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232404232473_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232402232478_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl232399232470_))
                                       (let ((_e232407232481_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl232399232470_))))
                                         (let ((_hd232406232484_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232407232481_)))
                                               (_tl232405232486_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232407232481_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd232406232484_))
                                               (let ((_e232410232489_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd232406232484_))))
                                                 (let ((_hd232409232492_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e232410232489_)))
                                                       (_tl232408232494_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e232410232489_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl232408232494_))
                                                       (let ((_e232413232497_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl232408232494_))))
                 (let ((_hd232412232500_
                        (let () (declare (not safe)) (##car _e232413232497_)))
                       (_tl232411232502_
                        (let () (declare (not safe)) (##cdr _e232413232497_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd232412232500_))
                       (let ((_e232416232505_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd232412232500_))))
                         (let ((_hd232415232508_
                                (let ()
                                  (declare (not safe))
                                  (##car _e232416232505_)))
                               (_tl232414232510_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e232416232505_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232415232508_))
                               (let ((_e232419232513_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232415232508_))))
                                 (let ((_hd232418232516_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232419232513_)))
                                       (_tl232417232518_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232419232513_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd232418232516_))
                                       (let ((_e232422232521_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd232418232516_))))
                                         (let ((_hd232421232524_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232422232521_)))
                                               (_tl232420232526_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232422232521_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl232420232526_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl232417232518_))
                                                   (let ((_e232425232529_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl232417232518_))))
                                                     (let ((_hd232424232532_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232425232529_)))
                                                           (_tl232423232534_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232425232529_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232423232534_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl232414232510_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl232411232502_))
                           (let ((_e232428232537_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl232411232502_))))
                             (let ((_hd232427232540_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232428232537_)))
                                   (_tl232426232542_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232428232537_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232426232542_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl232405232486_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl232396232462_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl232393232454_))
                                               (let ((_e232431232545_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl232393232454_))))
                                                 (let ((_hd232430232548_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e232431232545_)))
                                                       (_tl232429232550_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e232431232545_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl232429232550_))
                                                       ((lambda (_L232553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L232554_
                         _L232555_
                         _L232556_
                         _L232557_)
                  (let* ((_get-kws-id232597_
                          (let ((__tmp245268
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L232367_)))
                                (__tmp245266
                                 (let ((__tmp245267
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L232557_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name232219_
                                    __tmp245267
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp245268 '"__" __tmp245266)))
                         (_get-kws-id232599_
                          (let ((__tmp245269
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx232215_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id232597_
                             __tmp245269)))
                         (_main-id232601_
                          (let ((__tmp245272
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L232367_)))
                                (__tmp245270
                                 (let ((__tmp245271
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L232556_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name232219_
                                    __tmp245271
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp245272 '"__" __tmp245270)))
                         (_main-id232603_
                          (let ((__tmp245273
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx232215_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id232601_
                             __tmp245273)))
                         (_g245274_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id232599_)))
                         (_g245275_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id232603_)))
                         (_new-kw-dispatch232607_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L232553_
                             _L232557_
                             _get-kws-id232599_)))
                         (_new-get-kws232609_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L232554_
                             _L232556_
                             _main-id232603_))))
                    (let ((__tmp245278
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L232367_)))
                          (__tmp245277
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id232599_)))
                          (__tmp245276
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id232603_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp245278
                       '" => "
                       __tmp245277
                       '" => "
                       __tmp245276))
                    (let ((__tmp245279
                           (let ((__tmp245280
                                  (let ((__tmp245293
                                         (let ((__tmp245294
                                                (let ((__tmp245295
                                                       (let ((__tmp245296
                                                              (let ((__tmp245298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id232603_ '())))
                            (__tmp245297
                             (let ()
                               (declare (not safe))
                               (cons _L232555_ '()))))
                        (declare (not safe))
                        (cons __tmp245298 __tmp245297))))
                 (declare (not safe))
                 (cons '%#define-values __tmp245296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245295
                                                   _stx232215_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp245294)))
                                        (__tmp245281
                                         (let ((__tmp245288
                                                (let ((__tmp245289
                                                       (let ((__tmp245290
                                                              (let ((__tmp245292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id232599_ '())))
                            (__tmp245291
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws232609_ '()))))
                        (declare (not safe))
                        (cons __tmp245292 __tmp245291))))
                 (declare (not safe))
                 (cons '%#define-values __tmp245290))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245289
                                                   _stx232215_)))
                                               (__tmp245282
                                                (let ((__tmp245283
                                                       (let ((__tmp245284
                                                              (let ((__tmp245285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp245287
                                    (let ()
                                      (declare (not safe))
                                      (cons _L232367_ '())))
                                   (__tmp245286
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch232607_ '()))))
                               (declare (not safe))
                               (cons __tmp245287 __tmp245286))))
                        (declare (not safe))
                        (cons '%#define-values __tmp245285))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp245284 _stx232215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp245283 '()))))
                                           (declare (not safe))
                                           (cons __tmp245288 __tmp245282))))
                                    (declare (not safe))
                                    (cons __tmp245293 __tmp245281))))
                             (declare (not safe))
                             (cons '%#begin __tmp245280))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp245279 _stx232215_))))
                _hd232430232548_
                _hd232427232540_
                _hd232424232532_
                _hd232421232524_
                _hd232403232476_)
               (let ()
                 (declare (not safe))
                 (_g232383232436_ _g232384232439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232383232436_
                                                  _g232384232439_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g232383232436_
                                              _g232384232439_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g232383232436_ _g232384232439_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232383232436_ _g232384232439_)))))
                           (let ()
                             (declare (not safe))
                             (_g232383232436_ _g232384232439_)))
                       (let ()
                         (declare (not safe))
                         (_g232383232436_ _g232384232439_)))
                   (let ()
                     (declare (not safe))
                     (_g232383232436_ _g232384232439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232383232436_
                                                      _g232384232439_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232383232436_
                                                  _g232384232439_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232383232436_ _g232384232439_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g232383232436_ _g232384232439_)))))
                       (let ()
                         (declare (not safe))
                         (_g232383232436_ _g232384232439_)))))
               (let ()
                 (declare (not safe))
                 (_g232383232436_ _g232384232439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232383232436_
                                                  _g232384232439_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232383232436_ _g232384232439_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232383232436_ _g232384232439_)))))
                           (let ()
                             (declare (not safe))
                             (_g232383232436_ _g232384232439_)))))
                   (let ()
                     (declare (not safe))
                     (_g232383232436_ _g232384232439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232383232436_
                                                      _g232384232439_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g232383232436_
                                              _g232384232439_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g232383232436_ _g232384232439_))))))
                       (declare (not safe))
                       (_g232382232612_ _L232366_))))
                  (___kont244581244582_
                   (lambda (_L232312_ _L232313_)
                     (let ((__tmp245299
                            (let ((__tmp245300
                                   (let ((__tmp245301
                                          (let ((__tmp245302
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L232312_))))
                                            (declare (not safe))
                                            (cons __tmp245302 '()))))
                                     (declare (not safe))
                                     (cons _L232313_ __tmp245301))))
                              (declare (not safe))
                              (cons '%#define-values __tmp245300))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp245299 _stx232215_)))))
              (let* ((___match244666244667_
                      (lambda (_e232258232334_
                               _hd232257232337_
                               _tl232256232339_
                               _e232261232342_
                               _hd232260232345_
                               _tl232259232347_
                               _e232264232350_
                               _hd232263232353_
                               _tl232262232355_
                               _e232267232358_
                               _hd232266232361_
                               _tl232265232363_)
                        (let ((_L232366_ _hd232266232361_)
                              (_L232367_ _hd232263232353_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232367_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L232366_)))
                              (___kont244579244580_ _L232366_ _L232367_)
                              (___kont244581244582_
                               _hd232266232361_
                               _hd232260232345_)))))
                     (___match244638244639_
                      (lambda (_e232244232620_
                               _hd232243232623_
                               _tl232242232625_
                               _e232247232628_
                               _hd232246232631_
                               _tl232245232633_
                               _e232250232636_
                               _hd232249232639_
                               _tl232248232641_
                               _e232253232644_
                               _hd232252232647_
                               _tl232251232649_)
                        (let ((_L232652_ _hd232252232647_)
                              (_L232653_ _hd232249232639_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232653_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L232652_)))
                              (___kont244577244578_ _L232652_ _L232653_)
                              (___match244666244667_
                               _e232244232620_
                               _hd232243232623_
                               _tl232242232625_
                               _e232247232628_
                               _hd232246232631_
                               _tl232245232633_
                               _e232250232636_
                               _hd232249232639_
                               _tl232248232641_
                               _e232253232644_
                               _hd232252232647_
                               _tl232251232649_)))))
                     (___match244610244611_
                      (lambda (_e232230232802_
                               _hd232229232805_
                               _tl232228232807_
                               _e232233232810_
                               _hd232232232813_
                               _tl232231232815_
                               _e232236232818_
                               _hd232235232821_
                               _tl232234232823_
                               _e232239232826_
                               _hd232238232829_
                               _tl232237232831_)
                        (let ((_L232834_ _hd232238232829_)
                              (_L232835_ _hd232235232821_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232835_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L232834_)))
                              (___kont244575244576_ _L232834_ _L232835_)
                              (___match244638244639_
                               _e232230232802_
                               _hd232229232805_
                               _tl232228232807_
                               _e232233232810_
                               _hd232232232813_
                               _tl232231232815_
                               _e232236232818_
                               _hd232235232821_
                               _tl232234232823_
                               _e232239232826_
                               _hd232238232829_
                               _tl232237232831_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244573244574_))
                    (let ((_e232230232802_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244573244574_))))
                      (let ((_tl232228232807_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232230232802_)))
                            (_hd232229232805_
                             (let ()
                               (declare (not safe))
                               (##car _e232230232802_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232228232807_))
                            (let ((_e232233232810_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232228232807_))))
                              (let ((_tl232231232815_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232233232810_)))
                                    (_hd232232232813_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232233232810_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232232232813_))
                                    (let ((_e232236232818_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232232232813_))))
                                      (let ((_tl232234232823_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232236232818_)))
                                            (_hd232235232821_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232236232818_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232234232823_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232231232815_))
                                                (let ((_e232239232826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232231232815_))))
                                                  (let ((_tl232237232831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232239232826_)))
                                                        (_hd232238232829_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232239232826_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232237232831_))
                                                        (___match244610244611_
                                                         _e232230232802_
                                                         _hd232229232805_
                                                         _tl232228232807_
                                                         _e232233232810_
                                                         _hd232232232813_
                                                         _tl232231232815_
                                                         _e232236232818_
                                                         _hd232235232821_
                                                         _tl232234232823_
                                                         _e232239232826_
                                                         _hd232238232829_
                                                         _tl232237232831_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232224232283_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232224232283_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232231232815_))
                                                (let ((_e232278232304_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232231232815_))))
                                                  (let ((_tl232276232309_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232278232304_)))
                                                        (_hd232277232307_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232278232304_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232276232309_))
                                                        (___kont244581244582_
                                                         _hd232277232307_
                                                         _hd232232232813_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232224232283_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232224232283_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl232231232815_))
                                        (let ((_e232278232304_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl232231232815_))))
                                          (let ((_tl232276232309_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232278232304_)))
                                                (_hd232277232307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232278232304_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232276232309_))
                                                (___kont244581244582_
                                                 _hd232277232307_
                                                 _hd232232232813_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232224232283_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g232224232283_))))))
                            (let () (declare (not safe)) (_g232224232283_)))))
                    (let () (declare (not safe)) (_g232224232283_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx231147_)
        (letrec* ((_bind-e__242969242970_
                   (lambda (_id232199_ _expr232200_ _compile?232201_)
                     (let ((__tmp245305
                            (let ()
                              (declare (not safe))
                              (cons _id232199_ '())))
                           (__tmp245303
                            (let ((__tmp245304
                                   (if _compile?232201_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr232200_))
                                       _expr232200_)))
                              (declare (not safe))
                              (cons __tmp245304 '()))))
                       (declare (not safe))
                       (cons __tmp245305 __tmp245303))))
                  (_bind-e__0__242971242972_
                   (lambda (_id232206_ _expr232207_)
                     (let ((_compile?232209_ '#t))
                       (declare (not safe))
                       (_bind-e__242969242970_
                        _id232206_
                        _expr232207_
                        _compile?232209_))))
                  (_bind-e231149_
                   (lambda _g245307_
                     (let ((_g245306_
                            (let ()
                              (declare (not safe))
                              (##length _g245307_))))
                       (cond ((let () (declare (not safe)) (##fx= _g245306_ 2))
                              (apply (lambda (_id232206_ _expr232207_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__242971242972_
                                          _id232206_
                                          _expr232207_)))
                                     _g245307_))
                             ((let () (declare (not safe)) (##fx= _g245306_ 3))
                              (apply (lambda (_id232211_
                                              _expr232212_
                                              _compile?232213_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__242969242970_
                                          _id232211_
                                          _expr232212_
                                          _compile?232213_)))
                                     _g245307_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g245307_))))))
                  (_compile-bindings231150_
                   (lambda (_bindings231783_)
                     (let _lp231785_ ((_rest231787_ _bindings231783_)
                                      (_lift1231788_ '())
                                      (_lift2231789_ '())
                                      (_bind231790_ '()))
                       (let* ((_rest231791231799_ _rest231787_)
                              (_else231793231807_
                               (lambda ()
                                 (values (reverse _lift1231788_)
                                         (reverse _lift2231789_)
                                         (reverse _bind231790_))))
                              (_K231795232186_
                               (lambda (_rest231810_ _hd231811_)
                                 (let* ((___stx244709244710_ _hd231811_)
                                        (_g231815231851_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244709244710_)))))
                                   (let ((___kont244711244712_
                                          (lambda (_L232093_ _L232094_)
                                            (let* ((___stx244689244690_
                                                    _L232093_)
                                                   (_g232109232123_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244689244690_)))))
                                              (let ((___kont244691244692_
                                                     (lambda (_L232171_)
                                                       (let ((__tmp245308
                                                              (let ((__tmp245309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__242969242970_
                                _L232094_
                                _L232093_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp245309 _bind231790_))))
                 (declare (not safe))
                 (_lp231785_
                  _rest231810_
                  _lift1231788_
                  _lift2231789_
                  __tmp245308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244693244694_
                                                     (lambda (_L232136_)
                                                       (let ((_g245310_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx231147_
                         _L232094_
                         _L232136_
                         '#t))))
                 (begin
                   (let ((_g245311_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g245310_)
                                (##vector-length _g245310_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g245311_ 3)))
                         (error "Context expects 3 values" _g245311_)))
                   (let ((_ids232146_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245310_ 0)))
                         (_impls232147_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245310_ 1)))
                         (_clauses232148_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245310_ 2))))
                     (let* ((_g245312_
                             (for-each gx#core-bind-runtime! _ids232146_))
                            (_xbind232151_
                             (map _bind-e231149_ _ids232146_ _impls232147_))
                            (_expr*232153_
                             (let ((__tmp245314
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses232148_)))
                                   (__tmp245313
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp245314
                                __tmp245313)))
                            (_bind*232155_
                             (let ()
                               (declare (not safe))
                               (_bind-e__242969242970_
                                _L232094_
                                _expr*232153_
                                '#f))))
                       (let ((__tmp245316
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L232094_)))
                             (__tmp245315
                              (map gxc#identifier-symbol _ids232146_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp245316
                          '" => "
                          __tmp245315))
                       (let ((__tmp245318
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2231789_ _xbind232151_)))
                             (__tmp245317
                              (let ()
                                (declare (not safe))
                                (cons _bind*232155_ _bind231790_))))
                         (declare (not safe))
                         (_lp231785_
                          _rest231810_
                          _lift1231788_
                          __tmp245318
                          __tmp245317)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244700244701_
                                                       (lambda (_e232114232163_
                                                                _hd232113232166_
                                                                _tl232112232168_)
                                                         (let ((_L232171_
                                                                _tl232112232168_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L232171_))
                       (___kont244691244692_ _L232171_)
                       (___kont244693244694_ _tl232112232168_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244689244690_))
                                                      (let ((_e232114232163_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244689244690_))))
                (let ((_tl232112232168_
                       (let () (declare (not safe)) (##cdr _e232114232163_)))
                      (_hd232113232166_
                       (let () (declare (not safe)) (##car _e232114232163_))))
                  (___match244700244701_
                   _e232114232163_
                   _hd232113232166_
                   _tl232112232168_)))
              (let () (declare (not safe)) (_g232109232123_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont244713244714_
                                          (lambda (_L231921_ _L231922_)
                                            (let* ((_g231936231966_
                                                    (lambda (_g231937231963_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g231937231963_))))
                                                   (_g231935232061_
                                                    (lambda (_g231937231969_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g231937231969_))
                                                          (let ((_e231943231971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g231937231969_))))
                    (let ((_hd231942231974_
                           (let ()
                             (declare (not safe))
                             (##car _e231943231971_)))
                          (_tl231941231976_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231943231971_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231941231976_))
                          (let ((_e231946231979_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231941231976_))))
                            (let ((_hd231945231982_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231946231979_)))
                                  (_tl231944231984_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231946231979_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231945231982_))
                                  (let ((_e231949231987_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231945231982_))))
                                    (let ((_hd231948231990_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231949231987_)))
                                          (_tl231947231992_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231949231987_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231948231990_))
                                          (let ((_e231952231995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231948231990_))))
                                            (let ((_hd231951231998_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231952231995_)))
                                                  (_tl231950232000_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231952231995_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231951231998_))
                                                  (let ((_e231955232003_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231951231998_))))
                                                    (let ((_hd231954232006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231955232003_)))
                                                          (_tl231953232008_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231955232003_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231953232008_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231950232000_))
                      (let ((_e231958232011_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231950232000_))))
                        (let ((_hd231957232014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231958232011_)))
                              (_tl231956232016_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231958232011_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl231956232016_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231947231992_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231944231984_))
                                      (let ((_e231961232019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231944231984_))))
                                        (let ((_hd231960232022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231961232019_)))
                                              (_tl231959232024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231961232019_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231959232024_))
                                              ((lambda (_L232027_
                                                        _L232028_
                                                        _L232029_)
                                                 (let* ((_lambda-id232053_
                                                         (let ((__tmp245320
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L231922_)))
                       (__tmp245319 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp245320 __tmp245319)))
                (_lambda-id232055_
                 (let ((__tmp245321
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx231147_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id232053_ __tmp245321)))
                (_g245322_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id232055_)))
                (_new-case-lambda-expr232058_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L232027_
                    _L232029_
                    _lambda-id232055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp245324
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L231922_)))
                                                         (__tmp245323
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id232055_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp245324
                                                      '" => "
                                                      __tmp245323))
                                                   (let ((__tmp245327
                                                          (let ((__tmp245328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__242969242970_
                            _L231922_
                            _new-case-lambda-expr232058_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp245328 _rest231810_)))
                 (__tmp245325
                  (let ((__tmp245326
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__242971242972_
                            _lambda-id232055_
                            _L232028_))))
                    (declare (not safe))
                    (cons __tmp245326 _lift1231788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp231785_
                                                      __tmp245327
                                                      __tmp245325
                                                      _lift2231789_
                                                      _bind231790_))))
                                               _hd231960232022_
                                               _hd231957232014_
                                               _hd231954232006_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231936231966_
                                                 _g231937231969_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231936231966_ _g231937231969_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g231936231966_ _g231937231969_)))
                              (let ()
                                (declare (not safe))
                                (_g231936231966_ _g231937231969_)))))
                      (let ()
                        (declare (not safe))
                        (_g231936231966_ _g231937231969_)))
                  (let ()
                    (declare (not safe))
                    (_g231936231966_ _g231937231969_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231936231966_
                                                     _g231937231969_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g231936231966_
                                             _g231937231969_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231936231966_ _g231937231969_)))))
                          (let ()
                            (declare (not safe))
                            (_g231936231966_ _g231937231969_)))))
                  (let ()
                    (declare (not safe))
                    (_g231936231966_ _g231937231969_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g231935232061_ _L231921_))))
                                         (___kont244715244716_
                                          (lambda (_L231872_ _L231873_)
                                            (let ((__tmp245329
                                                   (let ((__tmp245330
                                                          (let ((__tmp245331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245332
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L231872_))))
                           (declare (not safe))
                           (cons __tmp245332 '()))))
                    (declare (not safe))
                    (cons _L231873_ __tmp245331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245330
                                                           _bind231790_))))
                                              (declare (not safe))
                                              (_lp231785_
                                               _rest231810_
                                               _lift1231788_
                                               _lift2231789_
                                               __tmp245329)))))
                                     (let* ((___match244760244761_
                                             (lambda (_e231832231897_
                                                      _hd231831231900_
                                                      _tl231830231902_
                                                      _e231835231905_
                                                      _hd231834231908_
                                                      _tl231833231910_
                                                      _e231838231913_
                                                      _hd231837231916_
                                                      _tl231836231918_)
                                               (let ((_L231921_
                                                      _hd231837231916_)
                                                     (_L231922_
                                                      _hd231834231908_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L231922_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L231921_)))
                                                     (___kont244713244714_
                                                      _L231921_
                                                      _L231922_)
                                                     (___kont244715244716_
                                                      _hd231837231916_
                                                      _hd231831231900_)))))
                                            (___match244738244739_
                                             (lambda (_e231821232069_
                                                      _hd231820232072_
                                                      _tl231819232074_
                                                      _e231824232077_
                                                      _hd231823232080_
                                                      _tl231822232082_
                                                      _e231827232085_
                                                      _hd231826232088_
                                                      _tl231825232090_)
                                               (let ((_L232093_
                                                      _hd231826232088_)
                                                     (_L232094_
                                                      _hd231823232080_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L232094_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L232093_)))
                                                     (___kont244711244712_
                                                      _L232093_
                                                      _L232094_)
                                                     (___match244760244761_
                                                      _e231821232069_
                                                      _hd231820232072_
                                                      _tl231819232074_
                                                      _e231824232077_
                                                      _hd231823232080_
                                                      _tl231822232082_
                                                      _e231827232085_
                                                      _hd231826232088_
                                                      _tl231825232090_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244709244710_))
                                           (let ((_e231821232069_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244709244710_))))
                                             (let ((_tl231819232074_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231821232069_)))
                                                   (_hd231820232072_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231821232069_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231820232072_))
                                                   (let ((_e231824232077_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231820232072_))))
                                                     (let ((_tl231822232082_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231824232077_)))
                                                           (_hd231823232080_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231824232077_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231822232082_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl231819232074_))
                       (let ((_e231827232085_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231819232074_))))
                         (let ((_tl231825232090_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231827232085_)))
                               (_hd231826232088_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231827232085_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231825232090_))
                               (___match244738244739_
                                _e231821232069_
                                _hd231820232072_
                                _tl231819232074_
                                _e231824232077_
                                _hd231823232080_
                                _tl231822232082_
                                _e231827232085_
                                _hd231826232088_
                                _tl231825232090_)
                               (let ()
                                 (declare (not safe))
                                 (_g231815231851_)))))
                       (let () (declare (not safe)) (_g231815231851_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl231819232074_))
                       (let ((_e231846231864_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231819232074_))))
                         (let ((_tl231844231869_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231846231864_)))
                               (_hd231845231867_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231846231864_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231844231869_))
                               (___kont244715244716_
                                _hd231845231867_
                                _hd231820232072_)
                               (let ()
                                 (declare (not safe))
                                 (_g231815231851_)))))
                       (let () (declare (not safe)) (_g231815231851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231819232074_))
                                                       (let ((_e231846231864_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231819232074_))))
                 (let ((_tl231844231869_
                        (let () (declare (not safe)) (##cdr _e231846231864_)))
                       (_hd231845231867_
                        (let () (declare (not safe)) (##car _e231846231864_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231844231869_))
                       (___kont244715244716_ _hd231845231867_ _hd231820232072_)
                       (let () (declare (not safe)) (_g231815231851_)))))
               (let () (declare (not safe)) (_g231815231851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g231815231851_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest231791231799_))
                             (let ((_hd231796232189_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest231791231799_)))
                                   (_tl231797232191_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest231791231799_))))
                               (let* ((_hd232194_ _hd231796232189_)
                                      (_rest232196_ _tl231797232191_))
                                 (declare (not safe))
                                 (_K231795232186_ _rest232196_ _hd232194_)))
                             (let ()
                               (declare (not safe))
                               (_else231793231807_)))))))
                  (_lift-kw-lambda?231151_
                   (lambda (_bind231707_)
                     (let* ((___stx244777244778_ _bind231707_)
                            (_g231710231727_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx244777244778_)))))
                       (let ((___kont244779244780_
                              (lambda (_L231763_ _L231764_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L231764_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L231763_))
                                    '#f)))
                             (___kont244781244782_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx244777244778_))
                             (let ((_e231716231739_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx244777244778_))))
                               (let ((_tl231714231744_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e231716231739_)))
                                     (_hd231715231742_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e231716231739_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd231715231742_))
                                     (let ((_e231719231747_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd231715231742_))))
                                       (let ((_tl231717231752_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e231719231747_)))
                                             (_hd231718231750_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e231719231747_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl231717231752_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl231714231744_))
                                                 (let ((_e231722231755_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl231714231744_))))
                                                   (let ((_tl231720231760_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e231722231755_)))
                                                         (_hd231721231758_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e231722231755_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl231720231760_))
                                                         (___kont244779244780_
                                                          _hd231721231758_
                                                          _hd231718231750_)
                                                         (___kont244781244782_))))
                                                 (___kont244781244782_))
                                             (___kont244781244782_))))
                                     (___kont244781244782_))))
                             (___kont244781244782_))))))
                  (_lift-kw-lambda-bindings231152_
                   (lambda (_bindings231319_)
                     (let _lp231321_ ((_rest231323_ _bindings231319_)
                                      (_lift1231324_ '())
                                      (_lift2231325_ '())
                                      (_bind231326_ '()))
                       (let* ((_rest231327231335_ _rest231323_)
                              (_else231329231343_
                               (lambda ()
                                 (values (reverse _lift1231324_)
                                         (reverse _lift2231325_)
                                         (reverse _bind231326_))))
                              (_K231331231695_
                               (lambda (_rest231346_ _hd231347_)
                                 (let* ((___stx244807244808_ _hd231347_)
                                        (_g231350231375_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244807244808_)))))
                                   (let ((___kont244809244810_
                                          (lambda (_L231445_ _L231446_)
                                            (let* ((_g231460231513_
                                                    (lambda (_g231461231510_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g231461231510_))))
                                                   (_g231459231689_
                                                    (lambda (_g231461231516_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g231461231516_))
                                                          (let ((_e231469231518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g231461231516_))))
                    (let ((_hd231468231521_
                           (let ()
                             (declare (not safe))
                             (##car _e231469231518_)))
                          (_tl231467231523_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231469231518_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231467231523_))
                          (let ((_e231472231526_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231467231523_))))
                            (let ((_hd231471231529_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231472231526_)))
                                  (_tl231470231531_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231472231526_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231471231529_))
                                  (let ((_e231475231534_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231471231529_))))
                                    (let ((_hd231474231537_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231475231534_)))
                                          (_tl231473231539_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231475231534_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231474231537_))
                                          (let ((_e231478231542_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231474231537_))))
                                            (let ((_hd231477231545_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231478231542_)))
                                                  (_tl231476231547_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231478231542_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231477231545_))
                                                  (let ((_e231481231550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231477231545_))))
                                                    (let ((_hd231480231553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231481231550_)))
                                                          (_tl231479231555_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231481231550_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231479231555_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231476231547_))
                      (let ((_e231484231558_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231476231547_))))
                        (let ((_hd231483231561_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231484231558_)))
                              (_tl231482231563_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231484231558_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd231483231561_))
                              (let ((_e231487231566_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd231483231561_))))
                                (let ((_hd231486231569_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231487231566_)))
                                      (_tl231485231571_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231487231566_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231485231571_))
                                      (let ((_e231490231574_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231485231571_))))
                                        (let ((_hd231489231577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231490231574_)))
                                              (_tl231488231579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231490231574_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd231489231577_))
                                              (let ((_e231493231582_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd231489231577_))))
                                                (let ((_hd231492231585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231493231582_)))
                                                      (_tl231491231587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231493231582_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231492231585_))
                                                      (let ((_e231496231590_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231492231585_))))
                (let ((_hd231495231593_
                       (let () (declare (not safe)) (##car _e231496231590_)))
                      (_tl231494231595_
                       (let () (declare (not safe)) (##cdr _e231496231590_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231495231593_))
                      (let ((_e231499231598_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231495231593_))))
                        (let ((_hd231498231601_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231499231598_)))
                              (_tl231497231603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231499231598_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl231497231603_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231494231595_))
                                  (let ((_e231502231606_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231494231595_))))
                                    (let ((_hd231501231609_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231502231606_)))
                                          (_tl231500231611_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231502231606_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231500231611_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231491231587_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231488231579_))
                                                  (let ((_e231505231614_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231488231579_))))
                                                    (let ((_hd231504231617_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231505231614_)))
                                                          (_tl231503231619_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231505231614_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231503231619_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl231482231563_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl231473231539_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231470231531_))
                              (let ((_e231508231622_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231470231531_))))
                                (let ((_hd231507231625_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231508231622_)))
                                      (_tl231506231627_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231508231622_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231506231627_))
                                      ((lambda (_L231630_
                                                _L231631_
                                                _L231632_
                                                _L231633_
                                                _L231634_)
                                         (let* ((_get-kws-id231674_
                                                 (let ((__tmp245334
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L231446_)))
                                                       (__tmp245333
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245334
                                                    __tmp245333)))
                                                (_get-kws-id231676_
                                                 (let ((__tmp245335
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx231147_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id231674_
                                                    __tmp245335)))
                                                (_main-id231678_
                                                 (let ((__tmp245337
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L231446_)))
                                                       (__tmp245336
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245337
                                                    __tmp245336)))
                                                (_main-id231680_
                                                 (let ((__tmp245338
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx231147_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id231678_
                                                    __tmp245338)))
                                                (_g245339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id231676_)))
                                                (_g245340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id231680_)))
                                                (_new-kw-dispatch231684_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L231630_
                                                    _L231634_
                                                    _get-kws-id231676_)))
                                                (_new-get-kws231686_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L231631_
                                                    _L231633_
                                                    _main-id231680_))))
                                           (let ((__tmp245343
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L231446_)))
                                                 (__tmp245342
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id231676_)))
                                                 (__tmp245341
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id231680_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp245343
                                              '" => "
                                              __tmp245342
                                              '" => "
                                              __tmp245341))
                                           (let ((__tmp245348
                                                  (let ((__tmp245349
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242969242970_
                                                            _main-id231680_
                                                            _L231632_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245349
                                                          _lift1231324_)))
                                                 (__tmp245346
                                                  (let ((__tmp245347
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242969242970_
                                                            _get-kws-id231676_
                                                            _new-get-kws231686_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245347
                                                          _lift2231325_)))
                                                 (__tmp245344
                                                  (let ((__tmp245345
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242969242970_
                                                            _L231446_
                                                            _new-kw-dispatch231684_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp245345
                                                          _bind231326_))))
                                             (declare (not safe))
                                             (_lp231321_
                                              _rest231346_
                                              __tmp245348
                                              __tmp245346
                                              __tmp245344))))
                                       _hd231507231625_
                                       _hd231504231617_
                                       _hd231501231609_
                                       _hd231498231601_
                                       _hd231480231553_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231460231513_ _g231461231516_)))))
                              (let ()
                                (declare (not safe))
                                (_g231460231513_ _g231461231516_)))
                          (let ()
                            (declare (not safe))
                            (_g231460231513_ _g231461231516_)))
                      (let ()
                        (declare (not safe))
                        (_g231460231513_ _g231461231516_)))
                  (let ()
                    (declare (not safe))
                    (_g231460231513_ _g231461231516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231460231513_
                                                     _g231461231516_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g231460231513_
                                                 _g231461231516_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g231460231513_
                                             _g231461231516_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231460231513_ _g231461231516_)))
                              (let ()
                                (declare (not safe))
                                (_g231460231513_ _g231461231516_)))))
                      (let ()
                        (declare (not safe))
                        (_g231460231513_ _g231461231516_)))))
              (let ()
                (declare (not safe))
                (_g231460231513_ _g231461231516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g231460231513_
                                                 _g231461231516_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231460231513_ _g231461231516_)))))
                              (let ()
                                (declare (not safe))
                                (_g231460231513_ _g231461231516_)))))
                      (let ()
                        (declare (not safe))
                        (_g231460231513_ _g231461231516_)))
                  (let ()
                    (declare (not safe))
                    (_g231460231513_ _g231461231516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231460231513_
                                                     _g231461231516_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g231460231513_
                                             _g231461231516_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231460231513_ _g231461231516_)))))
                          (let ()
                            (declare (not safe))
                            (_g231460231513_ _g231461231516_)))))
                  (let ()
                    (declare (not safe))
                    (_g231460231513_ _g231461231516_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g231459231689_ _L231445_))))
                                         (___kont244811244812_
                                          (lambda (_L231396_ _L231397_)
                                            (let ((__tmp245350
                                                   (let ((__tmp245351
                                                          (let ((__tmp245352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L231396_ '()))))
                    (declare (not safe))
                    (cons _L231397_ __tmp245352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245351
                                                           _bind231326_))))
                                              (declare (not safe))
                                              (_lp231321_
                                               _rest231346_
                                               _lift1231324_
                                               _lift2231325_
                                               __tmp245350)))))
                                     (let ((___match244834244835_
                                            (lambda (_e231356231421_
                                                     _hd231355231424_
                                                     _tl231354231426_
                                                     _e231359231429_
                                                     _hd231358231432_
                                                     _tl231357231434_
                                                     _e231362231437_
                                                     _hd231361231440_
                                                     _tl231360231442_)
                                              (let ((_L231445_
                                                     _hd231361231440_)
                                                    (_L231446_
                                                     _hd231358231432_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L231446_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L231445_)))
                                                    (___kont244809244810_
                                                     _L231445_
                                                     _L231446_)
                                                    (___kont244811244812_
                                                     _hd231361231440_
                                                     _hd231355231424_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244807244808_))
                                           (let ((_e231356231421_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244807244808_))))
                                             (let ((_tl231354231426_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231356231421_)))
                                                   (_hd231355231424_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231356231421_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231355231424_))
                                                   (let ((_e231359231429_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231355231424_))))
                                                     (let ((_tl231357231434_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231359231429_)))
                                                           (_hd231358231432_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231359231429_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231357231434_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl231354231426_))
                       (let ((_e231362231437_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231354231426_))))
                         (let ((_tl231360231442_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231362231437_)))
                               (_hd231361231440_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231362231437_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231360231442_))
                               (___match244834244835_
                                _e231356231421_
                                _hd231355231424_
                                _tl231354231426_
                                _e231359231429_
                                _hd231358231432_
                                _tl231357231434_
                                _e231362231437_
                                _hd231361231440_
                                _tl231360231442_)
                               (let ()
                                 (declare (not safe))
                                 (_g231350231375_)))))
                       (let () (declare (not safe)) (_g231350231375_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl231354231426_))
                       (let ((_e231370231388_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231354231426_))))
                         (let ((_tl231368231393_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231370231388_)))
                               (_hd231369231391_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231370231388_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231368231393_))
                               (___kont244811244812_
                                _hd231369231391_
                                _hd231355231424_)
                               (let ()
                                 (declare (not safe))
                                 (_g231350231375_)))))
                       (let () (declare (not safe)) (_g231350231375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231354231426_))
                                                       (let ((_e231370231388_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231354231426_))))
                 (let ((_tl231368231393_
                        (let () (declare (not safe)) (##cdr _e231370231388_)))
                       (_hd231369231391_
                        (let () (declare (not safe)) (##car _e231370231388_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231368231393_))
                       (___kont244811244812_ _hd231369231391_ _hd231355231424_)
                       (let () (declare (not safe)) (_g231350231375_)))))
               (let () (declare (not safe)) (_g231350231375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g231350231375_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest231327231335_))
                             (let ((_hd231332231698_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest231327231335_)))
                                   (_tl231333231700_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest231327231335_))))
                               (let* ((_hd231703_ _hd231332231698_)
                                      (_rest231705_ _tl231333231700_))
                                 (declare (not safe))
                                 (_K231331231695_ _rest231705_ _hd231703_)))
                             (let ()
                               (declare (not safe))
                               (_else231329231343_))))))))
          (let* ((___stx244851244852_ _stx231147_)
                 (_g231155231181_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244851244852_)))))
            (let ((___kont244853244854_
                   (lambda (_L231241_ _L231242_)
                     (let ((__tmp245354
                            (lambda ()
                              (if (let ((__tmp245381
                                         (let ((__tmp245382
                                                (lambda (_g231270231273_
                                                         _g231271231275_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g231270231273_
                                                          _g231271231275_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp245382
                                                   '()
                                                   _L231242_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?231151_
                                            __tmp245381))
                                  (let ((_g245368_
                                         (let ((__tmp245370
                                                (let ((__tmp245371
                                                       (lambda (_g231277231280_
                                                                _g231278231282_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g231277231280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g231278231282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp245371
                                                          '()
                                                          _L231242_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings231152_
                                            __tmp245370))))
                                    (begin
                                      (let ((_g245369_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g245368_)
                                                   (##vector-length _g245368_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g245369_ 3)))
                                            (error "Context expects 3 values"
                                                   _g245369_)))
                                      (let ((_lift1231285_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245368_ 0)))
                                            (_lift2231286_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245368_ 1)))
                                            (_hd231287_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245368_ 2))))
                                        (let* ((_expr231289_
                                                (let ((__tmp245372
                                                       (let ((__tmp245373
                                                              (let ((__tmp245374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L231241_ '()))))
                        (declare (not safe))
                        (cons _hd231287_ __tmp245374))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245372
                                                   _stx231147_)))
                                               (_expr231291_
                                                (let ((__tmp245375
                                                       (let ((__tmp245376
                                                              (let ((__tmp245377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr231289_ '()))))
                        (declare (not safe))
                        (cons _lift2231286_ __tmp245377))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245375
                                                   _stx231147_)))
                                               (_expr231293_
                                                (let ((__tmp245378
                                                       (let ((__tmp245379
                                                              (let ((__tmp245380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr231291_ '()))))
                        (declare (not safe))
                        (cons _lift1231285_ __tmp245380))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245378
                                                   _stx231147_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr231293_))))))
                                  (let ((_g245355_
                                         (let ((__tmp245357
                                                (let ((__tmp245358
                                                       (lambda (_g231295231298_
                                                                _g231296231300_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g231295231298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g231296231300_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp245358
                                                          '()
                                                          _L231242_))))
                                           (declare (not safe))
                                           (_compile-bindings231150_
                                            __tmp245357))))
                                    (begin
                                      (let ((_g245356_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g245355_)
                                                   (##vector-length _g245355_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g245356_ 3)))
                                            (error "Context expects 3 values"
                                                   _g245356_)))
                                      (let ((_lift1231303_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245355_ 0)))
                                            (_lift2231304_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245355_ 1)))
                                            (_hd231305_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g245355_ 2))))
                                        (let* ((_body231307_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L231241_)))
                                               (_expr231309_
                                                (let ((__tmp245359
                                                       (let ((__tmp245360
                                                              (let ((__tmp245361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body231307_ '()))))
                        (declare (not safe))
                        (cons _hd231305_ __tmp245361))))
                 (declare (not safe))
                 (cons '%#let-values __tmp245360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp245359
                                                   _stx231147_)))
                                               (_expr231311_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2231304_))
                                                    _expr231309_
                                                    (let ((__tmp245362
                                                           (let ((__tmp245363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245364
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr231309_ '()))))
                            (declare (not safe))
                            (cons _lift2231304_ __tmp245364))))
                     (declare (not safe))
                     (cons '%#let-values __tmp245363))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp245362 _stx231147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr231313_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1231303_))
                                                    _expr231311_
                                                    (let ((__tmp245365
                                                           (let ((__tmp245366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245367
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr231311_ '()))))
                            (declare (not safe))
                            (cons _lift1231303_ __tmp245367))))
                     (declare (not safe))
                     (cons '%#let-values __tmp245366))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp245365 _stx231147_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr231313_)))))))
                           (__tmp245353
                            (let ((__obj245057
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj245057)
                              __obj245057)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp245354
                        gx#current-expander-context
                        __tmp245353))))
                  (___kont244857244858_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx231147_)))))
              (let ((___match244878244879_
                     (lambda (_e231161231193_
                              _hd231160231196_
                              _tl231159231198_
                              _e231164231201_
                              _hd231163231204_
                              _tl231162231206_
                              ___splice244855244856_
                              _target231165231209_
                              _tl231167231211_)
                       (letrec ((_loop231168231214_
                                 (lambda (_hd231166231217_ _bind231172231219_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231166231217_))
                                       (let ((_e231169231222_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231166231217_))))
                                         (let ((_lp-tl231171231227_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231169231222_)))
                                               (_lp-hd231170231225_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231169231222_))))
                                           (let ((__tmp245385
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd231170231225_
                                                          _bind231172231219_))))
                                             (declare (not safe))
                                             (_loop231168231214_
                                              _lp-tl231171231227_
                                              __tmp245385))))
                                       (let ((_bind231173231230_
                                              (reverse _bind231172231219_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl231162231206_))
                                             (let ((_e231176231233_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl231162231206_))))
                                               (let ((_tl231174231238_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e231176231233_)))
                                                     (_hd231175231236_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e231176231233_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl231174231238_))
                                                     (let ((_L231241_
                                                            _hd231175231236_)
                                                           (_L231242_
                                                            _bind231173231230_))
                                                       (if (let ((__tmp245383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245384
                                 (lambda (_g231262231265_ _g231263231267_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g231262231265_ _g231263231267_)))))
                            (declare (not safe))
                            (foldr1 __tmp245384 '() _L231242_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp245383))
                   (___kont244853244854_ _L231241_ _L231242_)
                   (___kont244857244858_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont244857244858_))))
                                             (___kont244857244858_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop231168231214_ _target231165231209_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244851244852_))
                    (let ((_e231161231193_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244851244852_))))
                      (let ((_tl231159231198_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231161231193_)))
                            (_hd231160231196_
                             (let ()
                               (declare (not safe))
                               (##car _e231161231193_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231159231198_))
                            (let ((_e231164231201_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231159231198_))))
                              (let ((_tl231162231206_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231164231201_)))
                                    (_hd231163231204_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231164231201_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd231163231204_))
                                    (let ((___splice244855244856_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd231163231204_
                                              '0))))
                                      (let ((_tl231167231211_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244855244856_
                                                '1)))
                                            (_target231165231209_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244855244856_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231167231211_))
                                            (___match244878244879_
                                             _e231161231193_
                                             _hd231160231196_
                                             _tl231159231198_
                                             _e231164231201_
                                             _hd231163231204_
                                             _tl231162231206_
                                             ___splice244855244856_
                                             _target231165231209_
                                             _tl231167231211_)
                                            (___kont244857244858_))))
                                    (___kont244857244858_))))
                            (___kont244857244858_))))
                    (___kont244857244858_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx230291_)
        (letrec* ((_bind-e__242974242975_
                   (lambda (_id231131_ _expr231132_ _compile?231133_)
                     (let ((__tmp245388
                            (let ()
                              (declare (not safe))
                              (cons _id231131_ '())))
                           (__tmp245386
                            (let ((__tmp245387
                                   (if _compile?231133_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr231132_))
                                       _expr231132_)))
                              (declare (not safe))
                              (cons __tmp245387 '()))))
                       (declare (not safe))
                       (cons __tmp245388 __tmp245386))))
                  (_bind-e__0__242976242977_
                   (lambda (_id231138_ _expr231139_)
                     (let ((_compile?231141_ '#t))
                       (declare (not safe))
                       (_bind-e__242974242975_
                        _id231138_
                        _expr231139_
                        _compile?231141_))))
                  (_bind-e230293_
                   (lambda _g245390_
                     (let ((_g245389_
                            (let ()
                              (declare (not safe))
                              (##length _g245390_))))
                       (cond ((let () (declare (not safe)) (##fx= _g245389_ 2))
                              (apply (lambda (_id231138_ _expr231139_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__242976242977_
                                          _id231138_
                                          _expr231139_)))
                                     _g245390_))
                             ((let () (declare (not safe)) (##fx= _g245389_ 3))
                              (apply (lambda (_id231143_
                                              _expr231144_
                                              _compile?231145_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__242974242975_
                                          _id231143_
                                          _expr231144_
                                          _compile?231145_)))
                                     _g245390_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g245390_))))))
                  (_compile-bindings230294_
                   (lambda (_rest230429_)
                     (let _lp230431_ ((_rest230433_ _rest230429_)
                                      (_bind230434_ '()))
                       (let* ((_rest230435230443_ _rest230433_)
                              (_else230437230451_
                               (lambda () (reverse _bind230434_)))
                              (_K230439231118_
                               (lambda (_rest230454_ _hd230455_)
                                 (let* ((___stx244901244902_ _hd230455_)
                                        (_g230460230507_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244901244902_)))))
                                   (let ((___kont244903244904_
                                          (lambda (_L231025_ _L231026_)
                                            (let* ((___stx244881244882_
                                                    _L231025_)
                                                   (_g231041231055_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244881244882_)))))
                                              (let ((___kont244883244884_
                                                     (lambda (_L231103_)
                                                       (let ((__tmp245391
                                                              (let ((__tmp245392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__242974242975_
                                _L231026_
                                _L231025_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp245392 _bind230434_))))
                 (declare (not safe))
                 (_lp230431_ _rest230454_ __tmp245391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244885244886_
                                                     (lambda (_L231068_)
                                                       (let ((_g245393_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx230291_
                         _L231026_
                         _L231068_
                         '#t))))
                 (begin
                   (let ((_g245394_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g245393_)
                                (##vector-length _g245393_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g245394_ 3)))
                         (error "Context expects 3 values" _g245394_)))
                   (let ((_ids231078_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245393_ 0)))
                         (_impls231079_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245393_ 1)))
                         (_clauses231080_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g245393_ 2))))
                     (let* ((_g245395_
                             (for-each gx#core-bind-runtime! _ids231078_))
                            (_xbind231083_
                             (map _bind-e230293_ _ids231078_ _impls231079_))
                            (_expr*231085_
                             (let ((__tmp245397
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses231080_)))
                                   (__tmp245396
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp245397
                                __tmp245396)))
                            (_bind*231087_
                             (let ()
                               (declare (not safe))
                               (_bind-e__242974242975_
                                _L231026_
                                _expr*231085_
                                '#f))))
                       (let ((__tmp245399
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L231026_)))
                             (__tmp245398
                              (map gxc#identifier-symbol _ids231078_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp245399
                          '" => "
                          __tmp245398))
                       (let ((__tmp245400
                              (let ((__tmp245401
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind230434_
                                               _xbind231083_))))
                                (declare (not safe))
                                (cons _bind*231087_ __tmp245401))))
                         (declare (not safe))
                         (_lp230431_ _rest230454_ __tmp245400)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244892244893_
                                                       (lambda (_e231046231095_
                                                                _hd231045231098_
                                                                _tl231044231100_)
                                                         (let ((_L231103_
                                                                _tl231044231100_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L231103_))
                       (___kont244883244884_ _L231103_)
                       (___kont244885244886_ _tl231044231100_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244881244882_))
                                                      (let ((_e231046231095_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244881244882_))))
                (let ((_tl231044231100_
                       (let () (declare (not safe)) (##cdr _e231046231095_)))
                      (_hd231045231098_
                       (let () (declare (not safe)) (##car _e231046231095_))))
                  (___match244892244893_
                   _e231046231095_
                   _hd231045231098_
                   _tl231044231100_)))
              (let () (declare (not safe)) (_g231041231055_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont244905244906_
                                          (lambda (_L230853_ _L230854_)
                                            (let* ((_g230868230898_
                                                    (lambda (_g230869230895_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230869230895_))))
                                                   (_g230867230993_
                                                    (lambda (_g230869230901_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230869230901_))
                                                          (let ((_e230875230903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230869230901_))))
                    (let ((_hd230874230906_
                           (let ()
                             (declare (not safe))
                             (##car _e230875230903_)))
                          (_tl230873230908_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230875230903_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230873230908_))
                          (let ((_e230878230911_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230873230908_))))
                            (let ((_hd230877230914_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230878230911_)))
                                  (_tl230876230916_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230878230911_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230877230914_))
                                  (let ((_e230881230919_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230877230914_))))
                                    (let ((_hd230880230922_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230881230919_)))
                                          (_tl230879230924_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230881230919_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230880230922_))
                                          (let ((_e230884230927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230880230922_))))
                                            (let ((_hd230883230930_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230884230927_)))
                                                  (_tl230882230932_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230884230927_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230883230930_))
                                                  (let ((_e230887230935_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230883230930_))))
                                                    (let ((_hd230886230938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230887230935_)))
                                                          (_tl230885230940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230887230935_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230885230940_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230882230932_))
                      (let ((_e230890230943_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230882230932_))))
                        (let ((_hd230889230946_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230890230943_)))
                              (_tl230888230948_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230890230943_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230888230948_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230879230924_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230876230916_))
                                      (let ((_e230893230951_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230876230916_))))
                                        (let ((_hd230892230954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230893230951_)))
                                              (_tl230891230956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230893230951_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230891230956_))
                                              ((lambda (_L230959_
                                                        _L230960_
                                                        _L230961_)
                                                 (let* ((_lambda-id230985_
                                                         (let ((__tmp245403
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230854_)))
                       (__tmp245402 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp245403 __tmp245402)))
                (_lambda-id230987_
                 (let ((__tmp245404
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx230291_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id230985_ __tmp245404)))
                (_g245405_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id230987_)))
                (_new-case-lambda-expr230990_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L230959_
                    _L230961_
                    _lambda-id230987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp245407
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230854_)))
                                                         (__tmp245406
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id230987_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp245407
                                                      '" => "
                                                      __tmp245406))
                                                   (let ((__tmp245410
                                                          (let ((__tmp245411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__242974242975_
                            _L230854_
                            _new-case-lambda-expr230990_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp245411 _rest230454_)))
                 (__tmp245408
                  (let ((__tmp245409
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__242976242977_
                            _lambda-id230987_
                            _L230960_))))
                    (declare (not safe))
                    (cons __tmp245409 _bind230434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp230431_
                                                      __tmp245410
                                                      __tmp245408))))
                                               _hd230892230954_
                                               _hd230889230946_
                                               _hd230886230938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230868230898_
                                                 _g230869230901_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230868230898_ _g230869230901_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230868230898_ _g230869230901_)))
                              (let ()
                                (declare (not safe))
                                (_g230868230898_ _g230869230901_)))))
                      (let ()
                        (declare (not safe))
                        (_g230868230898_ _g230869230901_)))
                  (let ()
                    (declare (not safe))
                    (_g230868230898_ _g230869230901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230868230898_
                                                     _g230869230901_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230868230898_
                                             _g230869230901_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230868230898_ _g230869230901_)))))
                          (let ()
                            (declare (not safe))
                            (_g230868230898_ _g230869230901_)))))
                  (let ()
                    (declare (not safe))
                    (_g230868230898_ _g230869230901_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230867230993_ _L230853_))))
                                         (___kont244907244908_
                                          (lambda (_L230577_ _L230578_)
                                            (let* ((_g230592230645_
                                                    (lambda (_g230593230642_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230593230642_))))
                                                   (_g230591230821_
                                                    (lambda (_g230593230648_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230593230648_))
                                                          (let ((_e230601230650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230593230648_))))
                    (let ((_hd230600230653_
                           (let ()
                             (declare (not safe))
                             (##car _e230601230650_)))
                          (_tl230599230655_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230601230650_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230599230655_))
                          (let ((_e230604230658_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230599230655_))))
                            (let ((_hd230603230661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230604230658_)))
                                  (_tl230602230663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230604230658_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230603230661_))
                                  (let ((_e230607230666_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230603230661_))))
                                    (let ((_hd230606230669_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230607230666_)))
                                          (_tl230605230671_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230607230666_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230606230669_))
                                          (let ((_e230610230674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230606230669_))))
                                            (let ((_hd230609230677_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230610230674_)))
                                                  (_tl230608230679_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230610230674_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230609230677_))
                                                  (let ((_e230613230682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230609230677_))))
                                                    (let ((_hd230612230685_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230613230682_)))
                                                          (_tl230611230687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230613230682_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230611230687_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230608230679_))
                      (let ((_e230616230690_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230608230679_))))
                        (let ((_hd230615230693_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230616230690_)))
                              (_tl230614230695_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230616230690_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230615230693_))
                              (let ((_e230619230698_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230615230693_))))
                                (let ((_hd230618230701_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230619230698_)))
                                      (_tl230617230703_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230619230698_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230617230703_))
                                      (let ((_e230622230706_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230617230703_))))
                                        (let ((_hd230621230709_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230622230706_)))
                                              (_tl230620230711_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230622230706_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230621230709_))
                                              (let ((_e230625230714_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230621230709_))))
                                                (let ((_hd230624230717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230625230714_)))
                                                      (_tl230623230719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230625230714_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230624230717_))
                                                      (let ((_e230628230722_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230624230717_))))
                (let ((_hd230627230725_
                       (let () (declare (not safe)) (##car _e230628230722_)))
                      (_tl230626230727_
                       (let () (declare (not safe)) (##cdr _e230628230722_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230627230725_))
                      (let ((_e230631230730_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230627230725_))))
                        (let ((_hd230630230733_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230631230730_)))
                              (_tl230629230735_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230631230730_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230629230735_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230626230727_))
                                  (let ((_e230634230738_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230626230727_))))
                                    (let ((_hd230633230741_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230634230738_)))
                                          (_tl230632230743_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230634230738_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230632230743_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230623230719_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230620230711_))
                                                  (let ((_e230637230746_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230620230711_))))
                                                    (let ((_hd230636230749_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230637230746_)))
                                                          (_tl230635230751_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230637230746_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230635230751_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230614230695_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230605230671_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230602230663_))
                              (let ((_e230640230754_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230602230663_))))
                                (let ((_hd230639230757_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230640230754_)))
                                      (_tl230638230759_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230640230754_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230638230759_))
                                      ((lambda (_L230762_
                                                _L230763_
                                                _L230764_
                                                _L230765_
                                                _L230766_)
                                         (let* ((_get-kws-id230806_
                                                 (let ((__tmp245413
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230578_)))
                                                       (__tmp245412
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245413
                                                    __tmp245412)))
                                                (_get-kws-id230808_
                                                 (let ((__tmp245414
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230291_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230806_
                                                    __tmp245414)))
                                                (_main-id230810_
                                                 (let ((__tmp245416
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230578_)))
                                                       (__tmp245415
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp245416
                                                    __tmp245415)))
                                                (_main-id230812_
                                                 (let ((__tmp245417
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230291_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230810_
                                                    __tmp245417)))
                                                (_g245418_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230808_)))
                                                (_g245419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230812_)))
                                                (_new-kw-dispatch230816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230762_
                                                    _L230766_
                                                    _get-kws-id230808_)))
                                                (_new-get-kws230818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230763_
                                                    _L230765_
                                                    _main-id230812_))))
                                           (let ((__tmp245422
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230578_)))
                                                 (__tmp245421
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230808_)))
                                                 (__tmp245420
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230812_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp245422
                                              '" => "
                                              __tmp245421
                                              '" => "
                                              __tmp245420))
                                           (let ((__tmp245423
                                                  (let ((__tmp245428
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242974242975_
                                                            _main-id230812_
                                                            _L230764_
                                                            '#f)))
                                                        (__tmp245424
                                                         (let ((__tmp245427
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__242974242975_
                           _get-kws-id230808_
                           _new-get-kws230818_
                           '#f)))
                       (__tmp245425
                        (let ((__tmp245426
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__242974242975_
                                  _L230578_
                                  _new-kw-dispatch230816_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp245426 _rest230454_))))
                   (declare (not safe))
                   (cons __tmp245427 __tmp245425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp245428
                                                          __tmp245424))))
                                             (declare (not safe))
                                             (_lp230431_
                                              __tmp245423
                                              _bind230434_))))
                                       _hd230639230757_
                                       _hd230636230749_
                                       _hd230633230741_
                                       _hd230630230733_
                                       _hd230612230685_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230592230645_ _g230593230648_)))))
                              (let ()
                                (declare (not safe))
                                (_g230592230645_ _g230593230648_)))
                          (let ()
                            (declare (not safe))
                            (_g230592230645_ _g230593230648_)))
                      (let ()
                        (declare (not safe))
                        (_g230592230645_ _g230593230648_)))
                  (let ()
                    (declare (not safe))
                    (_g230592230645_ _g230593230648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230592230645_
                                                     _g230593230648_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230592230645_
                                                 _g230593230648_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230592230645_
                                             _g230593230648_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230592230645_ _g230593230648_)))
                              (let ()
                                (declare (not safe))
                                (_g230592230645_ _g230593230648_)))))
                      (let ()
                        (declare (not safe))
                        (_g230592230645_ _g230593230648_)))))
              (let ()
                (declare (not safe))
                (_g230592230645_ _g230593230648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230592230645_
                                                 _g230593230648_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230592230645_ _g230593230648_)))))
                              (let ()
                                (declare (not safe))
                                (_g230592230645_ _g230593230648_)))))
                      (let ()
                        (declare (not safe))
                        (_g230592230645_ _g230593230648_)))
                  (let ()
                    (declare (not safe))
                    (_g230592230645_ _g230593230648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230592230645_
                                                     _g230593230648_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230592230645_
                                             _g230593230648_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230592230645_ _g230593230648_)))))
                          (let ()
                            (declare (not safe))
                            (_g230592230645_ _g230593230648_)))))
                  (let ()
                    (declare (not safe))
                    (_g230592230645_ _g230593230648_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230591230821_ _L230577_))))
                                         (___kont244909244910_
                                          (lambda (_L230528_ _L230529_)
                                            (let ((__tmp245429
                                                   (let ((__tmp245430
                                                          (let ((__tmp245431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp245432
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L230528_))))
                           (declare (not safe))
                           (cons __tmp245432 '()))))
                    (declare (not safe))
                    (cons _L230529_ __tmp245431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp245430
                                                           _bind230434_))))
                                              (declare (not safe))
                                              (_lp230431_
                                               _rest230454_
                                               __tmp245429)))))
                                     (let* ((___match244976244977_
                                             (lambda (_e230488230553_
                                                      _hd230487230556_
                                                      _tl230486230558_
                                                      _e230491230561_
                                                      _hd230490230564_
                                                      _tl230489230566_
                                                      _e230494230569_
                                                      _hd230493230572_
                                                      _tl230492230574_)
                                               (let ((_L230577_
                                                      _hd230493230572_)
                                                     (_L230578_
                                                      _hd230490230564_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230578_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L230577_)))
                                                     (___kont244907244908_
                                                      _L230577_
                                                      _L230578_)
                                                     (___kont244909244910_
                                                      _hd230493230572_
                                                      _hd230487230556_)))))
                                            (___match244954244955_
                                             (lambda (_e230477230829_
                                                      _hd230476230832_
                                                      _tl230475230834_
                                                      _e230480230837_
                                                      _hd230479230840_
                                                      _tl230478230842_
                                                      _e230483230845_
                                                      _hd230482230848_
                                                      _tl230481230850_)
                                               (let ((_L230853_
                                                      _hd230482230848_)
                                                     (_L230854_
                                                      _hd230479230840_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230854_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230853_)))
                                                     (___kont244905244906_
                                                      _L230853_
                                                      _L230854_)
                                                     (___match244976244977_
                                                      _e230477230829_
                                                      _hd230476230832_
                                                      _tl230475230834_
                                                      _e230480230837_
                                                      _hd230479230840_
                                                      _tl230478230842_
                                                      _e230483230845_
                                                      _hd230482230848_
                                                      _tl230481230850_)))))
                                            (___match244932244933_
                                             (lambda (_e230466231001_
                                                      _hd230465231004_
                                                      _tl230464231006_
                                                      _e230469231009_
                                                      _hd230468231012_
                                                      _tl230467231014_
                                                      _e230472231017_
                                                      _hd230471231020_
                                                      _tl230470231022_)
                                               (let ((_L231025_
                                                      _hd230471231020_)
                                                     (_L231026_
                                                      _hd230468231012_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L231026_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L231025_)))
                                                     (___kont244903244904_
                                                      _L231025_
                                                      _L231026_)
                                                     (___match244954244955_
                                                      _e230466231001_
                                                      _hd230465231004_
                                                      _tl230464231006_
                                                      _e230469231009_
                                                      _hd230468231012_
                                                      _tl230467231014_
                                                      _e230472231017_
                                                      _hd230471231020_
                                                      _tl230470231022_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244901244902_))
                                           (let ((_e230466231001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244901244902_))))
                                             (let ((_tl230464231006_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230466231001_)))
                                                   (_hd230465231004_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230466231001_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230465231004_))
                                                   (let ((_e230469231009_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230465231004_))))
                                                     (let ((_tl230467231014_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230469231009_)))
                                                           (_hd230468231012_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230469231009_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230467231014_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230464231006_))
                       (let ((_e230472231017_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230464231006_))))
                         (let ((_tl230470231022_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230472231017_)))
                               (_hd230471231020_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230472231017_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230470231022_))
                               (___match244932244933_
                                _e230466231001_
                                _hd230465231004_
                                _tl230464231006_
                                _e230469231009_
                                _hd230468231012_
                                _tl230467231014_
                                _e230472231017_
                                _hd230471231020_
                                _tl230470231022_)
                               (let ()
                                 (declare (not safe))
                                 (_g230460230507_)))))
                       (let () (declare (not safe)) (_g230460230507_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230464231006_))
                       (let ((_e230502230520_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230464231006_))))
                         (let ((_tl230500230525_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230502230520_)))
                               (_hd230501230523_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230502230520_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230500230525_))
                               (___kont244909244910_
                                _hd230501230523_
                                _hd230465231004_)
                               (let ()
                                 (declare (not safe))
                                 (_g230460230507_)))))
                       (let () (declare (not safe)) (_g230460230507_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230464231006_))
                                                       (let ((_e230502230520_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230464231006_))))
                 (let ((_tl230500230525_
                        (let () (declare (not safe)) (##cdr _e230502230520_)))
                       (_hd230501230523_
                        (let () (declare (not safe)) (##car _e230502230520_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230500230525_))
                       (___kont244909244910_ _hd230501230523_ _hd230465231004_)
                       (let () (declare (not safe)) (_g230460230507_)))))
               (let () (declare (not safe)) (_g230460230507_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230460230507_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230435230443_))
                             (let ((_hd230440231121_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230435230443_)))
                                   (_tl230441231123_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230435230443_))))
                               (let* ((_hd231126_ _hd230440231121_)
                                      (_rest231128_ _tl230441231123_))
                                 (declare (not safe))
                                 (_K230439231118_ _rest231128_ _hd231126_)))
                             (let ()
                               (declare (not safe))
                               (_else230437230451_))))))))
          (let* ((___stx244993244994_ _stx230291_)
                 (_g230297230324_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244993244994_)))))
            (let ((___kont244995244996_
                   (lambda (_L230384_ _L230385_ _L230386_)
                     (let ((__tmp245434
                            (lambda ()
                              (let ((_hd230423_
                                     (let ((__tmp245435
                                            (let ((__tmp245436
                                                   (lambda (_g230415230418_
                                                            _g230416230420_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230415230418_
                                                             _g230416230420_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp245436
                                                      '()
                                                      _L230385_))))
                                       (declare (not safe))
                                       (_compile-bindings230294_ __tmp245435)))
                                    (_body230424_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L230384_))))
                                (let ((__tmp245437
                                       (let ((__tmp245438
                                              (let ((__tmp245439
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body230424_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd230423_
                                                      __tmp245439))))
                                         (declare (not safe))
                                         (cons _L230386_ __tmp245438))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp245437
                                   _stx230291_)))))
                           (__tmp245433
                            (let ((__obj245058
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj245058)
                              __obj245058)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp245434
                        gx#current-expander-context
                        __tmp245433))))
                  (___kont244999245000_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx230291_)))))
              (let ((___match245020245021_
                     (lambda (_e230304230336_
                              _hd230303230339_
                              _tl230302230341_
                              _e230307230344_
                              _hd230306230347_
                              _tl230305230349_
                              ___splice244997244998_
                              _target230308230352_
                              _tl230310230354_)
                       (letrec ((_loop230311230357_
                                 (lambda (_hd230309230360_ _bind230315230362_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd230309230360_))
                                       (let ((_e230312230365_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd230309230360_))))
                                         (let ((_lp-tl230314230370_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e230312230365_)))
                                               (_lp-hd230313230368_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e230312230365_))))
                                           (let ((__tmp245442
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd230313230368_
                                                          _bind230315230362_))))
                                             (declare (not safe))
                                             (_loop230311230357_
                                              _lp-tl230314230370_
                                              __tmp245442))))
                                       (let ((_bind230316230373_
                                              (reverse _bind230315230362_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl230305230349_))
                                             (let ((_e230319230376_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl230305230349_))))
                                               (let ((_tl230317230381_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e230319230376_)))
                                                     (_hd230318230379_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e230319230376_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl230317230381_))
                                                     (let ((_L230384_
                                                            _hd230318230379_)
                                                           (_L230385_
                                                            _bind230316230373_)
                                                           (_L230386_
                                                            _hd230303230339_))
                                                       (if (let ((__tmp245440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp245441
                                 (lambda (_g230407230410_ _g230408230412_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g230407230410_ _g230408230412_)))))
                            (declare (not safe))
                            (foldr1 __tmp245441 '() _L230385_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp245440))
                   (___kont244995244996_ _L230384_ _L230385_ _L230386_)
                   (___kont244999245000_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont244999245000_))))
                                             (___kont244999245000_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop230311230357_ _target230308230352_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244993244994_))
                    (let ((_e230304230336_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244993244994_))))
                      (let ((_tl230302230341_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230304230336_)))
                            (_hd230303230339_
                             (let ()
                               (declare (not safe))
                               (##car _e230304230336_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230302230341_))
                            (let ((_e230307230344_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230302230341_))))
                              (let ((_tl230305230349_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230307230344_)))
                                    (_hd230306230347_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230307230344_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd230306230347_))
                                    (let ((___splice244997244998_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd230306230347_
                                              '0))))
                                      (let ((_tl230310230354_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244997244998_
                                                '1)))
                                            (_target230308230352_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244997244998_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230310230354_))
                                            (___match245020245021_
                                             _e230304230336_
                                             _hd230303230339_
                                             _tl230302230341_
                                             _e230307230344_
                                             _hd230306230347_
                                             _tl230305230349_
                                             ___splice244997244998_
                                             _target230308230352_
                                             _tl230310230354_)
                                            (___kont244999245000_))))
                                    (___kont244999245000_))))
                            (___kont244999245000_))))
                    (___kont244999245000_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind230209_)
        (let* ((___stx245023245024_ _bind230209_)
               (_g230212230229_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx245023245024_)))))
          (let ((___kont245025245026_
                 (lambda (_L230265_ _L230266_)
                   (if (let () (declare (not safe)) (gx#identifier? _L230266_))
                       (let ((_$e230282_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L230265_))))
                         (if _$e230282_
                             _$e230282_
                             (let ((_$e230285_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L230265_))))
                               (if _$e230285_
                                   _$e230285_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L230265_))))))
                       '#f)))
                (___kont245027245028_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx245023245024_))
                (let ((_e230218230241_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx245023245024_))))
                  (let ((_tl230216230246_
                         (let () (declare (not safe)) (##cdr _e230218230241_)))
                        (_hd230217230244_
                         (let ()
                           (declare (not safe))
                           (##car _e230218230241_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd230217230244_))
                        (let ((_e230221230249_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd230217230244_))))
                          (let ((_tl230219230254_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230221230249_)))
                                (_hd230220230252_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230221230249_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230219230254_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl230216230246_))
                                    (let ((_e230224230257_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl230216230246_))))
                                      (let ((_tl230222230262_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230224230257_)))
                                            (_hd230223230260_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230224230257_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230222230262_))
                                            (___kont245025245026_
                                             _hd230223230260_
                                             _hd230220230252_)
                                            (___kont245027245028_))))
                                    (___kont245027245028_))
                                (___kont245027245028_))))
                        (___kont245027245028_))))
                (___kont245027245028_))))))))
