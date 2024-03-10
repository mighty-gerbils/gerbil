(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710064750)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl123609_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125702 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl123609_ __tmp125702))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123609_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123609_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123609_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123609_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl123609_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx123592_ . _args123594_)
        (let ((__tmp125704
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123594_)
                     (gxc#compile-e__0 _stx123592_)
                     (let ((_arg1123599_ (car _args123594_))
                           (_rest123601_ (cdr _args123594_)))
                       (if (null? _rest123601_)
                           (gxc#compile-e__1 _stx123592_ _arg1123599_)
                           (let ((_arg2123604_ (car _rest123601_))
                                 (_rest123606_ (cdr _rest123601_)))
                             (if (null? _rest123606_)
                                 (gxc#compile-e__2
                                  _stx123592_
                                  _arg1123599_
                                  _arg2123604_)
                                 (apply gxc#compile-e
                                        _stx123592_
                                        _arg1123599_
                                        _arg2123604_
                                        _rest123606_))))))))
              (__tmp125703 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp125704
           gxc#current-compile-methods
           __tmp125703))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl123589_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125705 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl123589_ __tmp125705))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123589_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123589_ '%#call gxc#basic-expression-type-call%))
           _tbl123589_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx123572_ . _args123574_)
        (let ((__tmp125707
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123574_)
                     (gxc#compile-e__0 _stx123572_)
                     (let ((_arg1123579_ (car _args123574_))
                           (_rest123581_ (cdr _args123574_)))
                       (if (null? _rest123581_)
                           (gxc#compile-e__1 _stx123572_ _arg1123579_)
                           (let ((_arg2123584_ (car _rest123581_))
                                 (_rest123586_ (cdr _rest123581_)))
                             (if (null? _rest123586_)
                                 (gxc#compile-e__2
                                  _stx123572_
                                  _arg1123579_
                                  _arg2123584_)
                                 (apply gxc#compile-e
                                        _stx123572_
                                        _arg1123579_
                                        _arg2123584_
                                        _rest123586_))))))))
              (__tmp125706 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp125707
           gxc#current-compile-methods
           __tmp125706))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl123569_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125708 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl123569_ __tmp125708))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123569_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123569_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123569_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123569_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123569_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123569_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123569_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123569_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123569_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123569_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123569_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123569_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123569_ '%#set! gxc#collect-body-setq%))
           _tbl123569_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx123552_ . _args123554_)
        (let ((__tmp125710
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123554_)
                     (gxc#compile-e__0 _stx123552_)
                     (let ((_arg1123559_ (car _args123554_))
                           (_rest123561_ (cdr _args123554_)))
                       (if (null? _rest123561_)
                           (gxc#compile-e__1 _stx123552_ _arg1123559_)
                           (let ((_arg2123564_ (car _rest123561_))
                                 (_rest123566_ (cdr _rest123561_)))
                             (if (null? _rest123566_)
                                 (gxc#compile-e__2
                                  _stx123552_
                                  _arg1123559_
                                  _arg2123564_)
                                 (apply gxc#compile-e
                                        _stx123552_
                                        _arg1123559_
                                        _arg2123564_
                                        _rest123566_))))))))
              (__tmp125709 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp125710
           gxc#current-compile-methods
           __tmp125709))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl123549_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125711 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl123549_ __tmp125711))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123549_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123549_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123549_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123549_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123549_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123549_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123549_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123549_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl123549_ '%#ref gxc#basic-expression-type-ref%))
           _tbl123549_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx123532_ . _args123534_)
        (let ((__tmp125713
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123534_)
                     (gxc#compile-e__0 _stx123532_)
                     (let ((_arg1123539_ (car _args123534_))
                           (_rest123541_ (cdr _args123534_)))
                       (if (null? _rest123541_)
                           (gxc#compile-e__1 _stx123532_ _arg1123539_)
                           (let ((_arg2123544_ (car _rest123541_))
                                 (_rest123546_ (cdr _rest123541_)))
                             (if (null? _rest123546_)
                                 (gxc#compile-e__2
                                  _stx123532_
                                  _arg1123539_
                                  _arg2123544_)
                                 (apply gxc#compile-e
                                        _stx123532_
                                        _arg1123539_
                                        _arg2123544_
                                        _rest123546_))))))))
              (__tmp125712 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp125713
           gxc#current-compile-methods
           __tmp125712))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl123529_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp125714 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl123529_ __tmp125714))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123529_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123529_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123529_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl123529_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl123529_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx123512_ . _args123514_)
        (let ((__tmp125716
               (lambda ()
                 (declare (not safe))
                 (if (null? _args123514_)
                     (gxc#compile-e__0 _stx123512_)
                     (let ((_arg1123519_ (car _args123514_))
                           (_rest123521_ (cdr _args123514_)))
                       (if (null? _rest123521_)
                           (gxc#compile-e__1 _stx123512_ _arg1123519_)
                           (let ((_arg2123524_ (car _rest123521_))
                                 (_rest123526_ (cdr _rest123521_)))
                             (if (null? _rest123526_)
                                 (gxc#compile-e__2
                                  _stx123512_
                                  _arg1123519_
                                  _arg2123524_)
                                 (apply gxc#compile-e
                                        _stx123512_
                                        _arg1123519_
                                        _arg2123524_
                                        _rest123526_))))))))
              (__tmp125715 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp125716
           gxc#current-compile-methods
           __tmp125715))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx123415_)
        (let* ((___stx123622123623_ _stx123415_)
               (_g123418123438_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx123622123623_)))))
          (let ((___kont123624123625_
                 (lambda (_L123482_ _L123483_)
                   (let ((_sym123501_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123483_))))
                     (if (let ((__tmp125717 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp125717 _sym123501_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym123501_))
                         (let ((_type123502123504_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L123482_))))
                           (if _type123502123504_
                               (let ((_type123507_ _type123502123504_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym123501_
                                  _type123507_))
                               '#f))))))
                (___kont123626123627_ (lambda () '#!void)))
            (let ((___match123655123656_
                   (lambda (_e123422123450_
                            _hd123423123453_
                            _tl123424123455_
                            _e123425123458_
                            _hd123426123461_
                            _tl123427123463_
                            _e123428123466_
                            _hd123429123469_
                            _tl123430123471_
                            _e123431123474_
                            _hd123432123477_
                            _tl123433123479_)
                     (let ((_L123482_ _hd123432123477_)
                           (_L123483_ _hd123429123469_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L123483_))
                           (___kont123624123625_ _L123482_ _L123483_)
                           (___kont123626123627_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx123622123623_))
                  (let ((_e123422123450_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx123622123623_))))
                    (let ((_tl123424123455_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123422123450_)))
                          (_hd123423123453_
                           (let ()
                             (declare (not safe))
                             (##car _e123422123450_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123424123455_))
                          (let ((_e123425123458_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123424123455_))))
                            (let ((_tl123427123463_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123425123458_)))
                                  (_hd123426123461_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123425123458_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123426123461_))
                                  (let ((_e123428123466_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123426123461_))))
                                    (let ((_tl123430123471_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123428123466_)))
                                          (_hd123429123469_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123428123466_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123430123471_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123427123463_))
                                              (let ((_e123431123474_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123427123463_))))
                                                (let ((_tl123433123479_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123431123474_)))
                                                      (_hd123432123477_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123431123474_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123433123479_))
                                                      (___match123655123656_
                                                       _e123422123450_
                                                       _hd123423123453_
                                                       _tl123424123455_
                                                       _e123425123458_
                                                       _hd123426123461_
                                                       _tl123427123463_
                                                       _e123428123466_
                                                       _hd123429123469_
                                                       _tl123430123471_
                                                       _e123431123474_
                                                       _hd123432123477_
                                                       _tl123433123479_)
                                                      (___kont123626123627_))))
                                              (___kont123626123627_))
                                          (___kont123626123627_))))
                                  (___kont123626123627_))))
                          (___kont123626123627_))))
                  (___kont123626123627_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx123271_)
        (let* ((___stx123658123659_ _stx123271_)
               (_g123274123305_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx123658123659_)))))
          (let ((___kont123660123661_
                 (lambda (_L123387_ _L123388_)
                   (let ((_sym123404_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123388_))))
                     (if (let ((__tmp125718 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp125718 _sym123404_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym123404_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym123404_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym123404_))
                             (let ((_type123405123407_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L123387_))))
                               (if _type123405123407_
                                   (let ((_type123410_ _type123405123407_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym123404_
                                      _type123410_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L123387_)))))
                (___kont123662123663_
                 (lambda (_L123334_ _L123335_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L123334_)))))
            (let ((___match123691123692_
                   (lambda (_e123278123355_
                            _hd123279123358_
                            _tl123280123360_
                            _e123281123363_
                            _hd123282123366_
                            _tl123283123368_
                            _e123284123371_
                            _hd123285123374_
                            _tl123286123376_
                            _e123287123379_
                            _hd123288123382_
                            _tl123289123384_)
                     (let ((_L123387_ _hd123288123382_)
                           (_L123388_ _hd123285123374_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L123388_))
                           (___kont123660123661_ _L123387_ _L123388_)
                           (___kont123662123663_
                            _hd123288123382_
                            _hd123282123366_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx123658123659_))
                  (let ((_e123278123355_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx123658123659_))))
                    (let ((_tl123280123360_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123278123355_)))
                          (_hd123279123358_
                           (let ()
                             (declare (not safe))
                             (##car _e123278123355_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123280123360_))
                          (let ((_e123281123363_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123280123360_))))
                            (let ((_tl123283123368_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123281123363_)))
                                  (_hd123282123366_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123281123363_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123282123366_))
                                  (let ((_e123284123371_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123282123366_))))
                                    (let ((_tl123286123376_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123284123371_)))
                                          (_hd123285123374_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123284123371_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123286123376_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123283123368_))
                                              (let ((_e123287123379_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123283123368_))))
                                                (let ((_tl123289123384_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123287123379_)))
                                                      (_hd123288123382_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123287123379_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123289123384_))
                                                      (___match123691123692_
                                                       _e123278123355_
                                                       _hd123279123358_
                                                       _tl123280123360_
                                                       _e123281123363_
                                                       _hd123282123366_
                                                       _tl123283123368_
                                                       _e123284123371_
                                                       _hd123285123374_
                                                       _tl123286123376_
                                                       _e123287123379_
                                                       _hd123288123382_
                                                       _tl123289123384_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g123274123305_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g123274123305_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123283123368_))
                                              (let ((_e123298123326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123283123368_))))
                                                (let ((_tl123300123331_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123298123326_)))
                                                      (_hd123299123329_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123298123326_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123300123331_))
                                                      (___kont123662123663_
                                                       _hd123299123329_
                                                       _hd123282123366_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g123274123305_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g123274123305_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123283123368_))
                                      (let ((_e123298123326_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123283123368_))))
                                        (let ((_tl123300123331_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123298123326_)))
                                              (_hd123299123329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123298123326_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123300123331_))
                                              (___kont123662123663_
                                               _hd123299123329_
                                               _hd123282123366_)
                                              (let ()
                                                (declare (not safe))
                                                (_g123274123305_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123274123305_))))))
                          (let () (declare (not safe)) (_g123274123305_)))))
                  (let () (declare (not safe)) (_g123274123305_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx123056_)
        (letrec ((_collect-e123058_
                  (lambda (_hd123215_ _expr123216_)
                    (let* ((___stx123714123715_ _hd123215_)
                           (_g123219123229_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx123714123715_)))))
                      (let ((___kont123716123717_
                             (lambda (_L123249_)
                               (let ((_sym123260_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L123249_))))
                                 (if (let ((__tmp125719
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp125719 _sym123260_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym123260_))
                                     (let ((_type123261123263_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr123216_))))
                                       (if _type123261123263_
                                           (let ((_type123266_
                                                  _type123261123263_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym123260_
                                              _type123266_
                                              '#t))
                                           '#f))))))
                            (___kont123718123719_ (lambda () '#!void)))
                        (let ((___match123727123728_
                               (lambda (_e123222123241_
                                        _hd123223123244_
                                        _tl123224123246_)
                                 (let ((_L123249_ _hd123223123244_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L123249_))
                                       (___kont123716123717_ _L123249_)
                                       (___kont123718123719_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx123714123715_))
                              (let ((_e123222123241_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx123714123715_))))
                                (let ((_tl123224123246_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123222123241_)))
                                      (_hd123223123244_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123222123241_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123224123246_))
                                      (___match123727123728_
                                       _e123222123241_
                                       _hd123223123244_
                                       _tl123224123246_)
                                      (___kont123718123719_))))
                              (___kont123718123719_))))))))
          (let* ((_g123060123095_
                  (lambda (_g123061123092_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g123061123092_))))
                 (_g123059123212_
                  (lambda (_g123061123098_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g123061123098_))
                        (let ((_e123065123100_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g123061123098_))))
                          (let ((_hd123066123103_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123065123100_)))
                                (_tl123067123105_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123065123100_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123067123105_))
                                (let ((_e123068123108_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123067123105_))))
                                  (let ((_hd123069123111_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123068123108_)))
                                        (_tl123070123113_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123068123108_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd123069123111_))
                                        (let ((_g125720_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd123069123111_
                                                  '0))))
                                          (begin
                                            (let ((_g125721_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g125720_)
                                                         (##vector-length
                                                          _g125720_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g125721_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g125721_)))
                                            (let ((_target123071123116_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g125720_
                                                      0)))
                                                  (_tl123073123118_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g125720_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123073123118_))
                                                  (letrec ((_loop123074123121_
                                                            (lambda (_hd123072123124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr123078123126_
                             _hd123079123128_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123072123124_))
                          (let ((_e123075123131_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123072123124_))))
                            (let ((_lp-hd123076123134_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123075123131_)))
                                  (_lp-tl123077123136_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123075123131_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd123076123134_))
                                  (let ((_e123082123139_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd123076123134_))))
                                    (let ((_hd123083123142_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123082123139_)))
                                          (_tl123084123144_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123082123139_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123084123144_))
                                          (let ((_e123085123147_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123084123144_))))
                                            (let ((_hd123086123150_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123085123147_)))
                                                  (_tl123087123152_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123085123147_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123087123152_))
                                                  (let ((__tmp125723
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd123086123150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr123078123126_)))
                (__tmp125722
                 (let ()
                   (declare (not safe))
                   (cons _hd123083123142_ _hd123079123128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop123074123121_
                                                     _lp-tl123077123136_
                                                     __tmp125723
                                                     __tmp125722))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g123060123095_
                                                     _g123061123098_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g123060123095_
                                             _g123061123098_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g123060123095_ _g123061123098_)))))
                          (let ((_expr123080123155_
                                 (reverse _expr123078123126_))
                                (_hd123081123157_ (reverse _hd123079123128_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123070123113_))
                                (let ((_e123088123160_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123070123113_))))
                                  (let ((_hd123089123163_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123088123160_)))
                                        (_tl123090123165_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123088123160_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123090123165_))
                                        ((lambda (_L123168_
                                                  _L123169_
                                                  _L123170_)
                                           (for-each
                                            _collect-e123058_
                                            (let ((__tmp125724
                                                   (lambda (_g123190123193_
                                                            _g123191123195_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g123190123193_
                                                             _g123191123195_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp125724
                                                      '()
                                                      _L123170_))
                                            (let ((__tmp125725
                                                   (lambda (_g123197123200_
                                                            _g123198123202_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g123197123200_
                                                             _g123198123202_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp125725
                                                      '()
                                                      _L123169_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp125726
                                                   (lambda (_g123204123207_
                                                            _g123205123209_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g123204123207_
                                                             _g123205123209_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp125726
                                                      '()
                                                      _L123169_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L123168_)))
                                         _hd123089123163_
                                         _expr123080123155_
                                         _hd123081123157_)
                                        (let ()
                                          (declare (not safe))
                                          (_g123060123095_ _g123061123098_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g123060123095_ _g123061123098_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop123074123121_
                                                       _target123071123116_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g123060123095_
                                                     _g123061123098_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g123060123095_ _g123061123098_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g123060123095_ _g123061123098_)))))
                        (let ()
                          (declare (not safe))
                          (_g123060123095_ _g123061123098_))))))
            (declare (not safe))
            (_g123059123212_ _stx123056_)))))
    (define gxc#collect-type-call%
      (lambda (_stx122548_)
        (let* ((___stx123730123731_ _stx122548_)
               (_g122552122667_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx123730123731_)))))
          (let ((___kont123732123733_
                 (lambda (_L123006_ _L123007_ _L123008_ _L123009_ _L123010_)
                   (let ((__tmp125730
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123009_)))
                         (__tmp125729
                          (let () (declare (not safe)) (gx#stx-e _L123008_)))
                         (__tmp125728
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123007_)))
                         (__tmp125727
                          (let () (declare (not safe)) (gx#stx-e _L123006_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp125730
                      __tmp125729
                      __tmp125728
                      __tmp125727))))
                (___kont123734123735_
                 (lambda (_L122834_ _L122835_ _L122836_ _L122837_)
                   (let ((__tmp125733
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L122836_)))
                         (__tmp125732
                          (let () (declare (not safe)) (gx#stx-e _L122835_)))
                         (__tmp125731
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L122834_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp125733
                      __tmp125732
                      __tmp125731
                      '#f))))
                (___kont123736123737_
                 (lambda (_L122704_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp125734
                           (lambda (_g122717122720_ _g122718122722_)
                             (let ()
                               (declare (not safe))
                               (cons _g122717122720_ _g122718122722_)))))
                      (declare (not safe))
                      (foldr1 __tmp125734 '() _L122704_))))))
            (let* ((___match123987123988_
                    (lambda (_e122651122672_
                             _hd122652122675_
                             _tl122653122677_
                             ___splice123738123739_
                             _target122654122680_
                             _tl122656122682_)
                      (letrec ((_loop122657122685_
                                (lambda (_hd122655122688_ _expr122661122690_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122655122688_))
                                      (let ((_e122658122693_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122655122688_))))
                                        (let ((_lp-tl122660122698_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122658122693_)))
                                              (_lp-hd122659122696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122658122693_))))
                                          (let ((__tmp125735
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122659122696_
                                                         _expr122661122690_))))
                                            (declare (not safe))
                                            (_loop122657122685_
                                             _lp-tl122660122698_
                                             __tmp125735))))
                                      (let ((_expr122662122701_
                                             (reverse _expr122661122690_)))
                                        (___kont123736123737_
                                         _expr122662122701_))))))
                        (let ()
                          (declare (not safe))
                          (_loop122657122685_ _target122654122680_ '())))))
                   (___match123867123868_
                    (lambda (_e122559122878_
                             _hd122560122881_
                             _tl122561122883_
                             _e122562122886_
                             _hd122563122889_
                             _tl122564122891_
                             _e122565122894_
                             _hd122566122897_
                             _tl122567122899_
                             _e122568122902_
                             _hd122569122905_
                             _tl122570122907_
                             _e122571122910_
                             _hd122572122913_
                             _tl122573122915_
                             _e122574122918_
                             _hd122575122921_
                             _tl122576122923_
                             _e122577122926_
                             _hd122578122929_
                             _tl122579122931_
                             _e122580122934_
                             _hd122581122937_
                             _tl122582122939_
                             _e122583122942_
                             _hd122584122945_
                             _tl122585122947_
                             _e122586122950_
                             _hd122587122953_
                             _tl122588122955_
                             _e122589122958_
                             _hd122590122961_
                             _tl122591122963_
                             _e122592122966_
                             _hd122593122969_
                             _tl122594122971_
                             _e122595122974_
                             _hd122596122977_
                             _tl122597122979_
                             _e122598122982_
                             _hd122599122985_
                             _tl122600122987_
                             _e122601122990_
                             _hd122602122993_
                             _tl122603122995_
                             _e122604122998_
                             _hd122605123001_
                             _tl122606123003_)
                      (let ((_L123006_ _hd122605123001_)
                            (_L123007_ _hd122596122977_)
                            (_L123008_ _hd122587122953_)
                            (_L123009_ _hd122578122929_)
                            (_L123010_ _hd122569122905_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L123010_
                               'bind-method!))
                            (___kont123732123733_
                             _L123006_
                             _L123007_
                             _L123008_
                             _L123009_
                             _L123010_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl122561122883_))
                                (let ((___splice123738123739_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl122561122883_
                                          '0))))
                                  (let ((_tl122656122682_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice123738123739_
                                            '1)))
                                        (_target122654122680_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice123738123739_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122656122682_))
                                        (___match123987123988_
                                         _e122559122878_
                                         _hd122560122881_
                                         _tl122561122883_
                                         ___splice123738123739_
                                         _target122654122680_
                                         _tl122656122682_)
                                        (let ()
                                          (declare (not safe))
                                          (_g122552122667_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122552122667_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx123730123731_))
                  (let ((_e122559122878_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx123730123731_))))
                    (let ((_tl122561122883_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122559122878_)))
                          (_hd122560122881_
                           (let ()
                             (declare (not safe))
                             (##car _e122559122878_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122561122883_))
                          (let ((_e122562122886_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122561122883_))))
                            (let ((_tl122564122891_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122562122886_)))
                                  (_hd122563122889_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122562122886_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122563122889_))
                                  (let ((_e122565122894_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122563122889_))))
                                    (let ((_tl122567122899_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122565122894_)))
                                          (_hd122566122897_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122565122894_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122566122897_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122566122897_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122567122899_))
                                                  (let ((_e122568122902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122567122899_))))
                                                    (let ((_tl122570122907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122568122902_)))
                                                          (_hd122569122905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122568122902_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122570122907_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl122564122891_))
                      (let ((_e122571122910_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl122564122891_))))
                        (let ((_tl122573122915_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122571122910_)))
                              (_hd122572122913_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122571122910_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd122572122913_))
                              (let ((_e122574122918_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd122572122913_))))
                                (let ((_tl122576122923_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122574122918_)))
                                      (_hd122575122921_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122574122918_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd122575122921_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd122575122921_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122576122923_))
                                              (let ((_e122577122926_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122576122923_))))
                                                (let ((_tl122579122931_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122577122926_)))
                                                      (_hd122578122929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122577122926_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122579122931_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl122573122915_))
                                                          (let ((_e122580122934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl122573122915_))))
                    (let ((_tl122582122939_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122580122934_)))
                          (_hd122581122937_
                           (let ()
                             (declare (not safe))
                             (##car _e122580122934_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd122581122937_))
                          (let ((_e122583122942_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd122581122937_))))
                            (let ((_tl122585122947_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122583122942_)))
                                  (_hd122584122945_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122583122942_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd122584122945_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd122584122945_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl122585122947_))
                                          (let ((_e122586122950_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl122585122947_))))
                                            (let ((_tl122588122955_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122586122950_)))
                                                  (_hd122587122953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122586122950_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122588122955_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122582122939_))
                                                      (let ((_e122589122958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122582122939_))))
                (let ((_tl122591122963_
                       (let () (declare (not safe)) (##cdr _e122589122958_)))
                      (_hd122590122961_
                       (let () (declare (not safe)) (##car _e122589122958_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122590122961_))
                      (let ((_e122592122966_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122590122961_))))
                        (let ((_tl122594122971_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122592122966_)))
                              (_hd122593122969_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122592122966_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122593122969_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122593122969_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122594122971_))
                                      (let ((_e122595122974_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122594122971_))))
                                        (let ((_tl122597122979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122595122974_)))
                                              (_hd122596122977_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122595122974_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122597122979_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122591122963_))
                                                  (let ((_e122598122982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122591122963_))))
                                                    (let ((_tl122600122987_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122598122982_)))
                                                          (_hd122599122985_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122598122982_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122599122985_))
                                                          (let ((_e122601122990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122599122985_))))
                    (let ((_tl122603122995_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122601122990_)))
                          (_hd122602122993_
                           (let ()
                             (declare (not safe))
                             (##car _e122601122990_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122602122993_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd122602122993_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122603122995_))
                                  (let ((_e122604122998_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122603122995_))))
                                    (let ((_tl122606123003_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122604122998_)))
                                          (_hd122605123001_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122604122998_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122606123003_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122600122987_))
                                              (___match123867123868_
                                               _e122559122878_
                                               _hd122560122881_
                                               _tl122561122883_
                                               _e122562122886_
                                               _hd122563122889_
                                               _tl122564122891_
                                               _e122565122894_
                                               _hd122566122897_
                                               _tl122567122899_
                                               _e122568122902_
                                               _hd122569122905_
                                               _tl122570122907_
                                               _e122571122910_
                                               _hd122572122913_
                                               _tl122573122915_
                                               _e122574122918_
                                               _hd122575122921_
                                               _tl122576122923_
                                               _e122577122926_
                                               _hd122578122929_
                                               _tl122579122931_
                                               _e122580122934_
                                               _hd122581122937_
                                               _tl122582122939_
                                               _e122583122942_
                                               _hd122584122945_
                                               _tl122585122947_
                                               _e122586122950_
                                               _hd122587122953_
                                               _tl122588122955_
                                               _e122589122958_
                                               _hd122590122961_
                                               _tl122591122963_
                                               _e122592122966_
                                               _hd122593122969_
                                               _tl122594122971_
                                               _e122595122974_
                                               _hd122596122977_
                                               _tl122597122979_
                                               _e122598122982_
                                               _hd122599122985_
                                               _tl122600122987_
                                               _e122601122990_
                                               _hd122602122993_
                                               _tl122603122995_
                                               _e122604122998_
                                               _hd122605123001_
                                               _tl122606123003_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl122561122883_))
                                                  (let ((___splice123738123739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl122561122883_
                                                            '0))))
                                                    (let ((_tl122656122682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123738123739_
                                                              '1)))
                                                          (_target122654122680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123738123739_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122656122682_))
                                                          (___match123987123988_
                                                           _e122559122878_
                                                           _hd122560122881_
                                                           _tl122561122883_
                                                           ___splice123738123739_
                                                           _target122654122680_
                                                           _tl122656122682_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122552122667_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122552122667_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl122561122883_))
                                              (let ((___splice123738123739_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl122561122883_
                                                        '0))))
                                                (let ((_tl122656122682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123738123739_
                                                          '1)))
                                                      (_target122654122680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123738123739_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122656122682_))
                                                      (___match123987123988_
                                                       _e122559122878_
                                                       _hd122560122881_
                                                       _tl122561122883_
                                                       ___splice123738123739_
                                                       _target122654122680_
                                                       _tl122656122682_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122552122667_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122552122667_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl122561122883_))
                                      (let ((___splice123738123739_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl122561122883_
                                                '0))))
                                        (let ((_tl122656122682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123738123739_
                                                  '1)))
                                              (_target122654122680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123738123739_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122656122682_))
                                              (___match123987123988_
                                               _e122559122878_
                                               _hd122560122881_
                                               _tl122561122883_
                                               ___splice123738123739_
                                               _target122654122680_
                                               _tl122656122682_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122552122667_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122552122667_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl122561122883_))
                                  (let ((___splice123738123739_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl122561122883_
                                            '0))))
                                    (let ((_tl122656122682_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123738123739_
                                              '1)))
                                          (_target122654122680_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123738123739_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122656122682_))
                                          (___match123987123988_
                                           _e122559122878_
                                           _hd122560122881_
                                           _tl122561122883_
                                           ___splice123738123739_
                                           _target122654122680_
                                           _tl122656122682_)
                                          (let ()
                                            (declare (not safe))
                                            (_g122552122667_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122552122667_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl122561122883_))
                              (let ((___splice123738123739_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl122561122883_
                                        '0))))
                                (let ((_tl122656122682_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123738123739_
                                          '1)))
                                      (_target122654122680_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123738123739_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122656122682_))
                                      (___match123987123988_
                                       _e122559122878_
                                       _hd122560122881_
                                       _tl122561122883_
                                       ___splice123738123739_
                                       _target122654122680_
                                       _tl122656122682_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122552122667_)))))
                              (let ()
                                (declare (not safe))
                                (_g122552122667_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl122561122883_))
                      (let ((___splice123738123739_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl122561122883_ '0))))
                        (let ((_tl122656122682_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123738123739_ '1)))
                              (_target122654122680_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123738123739_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122656122682_))
                              (___match123987123988_
                               _e122559122878_
                               _hd122560122881_
                               _tl122561122883_
                               ___splice123738123739_
                               _target122654122680_
                               _tl122656122682_)
                              (let ()
                                (declare (not safe))
                                (_g122552122667_)))))
                      (let () (declare (not safe)) (_g122552122667_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122591122963_))
                                                      (if (let ((__tmp125736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp125736 'bind-method!))
                  (let ((_L122834_ _hd122596122977_)
                        (_L122835_ _hd122587122953_)
                        (_L122836_ _hd122578122929_)
                        (_L122837_ _hd122569122905_))
                    (___kont123734123735_
                     _L122834_
                     _L122835_
                     _L122836_
                     _L122837_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl122561122883_))
                      (let ((___splice123738123739_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl122561122883_ '0))))
                        (let ((_tl122656122682_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123738123739_ '1)))
                              (_target122654122680_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123738123739_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122656122682_))
                              (___match123987123988_
                               _e122559122878_
                               _hd122560122881_
                               _tl122561122883_
                               ___splice123738123739_
                               _target122654122680_
                               _tl122656122682_)
                              (let ()
                                (declare (not safe))
                                (_g122552122667_)))))
                      (let () (declare (not safe)) (_g122552122667_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl122561122883_))
                  (let ((___splice123738123739_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl122561122883_ '0))))
                    (let ((_tl122656122682_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123738123739_ '1)))
                          (_target122654122680_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123738123739_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122656122682_))
                          (___match123987123988_
                           _e122559122878_
                           _hd122560122881_
                           _tl122561122883_
                           ___splice123738123739_
                           _target122654122680_
                           _tl122656122682_)
                          (let () (declare (not safe)) (_g122552122667_)))))
                  (let () (declare (not safe)) (_g122552122667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl122561122883_))
                                                  (let ((___splice123738123739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl122561122883_
                                                            '0))))
                                                    (let ((_tl122656122682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123738123739_
                                                              '1)))
                                                          (_target122654122680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123738123739_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122656122682_))
                                                          (___match123987123988_
                                                           _e122559122878_
                                                           _hd122560122881_
                                                           _tl122561122883_
                                                           ___splice123738123739_
                                                           _target122654122680_
                                                           _tl122656122682_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122552122667_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122552122667_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl122561122883_))
                                          (let ((___splice123738123739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl122561122883_
                                                    '0))))
                                            (let ((_tl122656122682_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123738123739_
                                                      '1)))
                                                  (_target122654122680_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123738123739_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122656122682_))
                                                  (___match123987123988_
                                                   _e122559122878_
                                                   _hd122560122881_
                                                   _tl122561122883_
                                                   ___splice123738123739_
                                                   _target122654122680_
                                                   _tl122656122682_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122552122667_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122552122667_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl122561122883_))
                                      (let ((___splice123738123739_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl122561122883_
                                                '0))))
                                        (let ((_tl122656122682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123738123739_
                                                  '1)))
                                              (_target122654122680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123738123739_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122656122682_))
                                              (___match123987123988_
                                               _e122559122878_
                                               _hd122560122881_
                                               _tl122561122883_
                                               ___splice123738123739_
                                               _target122654122680_
                                               _tl122656122682_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122552122667_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122552122667_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl122561122883_))
                                  (let ((___splice123738123739_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl122561122883_
                                            '0))))
                                    (let ((_tl122656122682_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123738123739_
                                              '1)))
                                          (_target122654122680_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123738123739_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122656122682_))
                                          (___match123987123988_
                                           _e122559122878_
                                           _hd122560122881_
                                           _tl122561122883_
                                           ___splice123738123739_
                                           _target122654122680_
                                           _tl122656122682_)
                                          (let ()
                                            (declare (not safe))
                                            (_g122552122667_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122552122667_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl122561122883_))
                          (let ((___splice123738123739_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl122561122883_
                                    '0))))
                            (let ((_tl122656122682_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice123738123739_ '1)))
                                  (_target122654122680_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice123738123739_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122656122682_))
                                  (___match123987123988_
                                   _e122559122878_
                                   _hd122560122881_
                                   _tl122561122883_
                                   ___splice123738123739_
                                   _target122654122680_
                                   _tl122656122682_)
                                  (let ()
                                    (declare (not safe))
                                    (_g122552122667_)))))
                          (let () (declare (not safe)) (_g122552122667_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl122561122883_))
                  (let ((___splice123738123739_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl122561122883_ '0))))
                    (let ((_tl122656122682_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123738123739_ '1)))
                          (_target122654122680_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123738123739_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122656122682_))
                          (___match123987123988_
                           _e122559122878_
                           _hd122560122881_
                           _tl122561122883_
                           ___splice123738123739_
                           _target122654122680_
                           _tl122656122682_)
                          (let () (declare (not safe)) (_g122552122667_)))))
                  (let () (declare (not safe)) (_g122552122667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl122561122883_))
                                                      (let ((___splice123738123739_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl122561122883_ '0))))
                (let ((_tl122656122682_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice123738123739_ '1)))
                      (_target122654122680_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice123738123739_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl122656122682_))
                      (___match123987123988_
                       _e122559122878_
                       _hd122560122881_
                       _tl122561122883_
                       ___splice123738123739_
                       _target122654122680_
                       _tl122656122682_)
                      (let () (declare (not safe)) (_g122552122667_)))))
              (let () (declare (not safe)) (_g122552122667_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl122561122883_))
                                              (let ((___splice123738123739_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl122561122883_
                                                        '0))))
                                                (let ((_tl122656122682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123738123739_
                                                          '1)))
                                                      (_target122654122680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123738123739_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122656122682_))
                                                      (___match123987123988_
                                                       _e122559122878_
                                                       _hd122560122881_
                                                       _tl122561122883_
                                                       ___splice123738123739_
                                                       _target122654122680_
                                                       _tl122656122682_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122552122667_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122552122667_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl122561122883_))
                                          (let ((___splice123738123739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl122561122883_
                                                    '0))))
                                            (let ((_tl122656122682_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123738123739_
                                                      '1)))
                                                  (_target122654122680_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123738123739_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122656122682_))
                                                  (___match123987123988_
                                                   _e122559122878_
                                                   _hd122560122881_
                                                   _tl122561122883_
                                                   ___splice123738123739_
                                                   _target122654122680_
                                                   _tl122656122682_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122552122667_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122552122667_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl122561122883_))
                                      (let ((___splice123738123739_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl122561122883_
                                                '0))))
                                        (let ((_tl122656122682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123738123739_
                                                  '1)))
                                              (_target122654122680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123738123739_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122656122682_))
                                              (___match123987123988_
                                               _e122559122878_
                                               _hd122560122881_
                                               _tl122561122883_
                                               ___splice123738123739_
                                               _target122654122680_
                                               _tl122656122682_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122552122667_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122552122667_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl122561122883_))
                              (let ((___splice123738123739_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl122561122883_
                                        '0))))
                                (let ((_tl122656122682_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123738123739_
                                          '1)))
                                      (_target122654122680_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123738123739_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122656122682_))
                                      (___match123987123988_
                                       _e122559122878_
                                       _hd122560122881_
                                       _tl122561122883_
                                       ___splice123738123739_
                                       _target122654122680_
                                       _tl122656122682_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122552122667_)))))
                              (let ()
                                (declare (not safe))
                                (_g122552122667_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl122561122883_))
                      (let ((___splice123738123739_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl122561122883_ '0))))
                        (let ((_tl122656122682_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123738123739_ '1)))
                              (_target122654122680_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123738123739_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122656122682_))
                              (___match123987123988_
                               _e122559122878_
                               _hd122560122881_
                               _tl122561122883_
                               ___splice123738123739_
                               _target122654122680_
                               _tl122656122682_)
                              (let ()
                                (declare (not safe))
                                (_g122552122667_)))))
                      (let () (declare (not safe)) (_g122552122667_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl122561122883_))
                  (let ((___splice123738123739_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl122561122883_ '0))))
                    (let ((_tl122656122682_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123738123739_ '1)))
                          (_target122654122680_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice123738123739_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122656122682_))
                          (___match123987123988_
                           _e122559122878_
                           _hd122560122881_
                           _tl122561122883_
                           ___splice123738123739_
                           _target122654122680_
                           _tl122656122682_)
                          (let () (declare (not safe)) (_g122552122667_)))))
                  (let () (declare (not safe)) (_g122552122667_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl122561122883_))
                                                  (let ((___splice123738123739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl122561122883_
                                                            '0))))
                                                    (let ((_tl122656122682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123738123739_
                                                              '1)))
                                                          (_target122654122680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123738123739_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122656122682_))
                                                          (___match123987123988_
                                                           _e122559122878_
                                                           _hd122560122881_
                                                           _tl122561122883_
                                                           ___splice123738123739_
                                                           _target122654122680_
                                                           _tl122656122682_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122552122667_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122552122667_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl122561122883_))
                                              (let ((___splice123738123739_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl122561122883_
                                                        '0))))
                                                (let ((_tl122656122682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123738123739_
                                                          '1)))
                                                      (_target122654122680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123738123739_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122656122682_))
                                                      (___match123987123988_
                                                       _e122559122878_
                                                       _hd122560122881_
                                                       _tl122561122883_
                                                       ___splice123738123739_
                                                       _target122654122680_
                                                       _tl122656122682_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122552122667_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122552122667_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl122561122883_))
                                          (let ((___splice123738123739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl122561122883_
                                                    '0))))
                                            (let ((_tl122656122682_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123738123739_
                                                      '1)))
                                                  (_target122654122680_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice123738123739_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122656122682_))
                                                  (___match123987123988_
                                                   _e122559122878_
                                                   _hd122560122881_
                                                   _tl122561122883_
                                                   ___splice123738123739_
                                                   _target122654122680_
                                                   _tl122656122682_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122552122667_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122552122667_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl122561122883_))
                                  (let ((___splice123738123739_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl122561122883_
                                            '0))))
                                    (let ((_tl122656122682_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123738123739_
                                              '1)))
                                          (_target122654122680_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice123738123739_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122656122682_))
                                          (___match123987123988_
                                           _e122559122878_
                                           _hd122560122881_
                                           _tl122561122883_
                                           ___splice123738123739_
                                           _target122654122680_
                                           _tl122656122682_)
                                          (let ()
                                            (declare (not safe))
                                            (_g122552122667_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122552122667_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl122561122883_))
                          (let ((___splice123738123739_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl122561122883_
                                    '0))))
                            (let ((_tl122656122682_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice123738123739_ '1)))
                                  (_target122654122680_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice123738123739_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122656122682_))
                                  (___match123987123988_
                                   _e122559122878_
                                   _hd122560122881_
                                   _tl122561122883_
                                   ___splice123738123739_
                                   _target122654122680_
                                   _tl122656122682_)
                                  (let ()
                                    (declare (not safe))
                                    (_g122552122667_)))))
                          (let () (declare (not safe)) (_g122552122667_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl122561122883_))
                      (let ((___splice123738123739_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl122561122883_ '0))))
                        (let ((_tl122656122682_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123738123739_ '1)))
                              (_target122654122680_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice123738123739_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122656122682_))
                              (___match123987123988_
                               _e122559122878_
                               _hd122560122881_
                               _tl122561122883_
                               ___splice123738123739_
                               _target122654122680_
                               _tl122656122682_)
                              (let ()
                                (declare (not safe))
                                (_g122552122667_)))))
                      (let () (declare (not safe)) (_g122552122667_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl122561122883_))
                                                      (let ((___splice123738123739_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl122561122883_ '0))))
                (let ((_tl122656122682_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice123738123739_ '1)))
                      (_target122654122680_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice123738123739_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl122656122682_))
                      (___match123987123988_
                       _e122559122878_
                       _hd122560122881_
                       _tl122561122883_
                       ___splice123738123739_
                       _target122654122680_
                       _tl122656122682_)
                      (let () (declare (not safe)) (_g122552122667_)))))
              (let () (declare (not safe)) (_g122552122667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl122561122883_))
                                                  (let ((___splice123738123739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl122561122883_
                                                            '0))))
                                                    (let ((_tl122656122682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123738123739_
                                                              '1)))
                                                          (_target122654122680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice123738123739_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122656122682_))
                                                          (___match123987123988_
                                                           _e122559122878_
                                                           _hd122560122881_
                                                           _tl122561122883_
                                                           ___splice123738123739_
                                                           _target122654122680_
                                                           _tl122656122682_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122552122667_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122552122667_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl122561122883_))
                                              (let ((___splice123738123739_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl122561122883_
                                                        '0))))
                                                (let ((_tl122656122682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123738123739_
                                                          '1)))
                                                      (_target122654122680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice123738123739_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122656122682_))
                                                      (___match123987123988_
                                                       _e122559122878_
                                                       _hd122560122881_
                                                       _tl122561122883_
                                                       ___splice123738123739_
                                                       _target122654122680_
                                                       _tl122656122682_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122552122667_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122552122667_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl122561122883_))
                                      (let ((___splice123738123739_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl122561122883_
                                                '0))))
                                        (let ((_tl122656122682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123738123739_
                                                  '1)))
                                              (_target122654122680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice123738123739_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122656122682_))
                                              (___match123987123988_
                                               _e122559122878_
                                               _hd122560122881_
                                               _tl122561122883_
                                               ___splice123738123739_
                                               _target122654122680_
                                               _tl122656122682_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122552122667_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122552122667_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl122561122883_))
                              (let ((___splice123738123739_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl122561122883_
                                        '0))))
                                (let ((_tl122656122682_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123738123739_
                                          '1)))
                                      (_target122654122680_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice123738123739_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122656122682_))
                                      (___match123987123988_
                                       _e122559122878_
                                       _hd122560122881_
                                       _tl122561122883_
                                       ___splice123738123739_
                                       _target122654122680_
                                       _tl122656122682_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122552122667_)))))
                              (let ()
                                (declare (not safe))
                                (_g122552122667_))))))
                  (let () (declare (not safe)) (_g122552122667_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx122488_)
        (let* ((___stx123990123991_ _stx122488_)
               (_g122491122504_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx123990123991_)))))
          (let ((___kont123992123993_
                 (lambda (_L122532_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L122532_))))
                (___kont123994123995_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx123990123991_))
                (let ((_e122494122516_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx123990123991_))))
                  (let ((_tl122496122521_
                         (let () (declare (not safe)) (##cdr _e122494122516_)))
                        (_hd122495122519_
                         (let ()
                           (declare (not safe))
                           (##car _e122494122516_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122496122521_))
                        (let ((_e122497122524_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122496122521_))))
                          (let ((_tl122499122529_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122497122524_)))
                                (_hd122498122527_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122497122524_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122499122529_))
                                (___kont123992123993_ _hd122498122527_)
                                (___kont123994123995_))))
                        (___kont123994123995_))))
                (___kont123994123995_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx122368_)
        (let* ((_g122370122387_
                (lambda (_g122371122384_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122371122384_))))
               (_g122369122485_
                (lambda (_g122371122390_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122371122390_))
                      (let ((_e122374122392_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122371122390_))))
                        (let ((_hd122375122395_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122374122392_)))
                              (_tl122376122397_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122374122392_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122376122397_))
                              (let ((_e122377122400_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122376122397_))))
                                (let ((_hd122378122403_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122377122400_)))
                                      (_tl122379122405_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122377122400_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122379122405_))
                                      (let ((_e122380122408_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122379122405_))))
                                        (let ((_hd122381122411_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122380122408_)))
                                              (_tl122382122413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122380122408_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122382122413_))
                                              ((lambda (_L122416_ _L122417_)
                                                 (let* ((___stx124012124013_
                                                         _L122417_)
                                                        (_g122433122444_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx124012124013_)))))
                                                   (let ((___kont124014124015_
                                                          (lambda (_L122464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L122465_)
                    (let ((_$e122477_
                           (let ((__tmp125737
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L122465_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp125737))))
                      (if _$e122477_
                          ((lambda (_type-e122480_)
                             (_type-e122480_ _stx122368_ _L122417_))
                           _$e122477_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L122416_))))))
                 (___kont124016124017_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L122416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match124023124024_
                                                            (lambda (_e122437122456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd122438122459_
                             _tl122439122461_)
                      (let ((_L122464_ _tl122439122461_)
                            (_L122465_ _hd122438122459_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L122465_))
                            (___kont124014124015_ _L122464_ _L122465_)
                            (___kont124016124017_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx124012124013_))
                   (let ((_e122437122456_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx124012124013_))))
                     (let ((_tl122439122461_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122437122456_)))
                           (_hd122438122459_
                            (let ()
                              (declare (not safe))
                              (##car _e122437122456_))))
                       (___match124023124024_
                        _e122437122456_
                        _hd122438122459_
                        _tl122439122461_)))
                   (___kont124016124017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd122381122411_
                                               _hd122378122403_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122370122387_
                                                 _g122371122390_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122370122387_ _g122371122390_)))))
                              (let ()
                                (declare (not safe))
                                (_g122370122387_ _g122371122390_)))))
                      (let ()
                        (declare (not safe))
                        (_g122370122387_ _g122371122390_))))))
          (declare (not safe))
          (_g122369122485_ _stx122368_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx122212_ _ann122213_)
        (let* ((_g122215122252_
                (lambda (_g122216122249_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122216122249_))))
               (_g122214122365_
                (lambda (_g122216122255_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122216122255_))
                      (let ((_e122224122257_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122216122255_))))
                        (let ((_hd122225122260_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122224122257_)))
                              (_tl122226122262_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122224122257_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122226122262_))
                              (let ((_e122227122265_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122226122262_))))
                                (let ((_hd122228122268_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122227122265_)))
                                      (_tl122229122270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122227122265_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122229122270_))
                                      (let ((_e122230122273_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122229122270_))))
                                        (let ((_hd122231122276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122230122273_)))
                                              (_tl122232122278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122230122273_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122232122278_))
                                              (let ((_e122233122281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122232122278_))))
                                                (let ((_hd122234122284_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122233122281_)))
                                                      (_tl122235122286_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122233122281_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122235122286_))
                                                      (let ((_e122236122289_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122235122286_))))
                (let ((_hd122237122292_
                       (let () (declare (not safe)) (##car _e122236122289_)))
                      (_tl122238122294_
                       (let () (declare (not safe)) (##cdr _e122236122289_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl122238122294_))
                      (let ((_e122239122297_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl122238122294_))))
                        (let ((_hd122240122300_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122239122297_)))
                              (_tl122241122302_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122239122297_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122241122302_))
                              (let ((_e122242122305_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122241122302_))))
                                (let ((_hd122243122308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122242122305_)))
                                      (_tl122244122310_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122242122305_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122244122310_))
                                      (let ((_e122245122313_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122244122310_))))
                                        (let ((_hd122246122316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122245122313_)))
                                              (_tl122247122318_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122245122313_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122247122318_))
                                              ((lambda (_L122321_
                                                        _L122322_
                                                        _L122323_
                                                        _L122324_
                                                        _L122325_
                                                        _L122326_
                                                        _L122327_)
                                                 (let ((_type-id122357_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L122327_)))
                                                       (_super122358_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L122326_)))
                                                       (_slots122359_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L122325_)))
                                                       (_ctor-method122360_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L122324_)))
                                                       (_struct?122361_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L122323_)))
                                                       (_final?122362_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L122322_)))
                                                       (_metaclass122363_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L122321_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L122321_))
                                                            '#f)))
                                                   (let ((__obj125695
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
                                                      __obj125695
                                                      _type-id122357_
                                                      _super122358_
                                                      _slots122359_
                                                      _ctor-method122360_
                                                      _struct?122361_
                                                      _final?122362_
                                                      _metaclass122363_)
                                                     __obj125695)))
                                               _hd122246122316_
                                               _hd122243122308_
                                               _hd122240122300_
                                               _hd122237122292_
                                               _hd122234122284_
                                               _hd122231122276_
                                               _hd122228122268_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122215122252_
                                                 _g122216122255_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122215122252_ _g122216122255_)))))
                              (let ()
                                (declare (not safe))
                                (_g122215122252_ _g122216122255_)))))
                      (let ()
                        (declare (not safe))
                        (_g122215122252_ _g122216122255_)))))
              (let ()
                (declare (not safe))
                (_g122215122252_ _g122216122255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g122215122252_
                                                 _g122216122255_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122215122252_ _g122216122255_)))))
                              (let ()
                                (declare (not safe))
                                (_g122215122252_ _g122216122255_)))))
                      (let ()
                        (declare (not safe))
                        (_g122215122252_ _g122216122255_))))))
          (declare (not safe))
          (_g122214122365_ _ann122213_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx122160_ _ann122161_)
        (let* ((_g122163122176_
                (lambda (_g122164122173_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122164122173_))))
               (_g122162122209_
                (lambda (_g122164122179_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122164122179_))
                      (let ((_e122166122181_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122164122179_))))
                        (let ((_hd122167122184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122166122181_)))
                              (_tl122168122186_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122166122181_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122168122186_))
                              (let ((_e122169122189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122168122186_))))
                                (let ((_hd122170122192_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122169122189_)))
                                      (_tl122171122194_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122169122189_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122171122194_))
                                      ((lambda (_L122197_)
                                         (let ((__tmp125738
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L122197_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp125738)))
                                       _hd122170122192_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122163122176_ _g122164122179_)))))
                              (let ()
                                (declare (not safe))
                                (_g122163122176_ _g122164122179_)))))
                      (let ()
                        (declare (not safe))
                        (_g122163122176_ _g122164122179_))))))
          (declare (not safe))
          (_g122162122209_ _ann122161_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx122108_ _ann122109_)
        (let* ((_g122111122124_
                (lambda (_g122112122121_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122112122121_))))
               (_g122110122157_
                (lambda (_g122112122127_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122112122127_))
                      (let ((_e122114122129_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122112122127_))))
                        (let ((_hd122115122132_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122114122129_)))
                              (_tl122116122134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122114122129_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122116122134_))
                              (let ((_e122117122137_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122116122134_))))
                                (let ((_hd122118122140_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122117122137_)))
                                      (_tl122119122142_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122117122137_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122119122142_))
                                      ((lambda (_L122145_)
                                         (let ((__tmp125739
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L122145_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp125739)))
                                       _hd122118122140_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122111122124_ _g122112122127_)))))
                              (let ()
                                (declare (not safe))
                                (_g122111122124_ _g122112122127_)))))
                      (let ()
                        (declare (not safe))
                        (_g122111122124_ _g122112122127_))))))
          (declare (not safe))
          (_g122110122157_ _ann122109_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx122024_ _ann122025_)
        (let* ((_g122027122048_
                (lambda (_g122028122045_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122028122045_))))
               (_g122026122105_
                (lambda (_g122028122051_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122028122051_))
                      (let ((_e122032122053_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122028122051_))))
                        (let ((_hd122033122056_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122032122053_)))
                              (_tl122034122058_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122032122053_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122034122058_))
                              (let ((_e122035122061_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122034122058_))))
                                (let ((_hd122036122064_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122035122061_)))
                                      (_tl122037122066_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122035122061_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122037122066_))
                                      (let ((_e122038122069_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122037122066_))))
                                        (let ((_hd122039122072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122038122069_)))
                                              (_tl122040122074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122038122069_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122040122074_))
                                              (let ((_e122041122077_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122040122074_))))
                                                (let ((_hd122042122080_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122041122077_)))
                                                      (_tl122043122082_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122041122077_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122043122082_))
                                                      ((lambda (_L122085_
                                                                _L122086_
                                                                _L122087_)
                                                         (let ((__tmp125742
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L122087_)))
                       (__tmp125741
                        (let () (declare (not safe)) (gx#stx-e _L122086_)))
                       (__tmp125740
                        (let () (declare (not safe)) (gx#stx-e _L122085_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp125742
                    __tmp125741
                    __tmp125740)))
               _hd122042122080_
               _hd122039122072_
               _hd122036122064_)
              (let ()
                (declare (not safe))
                (_g122027122048_ _g122028122051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g122027122048_
                                                 _g122028122051_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122027122048_ _g122028122051_)))))
                              (let ()
                                (declare (not safe))
                                (_g122027122048_ _g122028122051_)))))
                      (let ()
                        (declare (not safe))
                        (_g122027122048_ _g122028122051_))))))
          (declare (not safe))
          (_g122026122105_ _ann122025_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx121940_ _ann121941_)
        (let* ((_g121943121964_
                (lambda (_g121944121961_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121944121961_))))
               (_g121942122021_
                (lambda (_g121944121967_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121944121967_))
                      (let ((_e121948121969_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121944121967_))))
                        (let ((_hd121949121972_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121948121969_)))
                              (_tl121950121974_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121948121969_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121950121974_))
                              (let ((_e121951121977_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121950121974_))))
                                (let ((_hd121952121980_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121951121977_)))
                                      (_tl121953121982_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121951121977_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121953121982_))
                                      (let ((_e121954121985_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121953121982_))))
                                        (let ((_hd121955121988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121954121985_)))
                                              (_tl121956121990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121954121985_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121956121990_))
                                              (let ((_e121957121993_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121956121990_))))
                                                (let ((_hd121958121996_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121957121993_)))
                                                      (_tl121959121998_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121957121993_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121959121998_))
                                                      ((lambda (_L122001_
                                                                _L122002_
                                                                _L122003_)
                                                         (let ((__tmp125745
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L122003_)))
                       (__tmp125744
                        (let () (declare (not safe)) (gx#stx-e _L122002_)))
                       (__tmp125743
                        (let () (declare (not safe)) (gx#stx-e _L122001_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp125745
                    __tmp125744
                    __tmp125743)))
               _hd121958121996_
               _hd121955121988_
               _hd121952121980_)
              (let ()
                (declare (not safe))
                (_g121943121964_ _g121944121967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121943121964_
                                                 _g121944121967_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121943121964_ _g121944121967_)))))
                              (let ()
                                (declare (not safe))
                                (_g121943121964_ _g121944121967_)))))
                      (let ()
                        (declare (not safe))
                        (_g121943121964_ _g121944121967_))))))
          (declare (not safe))
          (_g121942122021_ _ann121941_))))
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
      (lambda (_stx121060_)
        (let* ((___stx124026124027_ _stx121060_)
               (_g121066121262_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124026124027_)))))
          (let ((___kont124028124029_
                 (lambda (_L121928_)
                   (let ((__obj125696
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj125696
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L121928_))
                      '#f)
                     __obj125696)))
                (___kont124030124031_
                 (lambda (_L121855_
                          _L121856_
                          _L121857_
                          _L121858_
                          _L121859_
                          _L121860_)
                   (let* ((_tab121910_
                           (let () (declare (not safe)) (gx#stx-e _L121857_)))
                          (_keys121912_
                           (if _tab121910_
                               (filter values (vector->list _tab121910_))
                               '#f)))
                     (let ((__tmp125746
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L121856_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys121912_
                        __tmp125746)))))
                (___kont124032124033_
                 (lambda (_L121588_
                          _L121589_
                          _L121590_
                          _L121591_
                          _L121592_
                          _L121593_
                          _L121594_
                          _L121595_
                          _L121596_
                          _L121597_)
                   (let ((__tmp125748
                          (map gx#stx-e
                               (let ((__tmp125749
                                      (lambda (_g121690121693_ _g121691121695_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g121690121693_
                                                _g121691121695_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp125749 '() _L121590_))))
                         (__tmp125747
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L121594_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp125748
                      __tmp125747))))
                (___kont124036124037_
                 (lambda (_L121298_)
                   (let ((__obj125697
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj125697
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L121298_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L121298_)))
                     __obj125697)))
                (___kont124038124039_
                 (lambda (_L121275_)
                   (let ((__obj125698
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj125698
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L121275_))
                      '#f)
                     __obj125698))))
            (let* ((___match124345124346_
                    (lambda (_e121251121290_ _hd121252121293_ _tl121253121295_)
                      (let ((_L121298_ _tl121253121295_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L121298_))
                            (___kont124036124037_ _L121298_)
                            (___kont124038124039_ _tl121253121295_)))))
                   (___match124339124340_
                    (lambda (_e121145121312_
                             _hd121146121315_
                             _tl121147121317_
                             _e121148121320_
                             _hd121149121323_
                             _tl121150121325_
                             _e121151121328_
                             _hd121152121331_
                             _tl121153121333_
                             _e121154121336_
                             _hd121155121339_
                             _tl121156121341_
                             _e121157121344_
                             _hd121158121347_
                             _tl121159121349_
                             _e121160121352_
                             _hd121161121355_
                             _tl121162121357_
                             _e121163121360_
                             _hd121164121363_
                             _tl121165121365_
                             _e121166121368_
                             _hd121167121371_
                             _tl121168121373_
                             _e121169121376_
                             _hd121170121379_
                             _tl121171121381_
                             _e121172121384_
                             _hd121173121387_
                             _tl121174121389_
                             _e121175121392_
                             _hd121176121395_
                             _tl121177121397_
                             _e121178121400_
                             _hd121179121403_
                             _tl121180121405_
                             _e121181121408_
                             _hd121182121411_
                             _tl121183121413_
                             _e121184121416_
                             _hd121185121419_
                             _tl121186121421_
                             ___splice124034124035_
                             _target121187121424_
                             _tl121189121426_
                             _e121202121429_
                             _hd121203121432_
                             _tl121204121434_
                             _e121205121437_
                             _hd121206121440_
                             _tl121207121442_
                             _e121208121445_
                             _hd121209121448_
                             _tl121210121450_)
                      (letrec ((_loop121190121453_
                                (lambda (_hd121188121456_
                                         _-absent-value121194121458_
                                         _key121195121460_
                                         _-xkwvar121196121462_
                                         _-hash-ref121197121464_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121188121456_))
                                      (let ((_e121191121467_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121188121456_))))
                                        (let ((_lp-tl121193121472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121191121467_)))
                                              (_lp-hd121192121470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121191121467_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd121192121470_))
                                              (let ((_e121211121475_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd121192121470_))))
                                                (let ((_tl121213121480_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121211121475_)))
                                                      (_hd121212121478_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121211121475_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd121212121478_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd121212121478_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121213121480_))
                      (let ((_e121214121483_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121213121480_))))
                        (let ((_tl121216121488_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121214121483_)))
                              (_hd121215121486_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121214121483_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121215121486_))
                              (let ((_e121217121491_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121215121486_))))
                                (let ((_tl121219121496_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121217121491_)))
                                      (_hd121218121494_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121217121491_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd121218121494_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd121218121494_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121219121496_))
                                              (let ((_e121220121499_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121219121496_))))
                                                (let ((_tl121222121504_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121220121499_)))
                                                      (_hd121221121502_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121220121499_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121222121504_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl121216121488_))
                                                          (let ((_e121223121507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl121216121488_))))
                    (let ((_tl121225121512_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121223121507_)))
                          (_hd121224121510_
                           (let ()
                             (declare (not safe))
                             (##car _e121223121507_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd121224121510_))
                          (let ((_e121226121515_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd121224121510_))))
                            (let ((_tl121228121520_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121226121515_)))
                                  (_hd121227121518_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121226121515_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd121227121518_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd121227121518_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl121228121520_))
                                          (let ((_e121229121523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl121228121520_))))
                                            (let ((_tl121231121528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121229121523_)))
                                                  (_hd121230121526_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121229121523_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl121231121528_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121225121512_))
                                                      (let ((_e121232121531_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121225121512_))))
                (let ((_tl121234121536_
                       (let () (declare (not safe)) (##cdr _e121232121531_)))
                      (_hd121233121534_
                       (let () (declare (not safe)) (##car _e121232121531_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121233121534_))
                      (let ((_e121235121539_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121233121534_))))
                        (let ((_tl121237121544_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121235121539_)))
                              (_hd121236121542_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121235121539_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd121236121542_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd121236121542_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121237121544_))
                                      (let ((_e121238121547_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121237121544_))))
                                        (let ((_tl121240121552_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121238121547_)))
                                              (_hd121239121550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121238121547_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121240121552_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121234121536_))
                                                  (let ((_e121241121555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121234121536_))))
                                                    (let ((_tl121243121560_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121241121555_)))
                                                          (_hd121242121558_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121241121555_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd121242121558_))
                                                          (let ((_e121244121563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd121242121558_))))
                    (let ((_tl121246121568_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121244121563_)))
                          (_hd121245121566_
                           (let ()
                             (declare (not safe))
                             (##car _e121244121563_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd121245121566_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd121245121566_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121246121568_))
                                  (let ((_e121247121571_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121246121568_))))
                                    (let ((_tl121249121576_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121247121571_)))
                                          (_hd121248121574_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121247121571_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121249121576_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121243121560_))
                                              (let ((__tmp125753
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd121248121574_
                                                             _-absent-value121194121458_)))
                                                    (__tmp125752
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd121239121550_
                                                             _key121195121460_)))
                                                    (__tmp125751
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd121230121526_
                                                             _-xkwvar121196121462_)))
                                                    (__tmp125750
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd121221121502_
                                                             _-hash-ref121197121464_))))
                                                (declare (not safe))
                                                (_loop121190121453_
                                                 _lp-tl121193121472_
                                                 __tmp125753
                                                 __tmp125752
                                                 __tmp125751
                                                 __tmp125750))
                                              (___match124345124346_
                                               _e121145121312_
                                               _hd121146121315_
                                               _tl121147121317_))
                                          (___match124345124346_
                                           _e121145121312_
                                           _hd121146121315_
                                           _tl121147121317_))))
                                  (___match124345124346_
                                   _e121145121312_
                                   _hd121146121315_
                                   _tl121147121317_))
                              (___match124345124346_
                               _e121145121312_
                               _hd121146121315_
                               _tl121147121317_))
                          (___match124345124346_
                           _e121145121312_
                           _hd121146121315_
                           _tl121147121317_))))
                  (___match124345124346_
                   _e121145121312_
                   _hd121146121315_
                   _tl121147121317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124345124346_
                                                   _e121145121312_
                                                   _hd121146121315_
                                                   _tl121147121317_))
                                              (___match124345124346_
                                               _e121145121312_
                                               _hd121146121315_
                                               _tl121147121317_))))
                                      (___match124345124346_
                                       _e121145121312_
                                       _hd121146121315_
                                       _tl121147121317_))
                                  (___match124345124346_
                                   _e121145121312_
                                   _hd121146121315_
                                   _tl121147121317_))
                              (___match124345124346_
                               _e121145121312_
                               _hd121146121315_
                               _tl121147121317_))))
                      (___match124345124346_
                       _e121145121312_
                       _hd121146121315_
                       _tl121147121317_))))
              (___match124345124346_
               _e121145121312_
               _hd121146121315_
               _tl121147121317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124345124346_
                                                   _e121145121312_
                                                   _hd121146121315_
                                                   _tl121147121317_))))
                                          (___match124345124346_
                                           _e121145121312_
                                           _hd121146121315_
                                           _tl121147121317_))
                                      (___match124345124346_
                                       _e121145121312_
                                       _hd121146121315_
                                       _tl121147121317_))
                                  (___match124345124346_
                                   _e121145121312_
                                   _hd121146121315_
                                   _tl121147121317_))))
                          (___match124345124346_
                           _e121145121312_
                           _hd121146121315_
                           _tl121147121317_))))
                  (___match124345124346_
                   _e121145121312_
                   _hd121146121315_
                   _tl121147121317_))
              (___match124345124346_
               _e121145121312_
               _hd121146121315_
               _tl121147121317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match124345124346_
                                               _e121145121312_
                                               _hd121146121315_
                                               _tl121147121317_))
                                          (___match124345124346_
                                           _e121145121312_
                                           _hd121146121315_
                                           _tl121147121317_))
                                      (___match124345124346_
                                       _e121145121312_
                                       _hd121146121315_
                                       _tl121147121317_))))
                              (___match124345124346_
                               _e121145121312_
                               _hd121146121315_
                               _tl121147121317_))))
                      (___match124345124346_
                       _e121145121312_
                       _hd121146121315_
                       _tl121147121317_))
                  (___match124345124346_
                   _e121145121312_
                   _hd121146121315_
                   _tl121147121317_))
              (___match124345124346_
               _e121145121312_
               _hd121146121315_
               _tl121147121317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match124345124346_
                                               _e121145121312_
                                               _hd121146121315_
                                               _tl121147121317_))))
                                      (let ((_-hash-ref121201121585_
                                             (reverse _-hash-ref121197121464_))
                                            (_-xkwvar121200121583_
                                             (reverse _-xkwvar121196121462_))
                                            (_key121199121581_
                                             (reverse _key121195121460_))
                                            (_-absent-value121198121579_
                                             (reverse _-absent-value121194121458_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121156121341_))
                                            (let ((_L121588_ _hd121209121448_)
                                                  (_L121589_
                                                   _-absent-value121198121579_)
                                                  (_L121590_ _key121199121581_)
                                                  (_L121591_
                                                   _-xkwvar121200121583_)
                                                  (_L121592_
                                                   _-hash-ref121201121585_)
                                                  (_L121593_ _hd121185121419_)
                                                  (_L121594_ _hd121176121395_)
                                                  (_L121595_ _hd121167121371_)
                                                  (_L121596_ _tl121153121333_)
                                                  (_L121597_ _hd121152121331_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L121597_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L121596_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L121595_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L121597_
                                                          _L121593_))
                                                       (let ((__tmp125754
                                                              (let ((__tmp125755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g121650121653_ _g121651121655_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g121650121653_ _g121651121655_)))))
                        (declare (not safe))
                        (foldr1 __tmp125755 '() _L121590_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp125754))
               (let ((__tmp125758
                      (lambda (_g121657121659_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g121657121659_
                           'hash-ref))))
                     (__tmp125756
                      (let ((__tmp125757
                             (lambda (_g121661121664_ _g121662121666_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g121661121664_ _g121662121666_)))))
                        (declare (not safe))
                        (foldr1 __tmp125757 '() _L121592_))))
                 (declare (not safe))
                 (andmap1 __tmp125758 __tmp125756))
               (let ((__tmp125761
                      (lambda (_g121668121670_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g121668121670_
                           'absent-value))))
                     (__tmp125759
                      (let ((__tmp125760
                             (lambda (_g121672121675_ _g121673121677_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g121672121675_ _g121673121677_)))))
                        (declare (not safe))
                        (foldr1 __tmp125760 '() _L121589_))))
                 (declare (not safe))
                 (andmap1 __tmp125761 __tmp125759))
               (let ((__tmp125764
                      (lambda (_g121679121681_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g121679121681_ _L121597_))))
                     (__tmp125762
                      (let ((__tmp125763
                             (lambda (_g121683121686_ _g121684121688_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g121683121686_ _g121684121688_)))))
                        (declare (not safe))
                        (foldr1 __tmp125763 '() _L121591_))))
                 (declare (not safe))
                 (andmap1 __tmp125764 __tmp125762)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont124032124033_
                                                   _L121588_
                                                   _L121589_
                                                   _L121590_
                                                   _L121591_
                                                   _L121592_
                                                   _L121593_
                                                   _L121594_
                                                   _L121595_
                                                   _L121596_
                                                   _L121597_)
                                                  (___match124345124346_
                                                   _e121145121312_
                                                   _hd121146121315_
                                                   _tl121147121317_)))
                                            (___match124345124346_
                                             _e121145121312_
                                             _hd121146121315_
                                             _tl121147121317_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121190121453_
                           _target121187121424_
                           '()
                           '()
                           '()
                           '())))))
                   (___match124211124212_
                    (lambda (_e121145121312_
                             _hd121146121315_
                             _tl121147121317_
                             _e121148121320_
                             _hd121149121323_
                             _tl121150121325_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd121149121323_))
                          (let ((_e121151121328_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd121149121323_))))
                            (let ((_tl121153121333_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121151121328_)))
                                  (_hd121152121331_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121151121328_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121150121325_))
                                  (let ((_e121154121336_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121150121325_))))
                                    (let ((_tl121156121341_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121154121336_)))
                                          (_hd121155121339_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121154121336_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121155121339_))
                                          (let ((_e121157121344_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121155121339_))))
                                            (let ((_tl121159121349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121157121344_)))
                                                  (_hd121158121347_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121157121344_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd121158121347_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd121158121347_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl121159121349_))
                                                          (let ((_e121160121352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl121159121349_))))
                    (let ((_tl121162121357_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121160121352_)))
                          (_hd121161121355_
                           (let ()
                             (declare (not safe))
                             (##car _e121160121352_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd121161121355_))
                          (let ((_e121163121360_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd121161121355_))))
                            (let ((_tl121165121365_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121163121360_)))
                                  (_hd121164121363_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121163121360_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd121164121363_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd121164121363_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl121165121365_))
                                          (let ((_e121166121368_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl121165121365_))))
                                            (let ((_tl121168121373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121166121368_)))
                                                  (_hd121167121371_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121166121368_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl121168121373_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121162121357_))
                                                      (let ((_e121169121376_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121162121357_))))
                (let ((_tl121171121381_
                       (let () (declare (not safe)) (##cdr _e121169121376_)))
                      (_hd121170121379_
                       (let () (declare (not safe)) (##car _e121169121376_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121170121379_))
                      (let ((_e121172121384_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121170121379_))))
                        (let ((_tl121174121389_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121172121384_)))
                              (_hd121173121387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121172121384_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd121173121387_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd121173121387_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121174121389_))
                                      (let ((_e121175121392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121174121389_))))
                                        (let ((_tl121177121397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121175121392_)))
                                              (_hd121176121395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121175121392_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121177121397_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121171121381_))
                                                  (let ((_e121178121400_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121171121381_))))
                                                    (let ((_tl121180121405_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121178121400_)))
                                                          (_hd121179121403_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121178121400_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd121179121403_))
                                                          (let ((_e121181121408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd121179121403_))))
                    (let ((_tl121183121413_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121181121408_)))
                          (_hd121182121411_
                           (let ()
                             (declare (not safe))
                             (##car _e121181121408_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd121182121411_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd121182121411_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121183121413_))
                                  (let ((_e121184121416_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121183121413_))))
                                    (let ((_tl121186121421_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121184121416_)))
                                          (_hd121185121419_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121184121416_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121186121421_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl121180121405_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl121180121405_))
                                                        '1)
                                                  (let ((___splice124034124035_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl121180121405_
                                                            '1))))
                                                    (let ((_tl121189121426_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice124034124035_
                                                              '1)))
                                                          (_target121187121424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice124034124035_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl121189121426_))
                                                          (let ((_e121202121429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl121189121426_))))
                    (let ((_tl121204121434_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121202121429_)))
                          (_hd121203121432_
                           (let ()
                             (declare (not safe))
                             (##car _e121202121429_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd121203121432_))
                          (let ((_e121205121437_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd121203121432_))))
                            (let ((_tl121207121442_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121205121437_)))
                                  (_hd121206121440_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121205121437_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd121206121440_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd121206121440_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl121207121442_))
                                          (let ((_e121208121445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl121207121442_))))
                                            (let ((_tl121210121450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121208121445_)))
                                                  (_hd121209121448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121208121445_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl121210121450_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121204121434_))
                                                      (___match124339124340_
                                                       _e121145121312_
                                                       _hd121146121315_
                                                       _tl121147121317_
                                                       _e121148121320_
                                                       _hd121149121323_
                                                       _tl121150121325_
                                                       _e121151121328_
                                                       _hd121152121331_
                                                       _tl121153121333_
                                                       _e121154121336_
                                                       _hd121155121339_
                                                       _tl121156121341_
                                                       _e121157121344_
                                                       _hd121158121347_
                                                       _tl121159121349_
                                                       _e121160121352_
                                                       _hd121161121355_
                                                       _tl121162121357_
                                                       _e121163121360_
                                                       _hd121164121363_
                                                       _tl121165121365_
                                                       _e121166121368_
                                                       _hd121167121371_
                                                       _tl121168121373_
                                                       _e121169121376_
                                                       _hd121170121379_
                                                       _tl121171121381_
                                                       _e121172121384_
                                                       _hd121173121387_
                                                       _tl121174121389_
                                                       _e121175121392_
                                                       _hd121176121395_
                                                       _tl121177121397_
                                                       _e121178121400_
                                                       _hd121179121403_
                                                       _tl121180121405_
                                                       _e121181121408_
                                                       _hd121182121411_
                                                       _tl121183121413_
                                                       _e121184121416_
                                                       _hd121185121419_
                                                       _tl121186121421_
                                                       ___splice124034124035_
                                                       _target121187121424_
                                                       _tl121189121426_
                                                       _e121202121429_
                                                       _hd121203121432_
                                                       _tl121204121434_
                                                       _e121205121437_
                                                       _hd121206121440_
                                                       _tl121207121442_
                                                       _e121208121445_
                                                       _hd121209121448_
                                                       _tl121210121450_)
                                                      (___match124345124346_
                                                       _e121145121312_
                                                       _hd121146121315_
                                                       _tl121147121317_))
                                                  (___match124345124346_
                                                   _e121145121312_
                                                   _hd121146121315_
                                                   _tl121147121317_))))
                                          (___match124345124346_
                                           _e121145121312_
                                           _hd121146121315_
                                           _tl121147121317_))
                                      (___match124345124346_
                                       _e121145121312_
                                       _hd121146121315_
                                       _tl121147121317_))
                                  (___match124345124346_
                                   _e121145121312_
                                   _hd121146121315_
                                   _tl121147121317_))))
                          (___match124345124346_
                           _e121145121312_
                           _hd121146121315_
                           _tl121147121317_))))
                  (___match124345124346_
                   _e121145121312_
                   _hd121146121315_
                   _tl121147121317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124345124346_
                                                   _e121145121312_
                                                   _hd121146121315_
                                                   _tl121147121317_))
                                              (___match124345124346_
                                               _e121145121312_
                                               _hd121146121315_
                                               _tl121147121317_))
                                          (___match124345124346_
                                           _e121145121312_
                                           _hd121146121315_
                                           _tl121147121317_))))
                                  (___match124345124346_
                                   _e121145121312_
                                   _hd121146121315_
                                   _tl121147121317_))
                              (___match124345124346_
                               _e121145121312_
                               _hd121146121315_
                               _tl121147121317_))
                          (___match124345124346_
                           _e121145121312_
                           _hd121146121315_
                           _tl121147121317_))))
                  (___match124345124346_
                   _e121145121312_
                   _hd121146121315_
                   _tl121147121317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124345124346_
                                                   _e121145121312_
                                                   _hd121146121315_
                                                   _tl121147121317_))
                                              (___match124345124346_
                                               _e121145121312_
                                               _hd121146121315_
                                               _tl121147121317_))))
                                      (___match124345124346_
                                       _e121145121312_
                                       _hd121146121315_
                                       _tl121147121317_))
                                  (___match124345124346_
                                   _e121145121312_
                                   _hd121146121315_
                                   _tl121147121317_))
                              (___match124345124346_
                               _e121145121312_
                               _hd121146121315_
                               _tl121147121317_))))
                      (___match124345124346_
                       _e121145121312_
                       _hd121146121315_
                       _tl121147121317_))))
              (___match124345124346_
               _e121145121312_
               _hd121146121315_
               _tl121147121317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124345124346_
                                                   _e121145121312_
                                                   _hd121146121315_
                                                   _tl121147121317_))))
                                          (___match124345124346_
                                           _e121145121312_
                                           _hd121146121315_
                                           _tl121147121317_))
                                      (___match124345124346_
                                       _e121145121312_
                                       _hd121146121315_
                                       _tl121147121317_))
                                  (___match124345124346_
                                   _e121145121312_
                                   _hd121146121315_
                                   _tl121147121317_))))
                          (___match124345124346_
                           _e121145121312_
                           _hd121146121315_
                           _tl121147121317_))))
                  (___match124345124346_
                   _e121145121312_
                   _hd121146121315_
                   _tl121147121317_))
              (___match124345124346_
               _e121145121312_
               _hd121146121315_
               _tl121147121317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124345124346_
                                                   _e121145121312_
                                                   _hd121146121315_
                                                   _tl121147121317_))))
                                          (___match124345124346_
                                           _e121145121312_
                                           _hd121146121315_
                                           _tl121147121317_))))
                                  (___match124345124346_
                                   _e121145121312_
                                   _hd121146121315_
                                   _tl121147121317_))))
                          (___match124345124346_
                           _e121145121312_
                           _hd121146121315_
                           _tl121147121317_))))
                   (___match124199124200_
                    (lambda (_e121078121703_
                             _hd121079121706_
                             _tl121080121708_
                             _e121081121711_
                             _hd121082121714_
                             _tl121083121716_
                             _e121084121719_
                             _hd121085121722_
                             _tl121086121724_
                             _e121087121727_
                             _hd121088121730_
                             _tl121089121732_
                             _e121090121735_
                             _hd121091121738_
                             _tl121092121740_
                             _e121093121743_
                             _hd121094121746_
                             _tl121095121748_
                             _e121096121751_
                             _hd121097121754_
                             _tl121098121756_
                             _e121099121759_
                             _hd121100121762_
                             _tl121101121764_
                             _e121102121767_
                             _hd121103121770_
                             _tl121104121772_
                             _e121105121775_
                             _hd121106121778_
                             _tl121107121780_
                             _e121108121783_
                             _hd121109121786_
                             _tl121110121788_
                             _e121111121791_
                             _hd121112121794_
                             _tl121113121796_
                             _e121114121799_
                             _hd121115121802_
                             _tl121116121804_
                             _e121117121807_
                             _hd121118121810_
                             _tl121119121812_
                             _e121120121815_
                             _hd121121121818_
                             _tl121122121820_
                             _e121123121823_
                             _hd121124121826_
                             _tl121125121828_
                             _e121126121831_
                             _hd121127121834_
                             _tl121128121836_
                             _e121129121839_
                             _hd121130121842_
                             _tl121131121844_
                             _e121132121847_
                             _hd121133121850_
                             _tl121134121852_)
                      (let ((_L121855_ _hd121133121850_)
                            (_L121856_ _hd121124121826_)
                            (_L121857_ _hd121115121802_)
                            (_L121858_ _hd121106121778_)
                            (_L121859_ _hd121097121754_)
                            (_L121860_ _hd121082121714_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L121860_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L121859_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L121858_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L121860_ _L121855_)))
                            (___kont124030124031_
                             _L121855_
                             _L121856_
                             _L121857_
                             _L121858_
                             _L121859_
                             _L121860_)
                            (___match124211124212_
                             _e121078121703_
                             _hd121079121706_
                             _tl121080121708_
                             _e121081121711_
                             _hd121082121714_
                             _tl121083121716_)))))
                   (___match124053124054_
                    (lambda (_e121078121703_ _hd121079121706_ _tl121080121708_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121080121708_))
                          (let ((_e121081121711_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121080121708_))))
                            (let ((_tl121083121716_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121081121711_)))
                                  (_hd121082121714_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121081121711_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121083121716_))
                                  (let ((_e121084121719_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121083121716_))))
                                    (let ((_tl121086121724_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121084121719_)))
                                          (_hd121085121722_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121084121719_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121085121722_))
                                          (let ((_e121087121727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121085121722_))))
                                            (let ((_tl121089121732_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121087121727_)))
                                                  (_hd121088121730_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121087121727_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd121088121730_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd121088121730_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl121089121732_))
                                                          (let ((_e121090121735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl121089121732_))))
                    (let ((_tl121092121740_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121090121735_)))
                          (_hd121091121738_
                           (let ()
                             (declare (not safe))
                             (##car _e121090121735_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd121091121738_))
                          (let ((_e121093121743_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd121091121738_))))
                            (let ((_tl121095121748_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121093121743_)))
                                  (_hd121094121746_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121093121743_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd121094121746_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd121094121746_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl121095121748_))
                                          (let ((_e121096121751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl121095121748_))))
                                            (let ((_tl121098121756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121096121751_)))
                                                  (_hd121097121754_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121096121751_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl121098121756_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121092121740_))
                                                      (let ((_e121099121759_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121092121740_))))
                (let ((_tl121101121764_
                       (let () (declare (not safe)) (##cdr _e121099121759_)))
                      (_hd121100121762_
                       (let () (declare (not safe)) (##car _e121099121759_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121100121762_))
                      (let ((_e121102121767_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121100121762_))))
                        (let ((_tl121104121772_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121102121767_)))
                              (_hd121103121770_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121102121767_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd121103121770_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd121103121770_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121104121772_))
                                      (let ((_e121105121775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121104121772_))))
                                        (let ((_tl121107121780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121105121775_)))
                                              (_hd121106121778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121105121775_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121107121780_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121101121764_))
                                                  (let ((_e121108121783_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121101121764_))))
                                                    (let ((_tl121110121788_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121108121783_)))
                                                          (_hd121109121786_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121108121783_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd121109121786_))
                                                          (let ((_e121111121791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd121109121786_))))
                    (let ((_tl121113121796_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121111121791_)))
                          (_hd121112121794_
                           (let ()
                             (declare (not safe))
                             (##car _e121111121791_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd121112121794_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd121112121794_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121113121796_))
                                  (let ((_e121114121799_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121113121796_))))
                                    (let ((_tl121116121804_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121114121799_)))
                                          (_hd121115121802_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121114121799_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121116121804_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121110121788_))
                                              (let ((_e121117121807_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121110121788_))))
                                                (let ((_tl121119121812_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121117121807_)))
                                                      (_hd121118121810_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121117121807_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121118121810_))
                                                      (let ((_e121120121815_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121118121810_))))
                (let ((_tl121122121820_
                       (let () (declare (not safe)) (##cdr _e121120121815_)))
                      (_hd121121121818_
                       (let () (declare (not safe)) (##car _e121120121815_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd121121121818_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd121121121818_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121122121820_))
                              (let ((_e121123121823_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121122121820_))))
                                (let ((_tl121125121828_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121123121823_)))
                                      (_hd121124121826_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121123121823_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121125121828_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl121119121812_))
                                          (let ((_e121126121831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl121119121812_))))
                                            (let ((_tl121128121836_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121126121831_)))
                                                  (_hd121127121834_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121126121831_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121127121834_))
                                                  (let ((_e121129121839_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121127121834_))))
                                                    (let ((_tl121131121844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121129121839_)))
                                                          (_hd121130121842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121129121839_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd121130121842_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd121130121842_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121131121844_))
                          (let ((_e121132121847_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121131121844_))))
                            (let ((_tl121134121852_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121132121847_)))
                                  (_hd121133121850_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121132121847_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121134121852_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121128121836_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121086121724_))
                                          (___match124199124200_
                                           _e121078121703_
                                           _hd121079121706_
                                           _tl121080121708_
                                           _e121081121711_
                                           _hd121082121714_
                                           _tl121083121716_
                                           _e121084121719_
                                           _hd121085121722_
                                           _tl121086121724_
                                           _e121087121727_
                                           _hd121088121730_
                                           _tl121089121732_
                                           _e121090121735_
                                           _hd121091121738_
                                           _tl121092121740_
                                           _e121093121743_
                                           _hd121094121746_
                                           _tl121095121748_
                                           _e121096121751_
                                           _hd121097121754_
                                           _tl121098121756_
                                           _e121099121759_
                                           _hd121100121762_
                                           _tl121101121764_
                                           _e121102121767_
                                           _hd121103121770_
                                           _tl121104121772_
                                           _e121105121775_
                                           _hd121106121778_
                                           _tl121107121780_
                                           _e121108121783_
                                           _hd121109121786_
                                           _tl121110121788_
                                           _e121111121791_
                                           _hd121112121794_
                                           _tl121113121796_
                                           _e121114121799_
                                           _hd121115121802_
                                           _tl121116121804_
                                           _e121117121807_
                                           _hd121118121810_
                                           _tl121119121812_
                                           _e121120121815_
                                           _hd121121121818_
                                           _tl121122121820_
                                           _e121123121823_
                                           _hd121124121826_
                                           _tl121125121828_
                                           _e121126121831_
                                           _hd121127121834_
                                           _tl121128121836_
                                           _e121129121839_
                                           _hd121130121842_
                                           _tl121131121844_
                                           _e121132121847_
                                           _hd121133121850_
                                           _tl121134121852_)
                                          (___match124211124212_
                                           _e121078121703_
                                           _hd121079121706_
                                           _tl121080121708_
                                           _e121081121711_
                                           _hd121082121714_
                                           _tl121083121716_))
                                      (___match124211124212_
                                       _e121078121703_
                                       _hd121079121706_
                                       _tl121080121708_
                                       _e121081121711_
                                       _hd121082121714_
                                       _tl121083121716_))
                                  (___match124211124212_
                                   _e121078121703_
                                   _hd121079121706_
                                   _tl121080121708_
                                   _e121081121711_
                                   _hd121082121714_
                                   _tl121083121716_))))
                          (___match124211124212_
                           _e121078121703_
                           _hd121079121706_
                           _tl121080121708_
                           _e121081121711_
                           _hd121082121714_
                           _tl121083121716_))
                      (___match124211124212_
                       _e121078121703_
                       _hd121079121706_
                       _tl121080121708_
                       _e121081121711_
                       _hd121082121714_
                       _tl121083121716_))
                  (___match124211124212_
                   _e121078121703_
                   _hd121079121706_
                   _tl121080121708_
                   _e121081121711_
                   _hd121082121714_
                   _tl121083121716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124211124212_
                                                   _e121078121703_
                                                   _hd121079121706_
                                                   _tl121080121708_
                                                   _e121081121711_
                                                   _hd121082121714_
                                                   _tl121083121716_))))
                                          (___match124211124212_
                                           _e121078121703_
                                           _hd121079121706_
                                           _tl121080121708_
                                           _e121081121711_
                                           _hd121082121714_
                                           _tl121083121716_))
                                      (___match124211124212_
                                       _e121078121703_
                                       _hd121079121706_
                                       _tl121080121708_
                                       _e121081121711_
                                       _hd121082121714_
                                       _tl121083121716_))))
                              (___match124211124212_
                               _e121078121703_
                               _hd121079121706_
                               _tl121080121708_
                               _e121081121711_
                               _hd121082121714_
                               _tl121083121716_))
                          (___match124211124212_
                           _e121078121703_
                           _hd121079121706_
                           _tl121080121708_
                           _e121081121711_
                           _hd121082121714_
                           _tl121083121716_))
                      (___match124211124212_
                       _e121078121703_
                       _hd121079121706_
                       _tl121080121708_
                       _e121081121711_
                       _hd121082121714_
                       _tl121083121716_))))
              (___match124211124212_
               _e121078121703_
               _hd121079121706_
               _tl121080121708_
               _e121081121711_
               _hd121082121714_
               _tl121083121716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match124211124212_
                                               _e121078121703_
                                               _hd121079121706_
                                               _tl121080121708_
                                               _e121081121711_
                                               _hd121082121714_
                                               _tl121083121716_))
                                          (___match124211124212_
                                           _e121078121703_
                                           _hd121079121706_
                                           _tl121080121708_
                                           _e121081121711_
                                           _hd121082121714_
                                           _tl121083121716_))))
                                  (___match124211124212_
                                   _e121078121703_
                                   _hd121079121706_
                                   _tl121080121708_
                                   _e121081121711_
                                   _hd121082121714_
                                   _tl121083121716_))
                              (___match124211124212_
                               _e121078121703_
                               _hd121079121706_
                               _tl121080121708_
                               _e121081121711_
                               _hd121082121714_
                               _tl121083121716_))
                          (___match124211124212_
                           _e121078121703_
                           _hd121079121706_
                           _tl121080121708_
                           _e121081121711_
                           _hd121082121714_
                           _tl121083121716_))))
                  (___match124211124212_
                   _e121078121703_
                   _hd121079121706_
                   _tl121080121708_
                   _e121081121711_
                   _hd121082121714_
                   _tl121083121716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124211124212_
                                                   _e121078121703_
                                                   _hd121079121706_
                                                   _tl121080121708_
                                                   _e121081121711_
                                                   _hd121082121714_
                                                   _tl121083121716_))
                                              (___match124211124212_
                                               _e121078121703_
                                               _hd121079121706_
                                               _tl121080121708_
                                               _e121081121711_
                                               _hd121082121714_
                                               _tl121083121716_))))
                                      (___match124211124212_
                                       _e121078121703_
                                       _hd121079121706_
                                       _tl121080121708_
                                       _e121081121711_
                                       _hd121082121714_
                                       _tl121083121716_))
                                  (___match124211124212_
                                   _e121078121703_
                                   _hd121079121706_
                                   _tl121080121708_
                                   _e121081121711_
                                   _hd121082121714_
                                   _tl121083121716_))
                              (___match124211124212_
                               _e121078121703_
                               _hd121079121706_
                               _tl121080121708_
                               _e121081121711_
                               _hd121082121714_
                               _tl121083121716_))))
                      (___match124211124212_
                       _e121078121703_
                       _hd121079121706_
                       _tl121080121708_
                       _e121081121711_
                       _hd121082121714_
                       _tl121083121716_))))
              (___match124211124212_
               _e121078121703_
               _hd121079121706_
               _tl121080121708_
               _e121081121711_
               _hd121082121714_
               _tl121083121716_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124211124212_
                                                   _e121078121703_
                                                   _hd121079121706_
                                                   _tl121080121708_
                                                   _e121081121711_
                                                   _hd121082121714_
                                                   _tl121083121716_))))
                                          (___match124211124212_
                                           _e121078121703_
                                           _hd121079121706_
                                           _tl121080121708_
                                           _e121081121711_
                                           _hd121082121714_
                                           _tl121083121716_))
                                      (___match124211124212_
                                       _e121078121703_
                                       _hd121079121706_
                                       _tl121080121708_
                                       _e121081121711_
                                       _hd121082121714_
                                       _tl121083121716_))
                                  (___match124211124212_
                                   _e121078121703_
                                   _hd121079121706_
                                   _tl121080121708_
                                   _e121081121711_
                                   _hd121082121714_
                                   _tl121083121716_))))
                          (___match124211124212_
                           _e121078121703_
                           _hd121079121706_
                           _tl121080121708_
                           _e121081121711_
                           _hd121082121714_
                           _tl121083121716_))))
                  (___match124211124212_
                   _e121078121703_
                   _hd121079121706_
                   _tl121080121708_
                   _e121081121711_
                   _hd121082121714_
                   _tl121083121716_))
              (___match124211124212_
               _e121078121703_
               _hd121079121706_
               _tl121080121708_
               _e121081121711_
               _hd121082121714_
               _tl121083121716_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124211124212_
                                                   _e121078121703_
                                                   _hd121079121706_
                                                   _tl121080121708_
                                                   _e121081121711_
                                                   _hd121082121714_
                                                   _tl121083121716_))))
                                          (___match124211124212_
                                           _e121078121703_
                                           _hd121079121706_
                                           _tl121080121708_
                                           _e121081121711_
                                           _hd121082121714_
                                           _tl121083121716_))))
                                  (___match124211124212_
                                   _e121078121703_
                                   _hd121079121706_
                                   _tl121080121708_
                                   _e121081121711_
                                   _hd121082121714_
                                   _tl121083121716_))))
                          (___match124345124346_
                           _e121078121703_
                           _hd121079121706_
                           _tl121080121708_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx124026124027_))
                  (let ((_e121069121920_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx124026124027_))))
                    (let ((_tl121071121925_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121069121920_)))
                          (_hd121070121923_
                           (let ()
                             (declare (not safe))
                             (##car _e121069121920_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L121928_ _tl121071121925_))
                            (___kont124028124029_ _L121928_))
                          (___match124053124054_
                           _e121069121920_
                           _hd121070121923_
                           _tl121071121925_))))
                  (let () (declare (not safe)) (_g121066121262_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx121015_)
        (letrec ((_clause-e121017_
                  (lambda (_form121058_)
                    (let ((__obj125699
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
                       __obj125699
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form121058_))
                       (if (let ((__tmp125765
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp125765))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form121058_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form121058_))
                               '#f)
                           '#f))
                      __obj125699))))
          (let* ((_g121019121029_
                  (lambda (_g121020121026_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g121020121026_))))
                 (_g121018121055_
                  (lambda (_g121020121032_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g121020121032_))
                        (let ((_e121022121034_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g121020121032_))))
                          (let ((_hd121023121037_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121022121034_)))
                                (_tl121024121039_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121022121034_))))
                            ((lambda (_L121042_)
                               (let ((_clauses121053_
                                      (map _clause-e121017_ _L121042_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses121053_)))
                             _tl121024121039_)))
                        (let ()
                          (declare (not safe))
                          (_g121019121029_ _g121020121032_))))))
            (declare (not safe))
            (_g121018121055_ _stx121015_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx120947_)
        (let* ((_g120949120966_
                (lambda (_g120950120963_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g120950120963_))))
               (_g120948121012_
                (lambda (_g120950120969_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g120950120969_))
                      (let ((_e120953120971_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g120950120969_))))
                        (let ((_hd120954120974_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120953120971_)))
                              (_tl120955120976_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120953120971_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120955120976_))
                              (let ((_e120956120979_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120955120976_))))
                                (let ((_hd120957120982_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120956120979_)))
                                      (_tl120958120984_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120956120979_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120958120984_))
                                      (let ((_e120959120987_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120958120984_))))
                                        (let ((_hd120960120990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120959120987_)))
                                              (_tl120961120992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120959120987_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120961120992_))
                                              ((lambda (_L120995_ _L120996_)
                                                 (let ((__tmp125766
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L120995_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp125766
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd120960120990_
                                               _hd120957120982_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120949120966_
                                                 _g120950120969_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120949120966_ _g120950120969_)))))
                              (let ()
                                (declare (not safe))
                                (_g120949120966_ _g120950120969_)))))
                      (let ()
                        (declare (not safe))
                        (_g120949120966_ _g120950120969_))))))
          (declare (not safe))
          (_g120948121012_ _stx120947_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx120852_)
        (let* ((___stx124354124355_ _stx120852_)
               (_g120855120875_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124354124355_)))))
          (let ((___kont124356124357_
                 (lambda (_L120919_ _L120920_)
                   (let ((_type-e120937120939_
                          (let ((__tmp125767
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L120920_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp125767))))
                     (if _type-e120937120939_
                         (let ((_type-e120942_ _type-e120937120939_))
                           (_type-e120942_ _stx120852_ _L120919_))
                         '#f))))
                (___kont124358124359_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124354124355_))
                (let ((_e120859120887_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124354124355_))))
                  (let ((_tl120861120892_
                         (let () (declare (not safe)) (##cdr _e120859120887_)))
                        (_hd120860120890_
                         (let ()
                           (declare (not safe))
                           (##car _e120859120887_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120861120892_))
                        (let ((_e120862120895_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120861120892_))))
                          (let ((_tl120864120900_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120862120895_)))
                                (_hd120863120898_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120862120895_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120863120898_))
                                (let ((_e120865120903_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120863120898_))))
                                  (let ((_tl120867120908_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120865120903_)))
                                        (_hd120866120906_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120865120903_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120866120906_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120866120906_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120867120908_))
                                                (let ((_e120868120911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120867120908_))))
                                                  (let ((_tl120870120916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120868120911_)))
                                                        (_hd120869120914_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120868120911_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120870120916_))
                                                        (___kont124356124357_
                                                         _tl120864120900_
                                                         _hd120869120914_)
                                                        (___kont124358124359_))))
                                                (___kont124358124359_))
                                            (___kont124358124359_))
                                        (___kont124358124359_))))
                                (___kont124358124359_))))
                        (___kont124358124359_))))
                (___kont124358124359_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx120801_)
        (let* ((_g120803120816_
                (lambda (_g120804120813_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g120804120813_))))
               (_g120802120849_
                (lambda (_g120804120819_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g120804120819_))
                      (let ((_e120806120821_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g120804120819_))))
                        (let ((_hd120807120824_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120806120821_)))
                              (_tl120808120826_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120806120821_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120808120826_))
                              (let ((_e120809120829_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120808120826_))))
                                (let ((_hd120810120832_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120809120829_)))
                                      (_tl120811120834_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120809120829_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120811120834_))
                                      ((lambda (_L120837_)
                                         (let ((__tmp125768
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L120837_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp125768)))
                                       _hd120810120832_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120803120816_ _g120804120819_)))))
                              (let ()
                                (declare (not safe))
                                (_g120803120816_ _g120804120819_)))))
                      (let ()
                        (declare (not safe))
                        (_g120803120816_ _g120804120819_))))))
          (declare (not safe))
          (_g120802120849_ _stx120801_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form120035_)
        (let* ((___stx124392124393_ _form120035_)
               (_g120040120197_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124392124393_)))))
          (let ((___kont124394124395_
                 (lambda (_L120721_ _L120722_ _L120723_) '#t))
                (___kont124400124401_
                 (lambda (_L120509_
                          _L120510_
                          _L120511_
                          _L120512_
                          _L120513_
                          _L120514_)
                   '#t))
                (___kont124406124407_
                 (lambda (_L120305_ _L120306_ _L120307_ _L120308_) '#t))
                (___kont124408124409_ (lambda () '#f)))
            (let* ((___match124533124534_
                    (lambda (_e120157120209_
                             _hd120158120212_
                             _tl120159120214_
                             _e120160120217_
                             _hd120161120220_
                             _tl120162120222_
                             _e120163120225_
                             _hd120164120228_
                             _tl120165120230_
                             _e120166120233_
                             _hd120167120236_
                             _tl120168120238_
                             _e120169120241_
                             _hd120170120244_
                             _tl120171120246_
                             _e120172120249_
                             _hd120173120252_
                             _tl120174120254_
                             _e120175120257_
                             _hd120176120260_
                             _tl120177120262_
                             _e120178120265_
                             _hd120179120268_
                             _tl120180120270_
                             _e120181120273_
                             _hd120182120276_
                             _tl120183120278_
                             _e120184120281_
                             _hd120185120284_
                             _tl120186120286_
                             _e120187120289_
                             _hd120188120292_
                             _tl120189120294_
                             _e120190120297_
                             _hd120191120300_
                             _tl120192120302_)
                      (let ((_L120305_ _hd120191120300_)
                            (_L120306_ _hd120182120276_)
                            (_L120307_ _hd120173120252_)
                            (_L120308_ _hd120158120212_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L120308_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L120307_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L120308_ _L120305_))
                                 (let ((__tmp125769
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L120306_
                                           _L120308_))))
                                   (declare (not safe))
                                   (not __tmp125769)))
                            (___kont124406124407_
                             _L120305_
                             _L120306_
                             _L120307_
                             _L120308_)
                            (___kont124408124409_)))))
                   (___match124505124506_
                    (lambda (_e120157120209_
                             _hd120158120212_
                             _tl120159120214_
                             _e120160120217_
                             _hd120161120220_
                             _tl120162120222_
                             _e120163120225_
                             _hd120164120228_
                             _tl120165120230_
                             _e120166120233_
                             _hd120167120236_
                             _tl120168120238_
                             _e120169120241_
                             _hd120170120244_
                             _tl120171120246_
                             _e120172120249_
                             _hd120173120252_
                             _tl120174120254_
                             _e120175120257_
                             _hd120176120260_
                             _tl120177120262_
                             _e120178120265_
                             _hd120179120268_
                             _tl120180120270_
                             _e120181120273_
                             _hd120182120276_
                             _tl120183120278_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120177120262_))
                          (let ((_e120184120281_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120177120262_))))
                            (let ((_tl120186120286_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120184120281_)))
                                  (_hd120185120284_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120184120281_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120185120284_))
                                  (let ((_e120187120289_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120185120284_))))
                                    (let ((_tl120189120294_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120187120289_)))
                                          (_hd120188120292_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120187120289_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd120188120292_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd120188120292_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120189120294_))
                                                  (let ((_e120190120297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120189120294_))))
                                                    (let ((_tl120192120302_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120190120297_)))
                                                          (_hd120191120300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120190120297_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120192120302_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120186120286_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120162120222_))
                          (___match124533124534_
                           _e120157120209_
                           _hd120158120212_
                           _tl120159120214_
                           _e120160120217_
                           _hd120161120220_
                           _tl120162120222_
                           _e120163120225_
                           _hd120164120228_
                           _tl120165120230_
                           _e120166120233_
                           _hd120167120236_
                           _tl120168120238_
                           _e120169120241_
                           _hd120170120244_
                           _tl120171120246_
                           _e120172120249_
                           _hd120173120252_
                           _tl120174120254_
                           _e120175120257_
                           _hd120176120260_
                           _tl120177120262_
                           _e120178120265_
                           _hd120179120268_
                           _tl120180120270_
                           _e120181120273_
                           _hd120182120276_
                           _tl120183120278_
                           _e120184120281_
                           _hd120185120284_
                           _tl120186120286_
                           _e120187120289_
                           _hd120188120292_
                           _tl120189120294_
                           _e120190120297_
                           _hd120191120300_
                           _tl120192120302_)
                          (___kont124408124409_))
                      (___kont124408124409_))
                  (___kont124408124409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont124408124409_))
                                              (___kont124408124409_))
                                          (___kont124408124409_))))
                                  (___kont124408124409_))))
                          (___kont124408124409_))))
                   (___match124435124436_
                    (lambda (_e120093120349_
                             _hd120094120352_
                             _tl120095120354_
                             ___splice124402124403_
                             _target120096120357_
                             _tl120098120359_)
                      (letrec ((_loop120099120362_
                                (lambda (_hd120097120365_ _arg120103120367_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd120097120365_))
                                      (let ((_e120100120370_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd120097120365_))))
                                        (let ((_lp-tl120102120375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120100120370_)))
                                              (_lp-hd120101120373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120100120370_))))
                                          (let ((__tmp125770
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd120101120373_
                                                         _arg120103120367_))))
                                            (declare (not safe))
                                            (_loop120099120362_
                                             _lp-tl120102120375_
                                             __tmp125770))))
                                      (let ((_arg120104120378_
                                             (reverse _arg120103120367_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120095120354_))
                                            (let ((_e120105120381_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120095120354_))))
                                              (let ((_tl120107120386_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120105120381_)))
                                                    (_hd120106120384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120105120381_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120106120384_))
                                                    (let ((_e120108120389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120106120384_))))
                                                      (let ((_tl120110120394_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120108120389_)))
                    (_hd120109120392_
                     (let () (declare (not safe)) (##car _e120108120389_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120109120392_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd120109120392_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120110120394_))
                            (let ((_e120111120397_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120110120394_))))
                              (let ((_tl120113120402_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120111120397_)))
                                    (_hd120112120400_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120111120397_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120112120400_))
                                    (let ((_e120114120405_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120112120400_))))
                                      (let ((_tl120116120410_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120114120405_)))
                                            (_hd120115120408_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120114120405_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120115120408_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd120115120408_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120116120410_))
                                                    (let ((_e120117120413_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120116120410_))))
                                                      (let ((_tl120119120418_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120117120413_)))
                    (_hd120118120416_
                     (let () (declare (not safe)) (##car _e120117120413_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl120119120418_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120113120402_))
                        (let ((_e120120120421_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120113120402_))))
                          (let ((_tl120122120426_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120120120421_)))
                                (_hd120121120424_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120120120421_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120121120424_))
                                (let ((_e120123120429_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120121120424_))))
                                  (let ((_tl120125120434_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120123120429_)))
                                        (_hd120124120432_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120123120429_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120124120432_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120124120432_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120125120434_))
                                                (let ((_e120126120437_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120125120434_))))
                                                  (let ((_tl120128120442_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120126120437_)))
                                                        (_hd120127120440_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120126120437_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120128120442_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl120122120426_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl120122120426_))
                              '1)
                        (let ((___splice124404124405_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl120122120426_
                                  '1))))
                          (let ((_tl120131120447_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124404124405_ '1)))
                                (_target120129120445_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124404124405_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120131120447_))
                                (let ((_e120138120450_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120131120447_))))
                                  (let ((_tl120140120455_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120138120450_)))
                                        (_hd120139120453_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120138120450_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120139120453_))
                                        (let ((_e120141120458_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120139120453_))))
                                          (let ((_tl120143120463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120141120458_)))
                                                (_hd120142120461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120141120458_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd120142120461_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd120142120461_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl120143120463_))
                                                        (let ((_e120144120466_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl120143120463_))))
                  (let ((_tl120146120471_
                         (let () (declare (not safe)) (##cdr _e120144120466_)))
                        (_hd120145120469_
                         (let ()
                           (declare (not safe))
                           (##car _e120144120466_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl120146120471_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl120140120455_))
                            (letrec ((_loop120132120474_
                                      (lambda (_hd120130120477_
                                               _xarg120136120479_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd120130120477_))
                                            (let ((_e120133120482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd120130120477_))))
                                              (let ((_lp-tl120135120487_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120133120482_)))
                                                    (_lp-hd120134120485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120133120482_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd120134120485_))
                                                    (let ((_e120147120490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd120134120485_))))
                                                      (let ((_tl120149120495_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120147120490_)))
                    (_hd120148120493_
                     (let () (declare (not safe)) (##car _e120147120490_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120148120493_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd120148120493_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120149120495_))
                            (let ((_e120150120498_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120149120495_))))
                              (let ((_tl120152120503_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120150120498_)))
                                    (_hd120151120501_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120150120498_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120152120503_))
                                    (let ((__tmp125771
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd120151120501_
                                                   _xarg120136120479_))))
                                      (declare (not safe))
                                      (_loop120132120474_
                                       _lp-tl120135120487_
                                       __tmp125771))
                                    (___match124505124506_
                                     _e120093120349_
                                     _hd120094120352_
                                     _tl120095120354_
                                     _e120105120381_
                                     _hd120106120384_
                                     _tl120107120386_
                                     _e120108120389_
                                     _hd120109120392_
                                     _tl120110120394_
                                     _e120111120397_
                                     _hd120112120400_
                                     _tl120113120402_
                                     _e120114120405_
                                     _hd120115120408_
                                     _tl120116120410_
                                     _e120117120413_
                                     _hd120118120416_
                                     _tl120119120418_
                                     _e120120120421_
                                     _hd120121120424_
                                     _tl120122120426_
                                     _e120123120429_
                                     _hd120124120432_
                                     _tl120125120434_
                                     _e120126120437_
                                     _hd120127120440_
                                     _tl120128120442_))))
                            (___match124505124506_
                             _e120093120349_
                             _hd120094120352_
                             _tl120095120354_
                             _e120105120381_
                             _hd120106120384_
                             _tl120107120386_
                             _e120108120389_
                             _hd120109120392_
                             _tl120110120394_
                             _e120111120397_
                             _hd120112120400_
                             _tl120113120402_
                             _e120114120405_
                             _hd120115120408_
                             _tl120116120410_
                             _e120117120413_
                             _hd120118120416_
                             _tl120119120418_
                             _e120120120421_
                             _hd120121120424_
                             _tl120122120426_
                             _e120123120429_
                             _hd120124120432_
                             _tl120125120434_
                             _e120126120437_
                             _hd120127120440_
                             _tl120128120442_))
                        (___match124505124506_
                         _e120093120349_
                         _hd120094120352_
                         _tl120095120354_
                         _e120105120381_
                         _hd120106120384_
                         _tl120107120386_
                         _e120108120389_
                         _hd120109120392_
                         _tl120110120394_
                         _e120111120397_
                         _hd120112120400_
                         _tl120113120402_
                         _e120114120405_
                         _hd120115120408_
                         _tl120116120410_
                         _e120117120413_
                         _hd120118120416_
                         _tl120119120418_
                         _e120120120421_
                         _hd120121120424_
                         _tl120122120426_
                         _e120123120429_
                         _hd120124120432_
                         _tl120125120434_
                         _e120126120437_
                         _hd120127120440_
                         _tl120128120442_))
                    (___match124505124506_
                     _e120093120349_
                     _hd120094120352_
                     _tl120095120354_
                     _e120105120381_
                     _hd120106120384_
                     _tl120107120386_
                     _e120108120389_
                     _hd120109120392_
                     _tl120110120394_
                     _e120111120397_
                     _hd120112120400_
                     _tl120113120402_
                     _e120114120405_
                     _hd120115120408_
                     _tl120116120410_
                     _e120117120413_
                     _hd120118120416_
                     _tl120119120418_
                     _e120120120421_
                     _hd120121120424_
                     _tl120122120426_
                     _e120123120429_
                     _hd120124120432_
                     _tl120125120434_
                     _e120126120437_
                     _hd120127120440_
                     _tl120128120442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124505124506_
                                                     _e120093120349_
                                                     _hd120094120352_
                                                     _tl120095120354_
                                                     _e120105120381_
                                                     _hd120106120384_
                                                     _tl120107120386_
                                                     _e120108120389_
                                                     _hd120109120392_
                                                     _tl120110120394_
                                                     _e120111120397_
                                                     _hd120112120400_
                                                     _tl120113120402_
                                                     _e120114120405_
                                                     _hd120115120408_
                                                     _tl120116120410_
                                                     _e120117120413_
                                                     _hd120118120416_
                                                     _tl120119120418_
                                                     _e120120120421_
                                                     _hd120121120424_
                                                     _tl120122120426_
                                                     _e120123120429_
                                                     _hd120124120432_
                                                     _tl120125120434_
                                                     _e120126120437_
                                                     _hd120127120440_
                                                     _tl120128120442_))))
                                            (let ((_xarg120137120506_
                                                   (reverse _xarg120136120479_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl120107120386_))
                                                  (let ((_L120509_
                                                         _hd120145120469_)
                                                        (_L120510_
                                                         _xarg120137120506_)
                                                        (_L120511_
                                                         _hd120127120440_)
                                                        (_L120512_
                                                         _hd120118120416_)
                                                        (_L120513_
                                                         _tl120098120359_)
                                                        (_L120514_
                                                         _arg120104120378_))
                                                    (if (and (let ((__tmp125772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp125773
                                   (lambda (_g120557120560_ _g120558120562_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g120557120560_
                                             _g120558120562_)))))
                              (declare (not safe))
                              (foldr1 __tmp125773 '() _L120514_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp125772))
                     (let () (declare (not safe)) (gx#identifier? _L120513_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L120512_ 'apply))
                     (fx= (length (let ((__tmp125774
                                         (lambda (_g120564120567_
                                                  _g120565120569_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g120564120567_
                                                   _g120565120569_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp125774 '() _L120514_)))
                          (length (let ((__tmp125775
                                         (lambda (_g120571120574_
                                                  _g120572120576_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g120571120574_
                                                   _g120572120576_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp125775 '() _L120510_))))
                     (let ((__tmp125778
                            (let ((__tmp125779
                                   (lambda (_g120578120581_ _g120579120583_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g120578120581_
                                             _g120579120583_)))))
                              (declare (not safe))
                              (foldr1 __tmp125779 '() _L120514_)))
                           (__tmp125776
                            (let ((__tmp125777
                                   (lambda (_g120585120588_ _g120586120590_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g120585120588_
                                             _g120586120590_)))))
                              (declare (not safe))
                              (foldr1 __tmp125777 '() _L120510_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp125778 __tmp125776))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L120513_ _L120509_))
                     (let ((__tmp125780
                            (let ((__tmp125784
                                   (lambda (_g120592120594_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g120592120594_
                                        _L120511_))))
                                  (__tmp125781
                                   (let ((__tmp125783
                                          (lambda (_g120596120599_
                                                   _g120597120601_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g120596120599_
                                                    _g120597120601_))))
                                         (__tmp125782
                                          (let ()
                                            (declare (not safe))
                                            (cons _L120513_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp125783
                                             __tmp125782
                                             _L120514_))))
                              (declare (not safe))
                              (find __tmp125784 __tmp125781))))
                       (declare (not safe))
                       (not __tmp125780)))
                (___kont124400124401_
                 _L120509_
                 _L120510_
                 _L120511_
                 _L120512_
                 _L120513_
                 _L120514_)
                (___match124505124506_
                 _e120093120349_
                 _hd120094120352_
                 _tl120095120354_
                 _e120105120381_
                 _hd120106120384_
                 _tl120107120386_
                 _e120108120389_
                 _hd120109120392_
                 _tl120110120394_
                 _e120111120397_
                 _hd120112120400_
                 _tl120113120402_
                 _e120114120405_
                 _hd120115120408_
                 _tl120116120410_
                 _e120117120413_
                 _hd120118120416_
                 _tl120119120418_
                 _e120120120421_
                 _hd120121120424_
                 _tl120122120426_
                 _e120123120429_
                 _hd120124120432_
                 _tl120125120434_
                 _e120126120437_
                 _hd120127120440_
                 _tl120128120442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match124505124506_
                                                   _e120093120349_
                                                   _hd120094120352_
                                                   _tl120095120354_
                                                   _e120105120381_
                                                   _hd120106120384_
                                                   _tl120107120386_
                                                   _e120108120389_
                                                   _hd120109120392_
                                                   _tl120110120394_
                                                   _e120111120397_
                                                   _hd120112120400_
                                                   _tl120113120402_
                                                   _e120114120405_
                                                   _hd120115120408_
                                                   _tl120116120410_
                                                   _e120117120413_
                                                   _hd120118120416_
                                                   _tl120119120418_
                                                   _e120120120421_
                                                   _hd120121120424_
                                                   _tl120122120426_
                                                   _e120123120429_
                                                   _hd120124120432_
                                                   _tl120125120434_
                                                   _e120126120437_
                                                   _hd120127120440_
                                                   _tl120128120442_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop120132120474_ _target120129120445_ '())))
                            (___match124505124506_
                             _e120093120349_
                             _hd120094120352_
                             _tl120095120354_
                             _e120105120381_
                             _hd120106120384_
                             _tl120107120386_
                             _e120108120389_
                             _hd120109120392_
                             _tl120110120394_
                             _e120111120397_
                             _hd120112120400_
                             _tl120113120402_
                             _e120114120405_
                             _hd120115120408_
                             _tl120116120410_
                             _e120117120413_
                             _hd120118120416_
                             _tl120119120418_
                             _e120120120421_
                             _hd120121120424_
                             _tl120122120426_
                             _e120123120429_
                             _hd120124120432_
                             _tl120125120434_
                             _e120126120437_
                             _hd120127120440_
                             _tl120128120442_))
                        (___match124505124506_
                         _e120093120349_
                         _hd120094120352_
                         _tl120095120354_
                         _e120105120381_
                         _hd120106120384_
                         _tl120107120386_
                         _e120108120389_
                         _hd120109120392_
                         _tl120110120394_
                         _e120111120397_
                         _hd120112120400_
                         _tl120113120402_
                         _e120114120405_
                         _hd120115120408_
                         _tl120116120410_
                         _e120117120413_
                         _hd120118120416_
                         _tl120119120418_
                         _e120120120421_
                         _hd120121120424_
                         _tl120122120426_
                         _e120123120429_
                         _hd120124120432_
                         _tl120125120434_
                         _e120126120437_
                         _hd120127120440_
                         _tl120128120442_))))
                (___match124505124506_
                 _e120093120349_
                 _hd120094120352_
                 _tl120095120354_
                 _e120105120381_
                 _hd120106120384_
                 _tl120107120386_
                 _e120108120389_
                 _hd120109120392_
                 _tl120110120394_
                 _e120111120397_
                 _hd120112120400_
                 _tl120113120402_
                 _e120114120405_
                 _hd120115120408_
                 _tl120116120410_
                 _e120117120413_
                 _hd120118120416_
                 _tl120119120418_
                 _e120120120421_
                 _hd120121120424_
                 _tl120122120426_
                 _e120123120429_
                 _hd120124120432_
                 _tl120125120434_
                 _e120126120437_
                 _hd120127120440_
                 _tl120128120442_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124505124506_
                                                     _e120093120349_
                                                     _hd120094120352_
                                                     _tl120095120354_
                                                     _e120105120381_
                                                     _hd120106120384_
                                                     _tl120107120386_
                                                     _e120108120389_
                                                     _hd120109120392_
                                                     _tl120110120394_
                                                     _e120111120397_
                                                     _hd120112120400_
                                                     _tl120113120402_
                                                     _e120114120405_
                                                     _hd120115120408_
                                                     _tl120116120410_
                                                     _e120117120413_
                                                     _hd120118120416_
                                                     _tl120119120418_
                                                     _e120120120421_
                                                     _hd120121120424_
                                                     _tl120122120426_
                                                     _e120123120429_
                                                     _hd120124120432_
                                                     _tl120125120434_
                                                     _e120126120437_
                                                     _hd120127120440_
                                                     _tl120128120442_))
                                                (___match124505124506_
                                                 _e120093120349_
                                                 _hd120094120352_
                                                 _tl120095120354_
                                                 _e120105120381_
                                                 _hd120106120384_
                                                 _tl120107120386_
                                                 _e120108120389_
                                                 _hd120109120392_
                                                 _tl120110120394_
                                                 _e120111120397_
                                                 _hd120112120400_
                                                 _tl120113120402_
                                                 _e120114120405_
                                                 _hd120115120408_
                                                 _tl120116120410_
                                                 _e120117120413_
                                                 _hd120118120416_
                                                 _tl120119120418_
                                                 _e120120120421_
                                                 _hd120121120424_
                                                 _tl120122120426_
                                                 _e120123120429_
                                                 _hd120124120432_
                                                 _tl120125120434_
                                                 _e120126120437_
                                                 _hd120127120440_
                                                 _tl120128120442_))))
                                        (___match124505124506_
                                         _e120093120349_
                                         _hd120094120352_
                                         _tl120095120354_
                                         _e120105120381_
                                         _hd120106120384_
                                         _tl120107120386_
                                         _e120108120389_
                                         _hd120109120392_
                                         _tl120110120394_
                                         _e120111120397_
                                         _hd120112120400_
                                         _tl120113120402_
                                         _e120114120405_
                                         _hd120115120408_
                                         _tl120116120410_
                                         _e120117120413_
                                         _hd120118120416_
                                         _tl120119120418_
                                         _e120120120421_
                                         _hd120121120424_
                                         _tl120122120426_
                                         _e120123120429_
                                         _hd120124120432_
                                         _tl120125120434_
                                         _e120126120437_
                                         _hd120127120440_
                                         _tl120128120442_))))
                                (___match124505124506_
                                 _e120093120349_
                                 _hd120094120352_
                                 _tl120095120354_
                                 _e120105120381_
                                 _hd120106120384_
                                 _tl120107120386_
                                 _e120108120389_
                                 _hd120109120392_
                                 _tl120110120394_
                                 _e120111120397_
                                 _hd120112120400_
                                 _tl120113120402_
                                 _e120114120405_
                                 _hd120115120408_
                                 _tl120116120410_
                                 _e120117120413_
                                 _hd120118120416_
                                 _tl120119120418_
                                 _e120120120421_
                                 _hd120121120424_
                                 _tl120122120426_
                                 _e120123120429_
                                 _hd120124120432_
                                 _tl120125120434_
                                 _e120126120437_
                                 _hd120127120440_
                                 _tl120128120442_))))
                        (___match124505124506_
                         _e120093120349_
                         _hd120094120352_
                         _tl120095120354_
                         _e120105120381_
                         _hd120106120384_
                         _tl120107120386_
                         _e120108120389_
                         _hd120109120392_
                         _tl120110120394_
                         _e120111120397_
                         _hd120112120400_
                         _tl120113120402_
                         _e120114120405_
                         _hd120115120408_
                         _tl120116120410_
                         _e120117120413_
                         _hd120118120416_
                         _tl120119120418_
                         _e120120120421_
                         _hd120121120424_
                         _tl120122120426_
                         _e120123120429_
                         _hd120124120432_
                         _tl120125120434_
                         _e120126120437_
                         _hd120127120440_
                         _tl120128120442_))
                    (___match124505124506_
                     _e120093120349_
                     _hd120094120352_
                     _tl120095120354_
                     _e120105120381_
                     _hd120106120384_
                     _tl120107120386_
                     _e120108120389_
                     _hd120109120392_
                     _tl120110120394_
                     _e120111120397_
                     _hd120112120400_
                     _tl120113120402_
                     _e120114120405_
                     _hd120115120408_
                     _tl120116120410_
                     _e120117120413_
                     _hd120118120416_
                     _tl120119120418_
                     _e120120120421_
                     _hd120121120424_
                     _tl120122120426_
                     _e120123120429_
                     _hd120124120432_
                     _tl120125120434_
                     _e120126120437_
                     _hd120127120440_
                     _tl120128120442_))
                (___kont124408124409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124408124409_))
                                            (___kont124408124409_))
                                        (___kont124408124409_))))
                                (___kont124408124409_))))
                        (___kont124408124409_))
                    (___kont124408124409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124408124409_))
                                                (___kont124408124409_))
                                            (___kont124408124409_))))
                                    (___kont124408124409_))))
                            (___kont124408124409_))
                        (___kont124408124409_))
                    (___kont124408124409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124408124409_))))
                                            (___kont124408124409_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop120099120362_ _target120096120357_ '())))))
                   (___match124423124424_
                    (lambda (_e120045120609_
                             _hd120046120612_
                             _tl120047120614_
                             ___splice124396124397_
                             _target120048120617_
                             _tl120050120619_)
                      (letrec ((_loop120051120622_
                                (lambda (_hd120049120625_ _arg120055120627_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd120049120625_))
                                      (let ((_e120052120630_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd120049120625_))))
                                        (let ((_lp-tl120054120635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120052120630_)))
                                              (_lp-hd120053120633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120052120630_))))
                                          (let ((__tmp125785
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd120053120633_
                                                         _arg120055120627_))))
                                            (declare (not safe))
                                            (_loop120051120622_
                                             _lp-tl120054120635_
                                             __tmp125785))))
                                      (let ((_arg120056120638_
                                             (reverse _arg120055120627_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120047120614_))
                                            (let ((_e120057120641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120047120614_))))
                                              (let ((_tl120059120646_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120057120641_)))
                                                    (_hd120058120644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120057120641_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120058120644_))
                                                    (let ((_e120060120649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120058120644_))))
                                                      (let ((_tl120062120654_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120060120649_)))
                    (_hd120061120652_
                     (let () (declare (not safe)) (##car _e120060120649_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120061120652_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd120061120652_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120062120654_))
                            (let ((_e120063120657_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120062120654_))))
                              (let ((_tl120065120662_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120063120657_)))
                                    (_hd120064120660_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120063120657_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120064120660_))
                                    (let ((_e120066120665_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120064120660_))))
                                      (let ((_tl120068120670_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120066120665_)))
                                            (_hd120067120668_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120066120665_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120067120668_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd120067120668_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120068120670_))
                                                    (let ((_e120069120673_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120068120670_))))
                                                      (let ((_tl120071120678_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120069120673_)))
                    (_hd120070120676_
                     (let () (declare (not safe)) (##car _e120069120673_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl120071120678_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl120065120662_))
                        (let ((___splice124398124399_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl120065120662_
                                  '0))))
                          (let ((_tl120074120683_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124398124399_ '1)))
                                (_target120072120681_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124398124399_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120074120683_))
                                (letrec ((_loop120075120686_
                                          (lambda (_hd120073120689_
                                                   _xarg120079120691_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120073120689_))
                                                (let ((_e120076120694_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120073120689_))))
                                                  (let ((_lp-tl120078120699_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120076120694_)))
                                                        (_lp-hd120077120697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120076120694_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd120077120697_))
                                                        (let ((_e120081120702_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd120077120697_))))
                  (let ((_tl120083120707_
                         (let () (declare (not safe)) (##cdr _e120081120702_)))
                        (_hd120082120705_
                         (let ()
                           (declare (not safe))
                           (##car _e120081120702_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120082120705_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd120082120705_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120083120707_))
                                (let ((_e120084120710_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120083120707_))))
                                  (let ((_tl120086120715_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120084120710_)))
                                        (_hd120085120713_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120084120710_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120086120715_))
                                        (let ((__tmp125786
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd120085120713_
                                                       _xarg120079120691_))))
                                          (declare (not safe))
                                          (_loop120075120686_
                                           _lp-tl120078120699_
                                           __tmp125786))
                                        (___match124435124436_
                                         _e120045120609_
                                         _hd120046120612_
                                         _tl120047120614_
                                         ___splice124396124397_
                                         _target120048120617_
                                         _tl120050120619_))))
                                (___match124435124436_
                                 _e120045120609_
                                 _hd120046120612_
                                 _tl120047120614_
                                 ___splice124396124397_
                                 _target120048120617_
                                 _tl120050120619_))
                            (___match124435124436_
                             _e120045120609_
                             _hd120046120612_
                             _tl120047120614_
                             ___splice124396124397_
                             _target120048120617_
                             _tl120050120619_))
                        (___match124435124436_
                         _e120045120609_
                         _hd120046120612_
                         _tl120047120614_
                         ___splice124396124397_
                         _target120048120617_
                         _tl120050120619_))))
                (___match124435124436_
                 _e120045120609_
                 _hd120046120612_
                 _tl120047120614_
                 ___splice124396124397_
                 _target120048120617_
                 _tl120050120619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg120080120718_
                                                       (reverse _xarg120079120691_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl120059120646_))
                                                      (let ((_L120721_
                                                             _xarg120080120718_)
                                                            (_L120722_
                                                             _hd120070120676_)
                                                            (_L120723_
                                                             _arg120056120638_))
                                                        (if (and (let ((__tmp125787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp125788
                                       (lambda (_g120751120754_
                                                _g120752120756_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g120751120754_
                                                 _g120752120756_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp125788 '() _L120723_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp125787))
                         (fx= (length (let ((__tmp125789
                                             (lambda (_g120758120761_
                                                      _g120759120763_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g120758120761_
                                                       _g120759120763_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp125789 '() _L120723_)))
                              (length (let ((__tmp125790
                                             (lambda (_g120765120768_
                                                      _g120766120770_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g120765120768_
                                                       _g120766120770_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp125790 '() _L120721_))))
                         (let ((__tmp125793
                                (let ((__tmp125794
                                       (lambda (_g120772120775_
                                                _g120773120777_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g120772120775_
                                                 _g120773120777_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp125794 '() _L120723_)))
                               (__tmp125791
                                (let ((__tmp125792
                                       (lambda (_g120779120782_
                                                _g120780120784_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g120779120782_
                                                 _g120780120784_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp125792 '() _L120721_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp125793
                                    __tmp125791))
                         (let ((__tmp125795
                                (let ((__tmp125798
                                       (lambda (_g120786120788_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g120786120788_
                                            _L120722_))))
                                      (__tmp125796
                                       (let ((__tmp125797
                                              (lambda (_g120790120793_
                                                       _g120791120795_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g120790120793_
                                                        _g120791120795_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp125797 '() _L120723_))))
                                  (declare (not safe))
                                  (find __tmp125798 __tmp125796))))
                           (declare (not safe))
                           (not __tmp125795)))
                    (___kont124394124395_ _L120721_ _L120722_ _L120723_)
                    (___match124435124436_
                     _e120045120609_
                     _hd120046120612_
                     _tl120047120614_
                     ___splice124396124397_
                     _target120048120617_
                     _tl120050120619_)))
              (___match124435124436_
               _e120045120609_
               _hd120046120612_
               _tl120047120614_
               ___splice124396124397_
               _target120048120617_
               _tl120050120619_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop120075120686_
                                     _target120072120681_
                                     '())))
                                (___match124435124436_
                                 _e120045120609_
                                 _hd120046120612_
                                 _tl120047120614_
                                 ___splice124396124397_
                                 _target120048120617_
                                 _tl120050120619_))))
                        (___match124435124436_
                         _e120045120609_
                         _hd120046120612_
                         _tl120047120614_
                         ___splice124396124397_
                         _target120048120617_
                         _tl120050120619_))
                    (___match124435124436_
                     _e120045120609_
                     _hd120046120612_
                     _tl120047120614_
                     ___splice124396124397_
                     _target120048120617_
                     _tl120050120619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124435124436_
                                                     _e120045120609_
                                                     _hd120046120612_
                                                     _tl120047120614_
                                                     ___splice124396124397_
                                                     _target120048120617_
                                                     _tl120050120619_))
                                                (___match124435124436_
                                                 _e120045120609_
                                                 _hd120046120612_
                                                 _tl120047120614_
                                                 ___splice124396124397_
                                                 _target120048120617_
                                                 _tl120050120619_))
                                            (___match124435124436_
                                             _e120045120609_
                                             _hd120046120612_
                                             _tl120047120614_
                                             ___splice124396124397_
                                             _target120048120617_
                                             _tl120050120619_))))
                                    (___match124435124436_
                                     _e120045120609_
                                     _hd120046120612_
                                     _tl120047120614_
                                     ___splice124396124397_
                                     _target120048120617_
                                     _tl120050120619_))))
                            (___match124435124436_
                             _e120045120609_
                             _hd120046120612_
                             _tl120047120614_
                             ___splice124396124397_
                             _target120048120617_
                             _tl120050120619_))
                        (___match124435124436_
                         _e120045120609_
                         _hd120046120612_
                         _tl120047120614_
                         ___splice124396124397_
                         _target120048120617_
                         _tl120050120619_))
                    (___match124435124436_
                     _e120045120609_
                     _hd120046120612_
                     _tl120047120614_
                     ___splice124396124397_
                     _target120048120617_
                     _tl120050120619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124435124436_
                                                     _e120045120609_
                                                     _hd120046120612_
                                                     _tl120047120614_
                                                     ___splice124396124397_
                                                     _target120048120617_
                                                     _tl120050120619_))))
                                            (___match124435124436_
                                             _e120045120609_
                                             _hd120046120612_
                                             _tl120047120614_
                                             ___splice124396124397_
                                             _target120048120617_
                                             _tl120050120619_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop120051120622_ _target120048120617_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx124392124393_))
                  (let ((_e120045120609_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx124392124393_))))
                    (let ((_tl120047120614_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120045120609_)))
                          (_hd120046120612_
                           (let ()
                             (declare (not safe))
                             (##car _e120045120609_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd120046120612_))
                          (let ((___splice124396124397_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd120046120612_
                                    '0))))
                            (let ((_tl120050120619_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice124396124397_ '1)))
                                  (_target120048120617_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice124396124397_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120050120619_))
                                  (___match124423124424_
                                   _e120045120609_
                                   _hd120046120612_
                                   _tl120047120614_
                                   ___splice124396124397_
                                   _target120048120617_
                                   _tl120050120619_)
                                  (___match124435124436_
                                   _e120045120609_
                                   _hd120046120612_
                                   _tl120047120614_
                                   ___splice124396124397_
                                   _target120048120617_
                                   _tl120050120619_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120047120614_))
                              (let ((_e120160120217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120047120614_))))
                                (let ((_tl120162120222_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120160120217_)))
                                      (_hd120161120220_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120160120217_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd120161120220_))
                                      (let ((_e120163120225_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd120161120220_))))
                                        (let ((_tl120165120230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120163120225_)))
                                              (_hd120164120228_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120163120225_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd120164120228_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd120164120228_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl120165120230_))
                                                      (let ((_e120166120233_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl120165120230_))))
                (let ((_tl120168120238_
                       (let () (declare (not safe)) (##cdr _e120166120233_)))
                      (_hd120167120236_
                       (let () (declare (not safe)) (##car _e120166120233_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120167120236_))
                      (let ((_e120169120241_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120167120236_))))
                        (let ((_tl120171120246_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120169120241_)))
                              (_hd120170120244_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120169120241_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd120170120244_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd120170120244_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120171120246_))
                                      (let ((_e120172120249_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120171120246_))))
                                        (let ((_tl120174120254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120172120249_)))
                                              (_hd120173120252_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120172120249_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120174120254_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120168120238_))
                                                  (let ((_e120175120257_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120168120238_))))
                                                    (let ((_tl120177120262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120175120257_)))
                                                          (_hd120176120260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120175120257_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd120176120260_))
                                                          (let ((_e120178120265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd120176120260_))))
                    (let ((_tl120180120270_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120178120265_)))
                          (_hd120179120268_
                           (let ()
                             (declare (not safe))
                             (##car _e120178120265_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd120179120268_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd120179120268_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120180120270_))
                                  (let ((_e120181120273_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120180120270_))))
                                    (let ((_tl120183120278_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120181120273_)))
                                          (_hd120182120276_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120181120273_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120183120278_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl120177120262_))
                                              (let ((_e120184120281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl120177120262_))))
                                                (let ((_tl120186120286_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120184120281_)))
                                                      (_hd120185120284_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120184120281_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120185120284_))
                                                      (let ((_e120187120289_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120185120284_))))
                (let ((_tl120189120294_
                       (let () (declare (not safe)) (##cdr _e120187120289_)))
                      (_hd120188120292_
                       (let () (declare (not safe)) (##car _e120187120289_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd120188120292_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd120188120292_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120189120294_))
                              (let ((_e120190120297_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120189120294_))))
                                (let ((_tl120192120302_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120190120297_)))
                                      (_hd120191120300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120190120297_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120192120302_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120186120286_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120162120222_))
                                              (___match124533124534_
                                               _e120045120609_
                                               _hd120046120612_
                                               _tl120047120614_
                                               _e120160120217_
                                               _hd120161120220_
                                               _tl120162120222_
                                               _e120163120225_
                                               _hd120164120228_
                                               _tl120165120230_
                                               _e120166120233_
                                               _hd120167120236_
                                               _tl120168120238_
                                               _e120169120241_
                                               _hd120170120244_
                                               _tl120171120246_
                                               _e120172120249_
                                               _hd120173120252_
                                               _tl120174120254_
                                               _e120175120257_
                                               _hd120176120260_
                                               _tl120177120262_
                                               _e120178120265_
                                               _hd120179120268_
                                               _tl120180120270_
                                               _e120181120273_
                                               _hd120182120276_
                                               _tl120183120278_
                                               _e120184120281_
                                               _hd120185120284_
                                               _tl120186120286_
                                               _e120187120289_
                                               _hd120188120292_
                                               _tl120189120294_
                                               _e120190120297_
                                               _hd120191120300_
                                               _tl120192120302_)
                                              (___kont124408124409_))
                                          (___kont124408124409_))
                                      (___kont124408124409_))))
                              (___kont124408124409_))
                          (___kont124408124409_))
                      (___kont124408124409_))))
              (___kont124408124409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont124408124409_))
                                          (___kont124408124409_))))
                                  (___kont124408124409_))
                              (___kont124408124409_))
                          (___kont124408124409_))))
                  (___kont124408124409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont124408124409_))
                                              (___kont124408124409_))))
                                      (___kont124408124409_))
                                  (___kont124408124409_))
                              (___kont124408124409_))))
                      (___kont124408124409_))))
              (___kont124408124409_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont124408124409_))
                                              (___kont124408124409_))))
                                      (___kont124408124409_))))
                              (___kont124408124409_)))))
                  (___kont124408124409_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form119503_)
        (let* ((___stx124536124537_ _form119503_)
               (_g119507119631_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124536124537_)))))
          (let ((___kont124538124539_
                 (lambda (_L120001_ _L120002_ _L120003_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L120002_))))
                (___kont124544124545_
                 (lambda (_L119849_ _L119850_ _L119851_ _L119852_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L119849_))))
                (___kont124548124549_
                 (lambda (_L119716_ _L119717_ _L119718_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L119716_)))))
            (let* ((___match124645124646_
                    (lambda (_e119597119636_
                             _hd119598119639_
                             _tl119599119641_
                             _e119600119644_
                             _hd119601119647_
                             _tl119602119649_
                             _e119603119652_
                             _hd119604119655_
                             _tl119605119657_
                             _e119606119660_
                             _hd119607119663_
                             _tl119608119665_
                             _e119609119668_
                             _hd119610119671_
                             _tl119611119673_
                             _e119612119676_
                             _hd119613119679_
                             _tl119614119681_
                             _e119615119684_
                             _hd119616119687_
                             _tl119617119689_
                             _e119618119692_
                             _hd119619119695_
                             _tl119620119697_
                             _e119621119700_
                             _hd119622119703_
                             _tl119623119705_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119617119689_))
                          (let ((_e119624119708_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119617119689_))))
                            (let ((_tl119626119713_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119624119708_)))
                                  (_hd119625119711_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119624119708_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119626119713_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119602119649_))
                                      (___kont124548124549_
                                       _hd119622119703_
                                       _hd119613119679_
                                       _hd119598119639_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119507119631_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119507119631_)))))
                          (let () (declare (not safe)) (_g119507119631_)))))
                   (___match124575124576_
                    (lambda (_e119558119753_
                             _hd119559119756_
                             _tl119560119758_
                             ___splice124546124547_
                             _target119561119761_
                             _tl119563119763_)
                      (letrec ((_loop119564119766_
                                (lambda (_hd119562119769_ _arg119568119771_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd119562119769_))
                                      (let ((_e119565119774_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd119562119769_))))
                                        (let ((_lp-tl119567119779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119565119774_)))
                                              (_lp-hd119566119777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119565119774_))))
                                          (let ((__tmp125799
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd119566119777_
                                                         _arg119568119771_))))
                                            (declare (not safe))
                                            (_loop119564119766_
                                             _lp-tl119567119779_
                                             __tmp125799))))
                                      (let ((_arg119569119782_
                                             (reverse _arg119568119771_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl119560119758_))
                                            (let ((_e119570119785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl119560119758_))))
                                              (let ((_tl119572119790_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e119570119785_)))
                                                    (_hd119571119788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e119570119785_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd119571119788_))
                                                    (let ((_e119573119793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd119571119788_))))
                                                      (let ((_tl119575119798_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119573119793_)))
                    (_hd119574119796_
                     (let () (declare (not safe)) (##car _e119573119793_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd119574119796_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd119574119796_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119575119798_))
                            (let ((_e119576119801_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119575119798_))))
                              (let ((_tl119578119806_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119576119801_)))
                                    (_hd119577119804_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119576119801_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119577119804_))
                                    (let ((_e119579119809_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119577119804_))))
                                      (let ((_tl119581119814_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119579119809_)))
                                            (_hd119580119812_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119579119809_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd119580119812_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd119580119812_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl119581119814_))
                                                    (let ((_e119582119817_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl119581119814_))))
                                                      (let ((_tl119584119822_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119582119817_)))
                    (_hd119583119820_
                     (let () (declare (not safe)) (##car _e119582119817_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl119584119822_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl119578119806_))
                        (let ((_e119585119825_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl119578119806_))))
                          (let ((_tl119587119830_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e119585119825_)))
                                (_hd119586119828_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e119585119825_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd119586119828_))
                                (let ((_e119588119833_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd119586119828_))))
                                  (let ((_tl119590119838_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e119588119833_)))
                                        (_hd119589119836_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e119588119833_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd119589119836_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd119589119836_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119590119838_))
                                                (let ((_e119591119841_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119590119838_))))
                                                  (let ((_tl119593119846_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119591119841_)))
                                                        (_hd119592119844_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119591119841_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119593119846_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl119572119790_))
                                                            (___kont124544124545_
                                                             _hd119592119844_
                                                             _hd119583119820_
                                                             _tl119563119763_
                                                             _arg119569119782_)
                                                            (___match124645124646_
                                                             _e119558119753_
                                                             _hd119559119756_
                                                             _tl119560119758_
                                                             _e119570119785_
                                                             _hd119571119788_
                                                             _tl119572119790_
                                                             _e119573119793_
                                                             _hd119574119796_
                                                             _tl119575119798_
                                                             _e119576119801_
                                                             _hd119577119804_
                                                             _tl119578119806_
                                                             _e119579119809_
                                                             _hd119580119812_
                                                             _tl119581119814_
                                                             _e119582119817_
                                                             _hd119583119820_
                                                             _tl119584119822_
                                                             _e119585119825_
                                                             _hd119586119828_
                                                             _tl119587119830_
                                                             _e119588119833_
                                                             _hd119589119836_
                                                             _tl119590119838_
                                                             _e119591119841_
                                                             _hd119592119844_
                                                             _tl119593119846_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119507119631_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119507119631_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g119507119631_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g119507119631_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g119507119631_)))))
                        (let () (declare (not safe)) (_g119507119631_)))
                    (let () (declare (not safe)) (_g119507119631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g119507119631_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119507119631_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g119507119631_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g119507119631_)))))
                            (let () (declare (not safe)) (_g119507119631_)))
                        (let () (declare (not safe)) (_g119507119631_)))
                    (let () (declare (not safe)) (_g119507119631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g119507119631_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g119507119631_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop119564119766_ _target119561119761_ '())))))
                   (___match124563124564_
                    (lambda (_e119512119889_
                             _hd119513119892_
                             _tl119514119894_
                             ___splice124540124541_
                             _target119515119897_
                             _tl119517119899_)
                      (letrec ((_loop119518119902_
                                (lambda (_hd119516119905_ _arg119522119907_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd119516119905_))
                                      (let ((_e119519119910_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd119516119905_))))
                                        (let ((_lp-tl119521119915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119519119910_)))
                                              (_lp-hd119520119913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119519119910_))))
                                          (let ((__tmp125800
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd119520119913_
                                                         _arg119522119907_))))
                                            (declare (not safe))
                                            (_loop119518119902_
                                             _lp-tl119521119915_
                                             __tmp125800))))
                                      (let ((_arg119523119918_
                                             (reverse _arg119522119907_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl119514119894_))
                                            (let ((_e119524119921_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl119514119894_))))
                                              (let ((_tl119526119926_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e119524119921_)))
                                                    (_hd119525119924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e119524119921_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd119525119924_))
                                                    (let ((_e119527119929_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd119525119924_))))
                                                      (let ((_tl119529119934_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119527119929_)))
                    (_hd119528119932_
                     (let () (declare (not safe)) (##car _e119527119929_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd119528119932_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd119528119932_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119529119934_))
                            (let ((_e119530119937_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119529119934_))))
                              (let ((_tl119532119942_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119530119937_)))
                                    (_hd119531119940_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119530119937_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119531119940_))
                                    (let ((_e119533119945_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119531119940_))))
                                      (let ((_tl119535119950_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119533119945_)))
                                            (_hd119534119948_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119533119945_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd119534119948_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd119534119948_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl119535119950_))
                                                    (let ((_e119536119953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl119535119950_))))
                                                      (let ((_tl119538119958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e119536119953_)))
                    (_hd119537119956_
                     (let () (declare (not safe)) (##car _e119536119953_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl119538119958_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl119532119942_))
                        (let ((___splice124542124543_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl119532119942_
                                  '0))))
                          (let ((_tl119541119963_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124542124543_ '1)))
                                (_target119539119961_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice124542124543_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl119541119963_))
                                (letrec ((_loop119542119966_
                                          (lambda (_hd119540119969_
                                                   _xarg119546119971_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd119540119969_))
                                                (let ((_e119543119974_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd119540119969_))))
                                                  (let ((_lp-tl119545119979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119543119974_)))
                                                        (_lp-hd119544119977_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119543119974_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd119544119977_))
                                                        (let ((_e119548119982_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd119544119977_))))
                  (let ((_tl119550119987_
                         (let () (declare (not safe)) (##cdr _e119548119982_)))
                        (_hd119549119985_
                         (let ()
                           (declare (not safe))
                           (##car _e119548119982_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd119549119985_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd119549119985_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl119550119987_))
                                (let ((_e119551119990_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl119550119987_))))
                                  (let ((_tl119553119995_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e119551119990_)))
                                        (_hd119552119993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e119551119990_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl119553119995_))
                                        (let ((__tmp125801
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd119552119993_
                                                       _xarg119546119971_))))
                                          (declare (not safe))
                                          (_loop119542119966_
                                           _lp-tl119545119979_
                                           __tmp125801))
                                        (___match124575124576_
                                         _e119512119889_
                                         _hd119513119892_
                                         _tl119514119894_
                                         ___splice124540124541_
                                         _target119515119897_
                                         _tl119517119899_))))
                                (___match124575124576_
                                 _e119512119889_
                                 _hd119513119892_
                                 _tl119514119894_
                                 ___splice124540124541_
                                 _target119515119897_
                                 _tl119517119899_))
                            (___match124575124576_
                             _e119512119889_
                             _hd119513119892_
                             _tl119514119894_
                             ___splice124540124541_
                             _target119515119897_
                             _tl119517119899_))
                        (___match124575124576_
                         _e119512119889_
                         _hd119513119892_
                         _tl119514119894_
                         ___splice124540124541_
                         _target119515119897_
                         _tl119517119899_))))
                (___match124575124576_
                 _e119512119889_
                 _hd119513119892_
                 _tl119514119894_
                 ___splice124540124541_
                 _target119515119897_
                 _tl119517119899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg119547119998_
                                                       (reverse _xarg119546119971_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl119526119926_))
                                                      (___kont124538124539_
                                                       _xarg119547119998_
                                                       _hd119537119956_
                                                       _arg119523119918_)
                                                      (___match124575124576_
                                                       _e119512119889_
                                                       _hd119513119892_
                                                       _tl119514119894_
                                                       ___splice124540124541_
                                                       _target119515119897_
                                                       _tl119517119899_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop119542119966_
                                     _target119539119961_
                                     '())))
                                (___match124575124576_
                                 _e119512119889_
                                 _hd119513119892_
                                 _tl119514119894_
                                 ___splice124540124541_
                                 _target119515119897_
                                 _tl119517119899_))))
                        (___match124575124576_
                         _e119512119889_
                         _hd119513119892_
                         _tl119514119894_
                         ___splice124540124541_
                         _target119515119897_
                         _tl119517119899_))
                    (___match124575124576_
                     _e119512119889_
                     _hd119513119892_
                     _tl119514119894_
                     ___splice124540124541_
                     _target119515119897_
                     _tl119517119899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124575124576_
                                                     _e119512119889_
                                                     _hd119513119892_
                                                     _tl119514119894_
                                                     ___splice124540124541_
                                                     _target119515119897_
                                                     _tl119517119899_))
                                                (___match124575124576_
                                                 _e119512119889_
                                                 _hd119513119892_
                                                 _tl119514119894_
                                                 ___splice124540124541_
                                                 _target119515119897_
                                                 _tl119517119899_))
                                            (___match124575124576_
                                             _e119512119889_
                                             _hd119513119892_
                                             _tl119514119894_
                                             ___splice124540124541_
                                             _target119515119897_
                                             _tl119517119899_))))
                                    (___match124575124576_
                                     _e119512119889_
                                     _hd119513119892_
                                     _tl119514119894_
                                     ___splice124540124541_
                                     _target119515119897_
                                     _tl119517119899_))))
                            (___match124575124576_
                             _e119512119889_
                             _hd119513119892_
                             _tl119514119894_
                             ___splice124540124541_
                             _target119515119897_
                             _tl119517119899_))
                        (___match124575124576_
                         _e119512119889_
                         _hd119513119892_
                         _tl119514119894_
                         ___splice124540124541_
                         _target119515119897_
                         _tl119517119899_))
                    (___match124575124576_
                     _e119512119889_
                     _hd119513119892_
                     _tl119514119894_
                     ___splice124540124541_
                     _target119515119897_
                     _tl119517119899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124575124576_
                                                     _e119512119889_
                                                     _hd119513119892_
                                                     _tl119514119894_
                                                     ___splice124540124541_
                                                     _target119515119897_
                                                     _tl119517119899_))))
                                            (___match124575124576_
                                             _e119512119889_
                                             _hd119513119892_
                                             _tl119514119894_
                                             ___splice124540124541_
                                             _target119515119897_
                                             _tl119517119899_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop119518119902_ _target119515119897_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx124536124537_))
                  (let ((_e119512119889_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx124536124537_))))
                    (let ((_tl119514119894_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119512119889_)))
                          (_hd119513119892_
                           (let ()
                             (declare (not safe))
                             (##car _e119512119889_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd119513119892_))
                          (let ((___splice124540124541_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd119513119892_
                                    '0))))
                            (let ((_tl119517119899_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice124540124541_ '1)))
                                  (_target119515119897_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice124540124541_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119517119899_))
                                  (___match124563124564_
                                   _e119512119889_
                                   _hd119513119892_
                                   _tl119514119894_
                                   ___splice124540124541_
                                   _target119515119897_
                                   _tl119517119899_)
                                  (___match124575124576_
                                   _e119512119889_
                                   _hd119513119892_
                                   _tl119514119894_
                                   ___splice124540124541_
                                   _target119515119897_
                                   _tl119517119899_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119514119894_))
                              (let ((_e119600119644_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119514119894_))))
                                (let ((_tl119602119649_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119600119644_)))
                                      (_hd119601119647_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119600119644_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd119601119647_))
                                      (let ((_e119603119652_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd119601119647_))))
                                        (let ((_tl119605119657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119603119652_)))
                                              (_hd119604119655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119603119652_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd119604119655_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd119604119655_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl119605119657_))
                                                      (let ((_e119606119660_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl119605119657_))))
                (let ((_tl119608119665_
                       (let () (declare (not safe)) (##cdr _e119606119660_)))
                      (_hd119607119663_
                       (let () (declare (not safe)) (##car _e119606119660_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119607119663_))
                      (let ((_e119609119668_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119607119663_))))
                        (let ((_tl119611119673_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119609119668_)))
                              (_hd119610119671_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119609119668_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd119610119671_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd119610119671_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119611119673_))
                                      (let ((_e119612119676_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119611119673_))))
                                        (let ((_tl119614119681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119612119676_)))
                                              (_hd119613119679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119612119676_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119614119681_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119608119665_))
                                                  (let ((_e119615119684_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119608119665_))))
                                                    (let ((_tl119617119689_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119615119684_)))
                                                          (_hd119616119687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119615119684_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd119616119687_))
                                                          (let ((_e119618119692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd119616119687_))))
                    (let ((_tl119620119697_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119618119692_)))
                          (_hd119619119695_
                           (let ()
                             (declare (not safe))
                             (##car _e119618119692_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd119619119695_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd119619119695_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119620119697_))
                                  (let ((_e119621119700_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119620119697_))))
                                    (let ((_tl119623119705_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119621119700_)))
                                          (_hd119622119703_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119621119700_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119623119705_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl119617119689_))
                                              (let ((_e119624119708_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl119617119689_))))
                                                (let ((_tl119626119713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119624119708_)))
                                                      (_hd119625119711_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119624119708_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl119626119713_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119602119649_))
                                                          (___kont124548124549_
                                                           _hd119622119703_
                                                           _hd119613119679_
                                                           _hd119513119892_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g119507119631_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g119507119631_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g119507119631_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119507119631_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119507119631_)))
                              (let () (declare (not safe)) (_g119507119631_)))
                          (let () (declare (not safe)) (_g119507119631_)))))
                  (let () (declare (not safe)) (_g119507119631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119507119631_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119507119631_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119507119631_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119507119631_)))
                              (let ()
                                (declare (not safe))
                                (_g119507119631_)))))
                      (let () (declare (not safe)) (_g119507119631_)))))
              (let () (declare (not safe)) (_g119507119631_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119507119631_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119507119631_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119507119631_)))))
                              (let ()
                                (declare (not safe))
                                (_g119507119631_))))))
                  (let () (declare (not safe)) (_g119507119631_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form119307_)
        (let* ((_g119309119323_
                (lambda (_g119310119320_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g119310119320_))))
               (_g119308119500_
                (lambda (_g119310119326_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g119310119326_))
                      (let ((_e119313119328_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g119310119326_))))
                        (let ((_hd119314119331_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119313119328_)))
                              (_tl119315119333_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119313119328_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119315119333_))
                              (let ((_e119316119336_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119315119333_))))
                                (let ((_hd119317119339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119316119336_)))
                                      (_tl119318119341_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119316119336_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119318119341_))
                                      ((lambda (_L119344_ _L119345_)
                                         (let* ((___stx124658124659_ _L119345_)
                                                (_g119360119388_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx124658124659_)))))
                                           (let ((___kont124660124661_
                                                  (lambda (_L119479_)
                                                    (length (let ((__tmp125802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g119489119492_ _g119490119494_)
                             (let ()
                               (declare (not safe))
                               (cons _g119489119492_ _g119490119494_)))))
                      (declare (not safe))
                      (foldr1 __tmp125802 '() _L119479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont124664124665_
                                                  (lambda (_L119430_ _L119431_)
                                                    (let ((__tmp125803
                                                           (length (let ((__tmp125804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g119442119445_ _g119443119447_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g119442119445_
                                            _g119443119447_)))))
                             (declare (not safe))
                             (foldr1 __tmp125804 '() _L119431_)))))
              (declare (not safe))
              (cons __tmp125803 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont124668124669_
                                                  (lambda (_L119393_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match124683124684_
                                                     (lambda (___splice124666124667_
                                                              _target119374119406_
                                                              _tl119376119408_)
                                                       (letrec ((_loop119377119411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd119375119414_ _arg119381119416_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119375119414_))
                               (let ((_e119378119419_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119375119414_))))
                                 (let ((_lp-tl119380119424_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119378119419_)))
                                       (_lp-hd119379119422_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119378119419_))))
                                   (let ((__tmp125805
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd119379119422_
                                                  _arg119381119416_))))
                                     (declare (not safe))
                                     (_loop119377119411_
                                      _lp-tl119380119424_
                                      __tmp125805))))
                               (let ((_arg119382119427_
                                      (reverse _arg119381119416_)))
                                 (___kont124664124665_
                                  _tl119376119408_
                                  _arg119382119427_))))))
                 (let ()
                   (declare (not safe))
                   (_loop119377119411_ _target119374119406_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match124677124678_
                                                     (lambda (___splice124662124663_
                                                              _target119363119455_
                                                              _tl119365119457_)
                                                       (letrec ((_loop119366119460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd119364119463_ _arg119370119465_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119364119463_))
                               (let ((_e119367119468_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119364119463_))))
                                 (let ((_lp-tl119369119473_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119367119468_)))
                                       (_lp-hd119368119471_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119367119468_))))
                                   (let ((__tmp125806
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd119368119471_
                                                  _arg119370119465_))))
                                     (declare (not safe))
                                     (_loop119366119460_
                                      _lp-tl119369119473_
                                      __tmp125806))))
                               (let ((_arg119371119476_
                                      (reverse _arg119370119465_)))
                                 (___kont124660124661_ _arg119371119476_))))))
                 (let ()
                   (declare (not safe))
                   (_loop119366119460_ _target119363119455_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx124658124659_))
                                                   (let ((___splice124662124663_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx124658124659_
                                                             '0))))
                                                     (let ((_tl119365119457_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice124662124663_
                                                               '1)))
                                                           (_target119363119455_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice124662124663_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119365119457_))
                                                           (___match124677124678_
                                                            ___splice124662124663_
                                                            _target119363119455_
                                                            _tl119365119457_)
                                                           (___match124683124684_
                                                            ___splice124662124663_
                                                            _target119363119455_
                                                            _tl119365119457_))))
                                                   (___kont124668124669_
                                                    ___stx124658124659_))))))
                                       _hd119317119339_
                                       _hd119314119331_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119309119323_ _g119310119326_)))))
                              (let ()
                                (declare (not safe))
                                (_g119309119323_ _g119310119326_)))))
                      (let ()
                        (declare (not safe))
                        (_g119309119323_ _g119310119326_))))))
          (declare (not safe))
          (_g119308119500_ _form119307_))))
    (define gxc#lambda-expr?
      (lambda (_expr119260_)
        (let* ((___stx124686124687_ _expr119260_)
               (_g119263119273_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124686124687_)))))
          (let ((___kont124688124689_ (lambda (_L119293_) '#t))
                (___kont124690124691_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124686124687_))
                (let ((_e119266119285_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124686124687_))))
                  (let ((_tl119268119290_
                         (let () (declare (not safe)) (##cdr _e119266119285_)))
                        (_hd119267119288_
                         (let ()
                           (declare (not safe))
                           (##car _e119266119285_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd119267119288_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd119267119288_))
                            (___kont124688124689_ _tl119268119290_)
                            (___kont124690124691_))
                        (___kont124690124691_))))
                (___kont124690124691_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr119213_)
        (let* ((___stx124704124705_ _expr119213_)
               (_g119216119226_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124704124705_)))))
          (let ((___kont124706124707_ (lambda (_L119246_) '#t))
                (___kont124708124709_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124704124705_))
                (let ((_e119219119238_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124704124705_))))
                  (let ((_tl119221119243_
                         (let () (declare (not safe)) (##cdr _e119219119238_)))
                        (_hd119220119241_
                         (let ()
                           (declare (not safe))
                           (##car _e119219119238_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd119220119241_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd119220119241_))
                            (___kont124706124707_ _tl119221119243_)
                            (___kont124708124709_))
                        (___kont124708124709_))))
                (___kont124708124709_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr119082_)
        (let* ((___stx124722124723_ _expr119082_)
               (_g119085119115_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124722124723_)))))
          (let ((___kont124724124725_
                 (lambda (_L119183_ _L119184_ _L119185_)
                   (if (let () (declare (not safe)) (gx#identifier? _L119185_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L119184_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L119183_))
                           '#f)
                       '#f)))
                (___kont124726124727_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124722124723_))
                (let ((_e119090119127_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124722124723_))))
                  (let ((_tl119092119132_
                         (let () (declare (not safe)) (##cdr _e119090119127_)))
                        (_hd119091119130_
                         (let ()
                           (declare (not safe))
                           (##car _e119090119127_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd119091119130_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd119091119130_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl119092119132_))
                                (let ((_e119093119135_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl119092119132_))))
                                  (let ((_tl119095119140_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e119093119135_)))
                                        (_hd119094119138_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e119093119135_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd119094119138_))
                                        (let ((_e119096119143_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd119094119138_))))
                                          (let ((_tl119098119148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e119096119143_)))
                                                (_hd119097119146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e119096119143_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd119097119146_))
                                                (let ((_e119099119151_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd119097119146_))))
                                                  (let ((_tl119101119156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119099119151_)))
                                                        (_hd119100119154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119099119151_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd119100119154_))
                                                        (let ((_e119102119159_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd119100119154_))))
                  (let ((_tl119104119164_
                         (let () (declare (not safe)) (##cdr _e119102119159_)))
                        (_hd119103119162_
                         (let ()
                           (declare (not safe))
                           (##car _e119102119159_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl119104119164_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119101119156_))
                            (let ((_e119105119167_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119101119156_))))
                              (let ((_tl119107119172_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119105119167_)))
                                    (_hd119106119170_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119105119167_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl119107119172_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl119098119148_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl119095119140_))
                                            (let ((_e119108119175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl119095119140_))))
                                              (let ((_tl119110119180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e119108119175_)))
                                                    (_hd119109119178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e119108119175_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl119110119180_))
                                                    (___kont124724124725_
                                                     _hd119109119178_
                                                     _hd119106119170_
                                                     _hd119103119162_)
                                                    (___kont124726124727_))))
                                            (___kont124726124727_))
                                        (___kont124726124727_))
                                    (___kont124726124727_))))
                            (___kont124726124727_))
                        (___kont124726124727_))))
                (___kont124726124727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124726124727_))))
                                        (___kont124726124727_))))
                                (___kont124726124727_))
                            (___kont124726124727_))
                        (___kont124726124727_))))
                (___kont124726124727_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr118407_)
        (let* ((___stx124784124785_ _expr118407_)
               (_g118410118568_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx124784124785_)))))
          (let ((___kont124786124787_
                 (lambda (_L118956_
                          _L118957_
                          _L118958_
                          _L118959_
                          _L118960_
                          _L118961_
                          _L118962_
                          _L118963_
                          _L118964_
                          _L118965_
                          _L118966_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L118963_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L118959_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L118958_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L118966_
                                      _L118957_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L118965_
                                          _L118962_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L118960_
                                              _L118956_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L118964_
                                              _L118961_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont124788124789_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx124784124785_))
                (let ((_e118423118580_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx124784124785_))))
                  (let ((_tl118425118585_
                         (let () (declare (not safe)) (##cdr _e118423118580_)))
                        (_hd118424118583_
                         (let ()
                           (declare (not safe))
                           (##car _e118423118580_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd118424118583_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd118424118583_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl118425118585_))
                                (let ((_e118426118588_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl118425118585_))))
                                  (let ((_tl118428118593_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118426118588_)))
                                        (_hd118427118591_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118426118588_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd118427118591_))
                                        (let ((_e118429118596_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd118427118591_))))
                                          (let ((_tl118431118601_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118429118596_)))
                                                (_hd118430118599_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118429118596_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd118430118599_))
                                                (let ((_e118432118604_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd118430118599_))))
                                                  (let ((_tl118434118609_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118432118604_)))
                                                        (_hd118433118607_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118432118604_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118433118607_))
                                                        (let ((_e118435118612_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118433118607_))))
                  (let ((_tl118437118617_
                         (let () (declare (not safe)) (##cdr _e118435118612_)))
                        (_hd118436118615_
                         (let ()
                           (declare (not safe))
                           (##car _e118435118612_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl118437118617_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118434118609_))
                            (let ((_e118438118620_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118434118609_))))
                              (let ((_tl118440118625_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118438118620_)))
                                    (_hd118439118623_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118438118620_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd118439118623_))
                                    (let ((_e118441118628_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd118439118623_))))
                                      (let ((_tl118443118633_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118441118628_)))
                                            (_hd118442118631_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118441118628_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd118442118631_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd118442118631_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl118443118633_))
                                                    (let ((_e118444118636_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl118443118633_))))
                                                      (let ((_tl118446118641_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118444118636_)))
                    (_hd118445118639_
                     (let () (declare (not safe)) (##car _e118444118636_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd118445118639_))
                    (let ((_e118447118644_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd118445118639_))))
                      (let ((_tl118449118649_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118447118644_)))
                            (_hd118448118647_
                             (let ()
                               (declare (not safe))
                               (##car _e118447118644_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd118448118647_))
                            (let ((_e118450118652_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd118448118647_))))
                              (let ((_tl118452118657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118450118652_)))
                                    (_hd118451118655_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118450118652_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd118451118655_))
                                    (let ((_e118453118660_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd118451118655_))))
                                      (let ((_tl118455118665_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118453118660_)))
                                            (_hd118454118663_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118453118660_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118455118665_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl118452118657_))
                                                (let ((_e118456118668_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl118452118657_))))
                                                  (let ((_tl118458118673_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118456118668_)))
                                                        (_hd118457118671_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118456118668_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl118458118673_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl118449118649_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl118446118641_))
                        (let ((_e118459118676_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl118446118641_))))
                          (let ((_tl118461118681_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118459118676_)))
                                (_hd118460118679_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118459118676_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd118460118679_))
                                (let ((_e118462118684_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd118460118679_))))
                                  (let ((_tl118464118689_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118462118684_)))
                                        (_hd118463118687_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118462118684_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd118463118687_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd118463118687_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl118464118689_))
                                                (let ((_e118465118692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl118464118689_))))
                                                  (let ((_tl118467118697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118465118692_)))
                                                        (_hd118466118695_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118465118692_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118466118695_))
                                                        (let ((_e118468118700_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118466118695_))))
                  (let ((_tl118470118705_
                         (let () (declare (not safe)) (##cdr _e118468118700_)))
                        (_hd118469118703_
                         (let ()
                           (declare (not safe))
                           (##car _e118468118700_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl118467118697_))
                        (let ((_e118471118708_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl118467118697_))))
                          (let ((_tl118473118713_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118471118708_)))
                                (_hd118472118711_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118471118708_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd118472118711_))
                                (let ((_e118474118716_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd118472118711_))))
                                  (let ((_tl118476118721_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118474118716_)))
                                        (_hd118475118719_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118474118716_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd118475118719_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd118475118719_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl118476118721_))
                                                (let ((_e118477118724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl118476118721_))))
                                                  (let ((_tl118479118729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118477118724_)))
                                                        (_hd118478118727_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118477118724_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd118478118727_))
                                                        (let ((_e118480118732_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd118478118727_))))
                  (let ((_tl118482118737_
                         (let () (declare (not safe)) (##cdr _e118480118732_)))
                        (_hd118481118735_
                         (let ()
                           (declare (not safe))
                           (##car _e118480118732_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd118481118735_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd118481118735_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl118482118737_))
                                (let ((_e118483118740_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl118482118737_))))
                                  (let ((_tl118485118745_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118483118740_)))
                                        (_hd118484118743_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118483118740_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118485118745_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl118479118729_))
                                            (let ((_e118486118748_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl118479118729_))))
                                              (let ((_tl118488118753_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e118486118748_)))
                                                    (_hd118487118751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e118486118748_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd118487118751_))
                                                    (let ((_e118489118756_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd118487118751_))))
                                                      (let ((_tl118491118761_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118489118756_)))
                    (_hd118490118759_
                     (let () (declare (not safe)) (##car _e118489118756_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd118490118759_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd118490118759_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118491118761_))
                            (let ((_e118492118764_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118491118761_))))
                              (let ((_tl118494118769_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118492118764_)))
                                    (_hd118493118767_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118492118764_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl118494118769_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118488118753_))
                                        (let ((_e118495118772_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118488118753_))))
                                          (let ((_tl118497118777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118495118772_)))
                                                (_hd118496118775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118495118772_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd118496118775_))
                                                (let ((_e118498118780_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd118496118775_))))
                                                  (let ((_tl118500118785_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118498118780_)))
                                                        (_hd118499118783_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118498118780_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd118499118783_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd118499118783_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl118500118785_))
                        (let ((_e118501118788_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl118500118785_))))
                          (let ((_tl118503118793_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118501118788_)))
                                (_hd118502118791_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118501118788_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118503118793_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl118473118713_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl118461118681_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118440118625_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118431118601_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl118428118593_))
                                                    (let ((_e118504118796_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl118428118593_))))
                                                      (let ((_tl118506118801_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118504118796_)))
                    (_hd118505118799_
                     (let () (declare (not safe)) (##car _e118504118796_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd118505118799_))
                    (let ((_e118507118804_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd118505118799_))))
                      (let ((_tl118509118809_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118507118804_)))
                            (_hd118508118807_
                             (let ()
                               (declare (not safe))
                               (##car _e118507118804_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd118508118807_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd118508118807_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118509118809_))
                                    (let ((_e118510118812_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118509118809_))))
                                      (let ((_tl118512118817_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118510118812_)))
                                            (_hd118511118815_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118510118812_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl118512118817_))
                                            (let ((_e118513118820_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl118512118817_))))
                                              (let ((_tl118515118825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e118513118820_)))
                                                    (_hd118514118823_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e118513118820_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd118514118823_))
                                                    (let ((_e118516118828_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd118514118823_))))
                                                      (let ((_tl118518118833_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118516118828_)))
                    (_hd118517118831_
                     (let () (declare (not safe)) (##car _e118516118828_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd118517118831_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd118517118831_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118518118833_))
                            (let ((_e118519118836_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118518118833_))))
                              (let ((_tl118521118841_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118519118836_)))
                                    (_hd118520118839_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118519118836_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd118520118839_))
                                    (let ((_e118522118844_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd118520118839_))))
                                      (let ((_tl118524118849_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118522118844_)))
                                            (_hd118523118847_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118522118844_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd118523118847_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd118523118847_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl118524118849_))
                                                    (let ((_e118525118852_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl118524118849_))))
                                                      (let ((_tl118527118857_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118525118852_)))
                    (_hd118526118855_
                     (let () (declare (not safe)) (##car _e118525118852_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl118527118857_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl118521118841_))
                        (let ((_e118528118860_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl118521118841_))))
                          (let ((_tl118530118865_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118528118860_)))
                                (_hd118529118863_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118528118860_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd118529118863_))
                                (let ((_e118531118868_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd118529118863_))))
                                  (let ((_tl118533118873_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e118531118868_)))
                                        (_hd118532118871_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e118531118868_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd118532118871_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd118532118871_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl118533118873_))
                                                (let ((_e118534118876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl118533118873_))))
                                                  (let ((_tl118536118881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e118534118876_)))
                                                        (_hd118535118879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e118534118876_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl118536118881_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl118530118865_))
                                                            (let ((_e118537118884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl118530118865_))))
                      (let ((_tl118539118889_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118537118884_)))
                            (_hd118538118887_
                             (let ()
                               (declare (not safe))
                               (##car _e118537118884_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd118538118887_))
                            (let ((_e118540118892_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd118538118887_))))
                              (let ((_tl118542118897_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118540118892_)))
                                    (_hd118541118895_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118540118892_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd118541118895_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd118541118895_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl118542118897_))
                                            (let ((_e118543118900_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl118542118897_))))
                                              (let ((_tl118545118905_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e118543118900_)))
                                                    (_hd118544118903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e118543118900_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl118545118905_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl118539118889_))
                                                        (let ((_e118546118908_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl118539118889_))))
                  (let ((_tl118548118913_
                         (let () (declare (not safe)) (##cdr _e118546118908_)))
                        (_hd118547118911_
                         (let ()
                           (declare (not safe))
                           (##car _e118546118908_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118547118911_))
                        (let ((_e118549118916_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118547118911_))))
                          (let ((_tl118551118921_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118549118916_)))
                                (_hd118550118919_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118549118916_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd118550118919_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd118550118919_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl118551118921_))
                                        (let ((_e118552118924_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl118551118921_))))
                                          (let ((_tl118554118929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e118552118924_)))
                                                (_hd118553118927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e118552118924_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118554118929_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl118548118913_))
                                                    (let ((_e118555118932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl118548118913_))))
                                                      (let ((_tl118557118937_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e118555118932_)))
                    (_hd118556118935_
                     (let () (declare (not safe)) (##car _e118555118932_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd118556118935_))
                    (let ((_e118558118940_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd118556118935_))))
                      (let ((_tl118560118945_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118558118940_)))
                            (_hd118559118943_
                             (let ()
                               (declare (not safe))
                               (##car _e118558118940_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd118559118943_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd118559118943_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118560118945_))
                                    (let ((_e118561118948_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118560118945_))))
                                      (let ((_tl118563118953_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118561118948_)))
                                            (_hd118562118951_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118561118948_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118563118953_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl118557118937_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl118515118825_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl118506118801_))
                                                        (___kont124786124787_
                                                         _hd118562118951_
                                                         _hd118553118927_
                                                         _hd118535118879_
                                                         _hd118526118855_
                                                         _hd118511118815_
                                                         _hd118502118791_
                                                         _hd118493118767_
                                                         _hd118484118743_
                                                         _hd118469118703_
                                                         _hd118454118663_
                                                         _hd118436118615_)
                                                        (___kont124788124789_))
                                                    (___kont124788124789_))
                                                (___kont124788124789_))
                                            (___kont124788124789_))))
                                    (___kont124788124789_))
                                (___kont124788124789_))
                            (___kont124788124789_))))
                    (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124788124789_))
                                                (___kont124788124789_))))
                                        (___kont124788124789_))
                                    (___kont124788124789_))
                                (___kont124788124789_))))
                        (___kont124788124789_))))
                (___kont124788124789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124788124789_))))
                                            (___kont124788124789_))
                                        (___kont124788124789_))
                                    (___kont124788124789_))))
                            (___kont124788124789_))))
                    (___kont124788124789_))
                (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124788124789_))
                                            (___kont124788124789_))
                                        (___kont124788124789_))))
                                (___kont124788124789_))))
                        (___kont124788124789_))
                    (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124788124789_))
                                                (___kont124788124789_))
                                            (___kont124788124789_))))
                                    (___kont124788124789_))))
                            (___kont124788124789_))
                        (___kont124788124789_))
                    (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124788124789_))))
                                            (___kont124788124789_))))
                                    (___kont124788124789_))
                                (___kont124788124789_))
                            (___kont124788124789_))))
                    (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124788124789_))
                                                (___kont124788124789_))
                                            (___kont124788124789_))
                                        (___kont124788124789_))
                                    (___kont124788124789_))
                                (___kont124788124789_))))
                        (___kont124788124789_))
                    (___kont124788124789_))
                (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124788124789_))))
                                        (___kont124788124789_))
                                    (___kont124788124789_))))
                            (___kont124788124789_))
                        (___kont124788124789_))
                    (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124788124789_))))
                                            (___kont124788124789_))
                                        (___kont124788124789_))))
                                (___kont124788124789_))
                            (___kont124788124789_))
                        (___kont124788124789_))))
                (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124788124789_))
                                            (___kont124788124789_))
                                        (___kont124788124789_))))
                                (___kont124788124789_))))
                        (___kont124788124789_))))
                (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124788124789_))
                                            (___kont124788124789_))
                                        (___kont124788124789_))))
                                (___kont124788124789_))))
                        (___kont124788124789_))
                    (___kont124788124789_))
                (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124788124789_))
                                            (___kont124788124789_))))
                                    (___kont124788124789_))))
                            (___kont124788124789_))))
                    (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont124788124789_))
                                                (___kont124788124789_))
                                            (___kont124788124789_))))
                                    (___kont124788124789_))))
                            (___kont124788124789_))
                        (___kont124788124789_))))
                (___kont124788124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont124788124789_))))
                                        (___kont124788124789_))))
                                (___kont124788124789_))
                            (___kont124788124789_))
                        (___kont124788124789_))))
                (___kont124788124789_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx118149_ _id118150_ _clauses118151_ _gensym?118152_)
        (let _lp118154_ ((_rest118156_ _clauses118151_)
                         (_ids118157_ '())
                         (_impls118158_ '())
                         (_clauses118159_ '()))
          (let* ((_rest118160118168_ _rest118156_)
                 (_else118162118176_
                  (lambda ()
                    (values (reverse _ids118157_)
                            (reverse _impls118158_)
                            (reverse _clauses118159_))))
                 (_K118164118381_
                  (lambda (_rest118179_ _clause118180_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause118180_))
                        (let ((__tmp125807
                               (let ()
                                 (declare (not safe))
                                 (cons _clause118180_ _clauses118159_))))
                          (declare (not safe))
                          (_lp118154_
                           _rest118179_
                           _ids118157_
                           _impls118158_
                           __tmp125807))
                        (let* ((_g118182118193_
                                (lambda (_g118183118190_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g118183118190_))))
                               (_g118181118378_
                                (lambda (_g118183118196_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g118183118196_))
                                      (let ((_e118186118198_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g118183118196_))))
                                        (let ((_hd118187118201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118186118198_)))
                                              (_tl118188118203_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118186118198_))))
                                          ((lambda (_L118206_ _L118207_)
                                             (let* ((_id118224_
                                                     (let ((__tmp125810
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id118150_)))
                                                           (__tmp125809
                                                            (length _clauses118159_))
                                                           (__tmp125808
                                                            (if _gensym?118152_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp125810
                                                        '"__"
                                                        __tmp125809
                                                        __tmp125808)))
                                                    (_id118226_
                                                     (let ((__tmp125811
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx118149_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id118224_
                                                        __tmp125811)))
                                                    (_impl118228_
                                                     (let ((__tmp125812
                                                            (let ((__tmp125814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp125813
                           (let ()
                             (declare (not safe))
                             (cons _L118207_ _L118206_))))
                      (declare (not safe))
                      (cons __tmp125814 __tmp125813))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp125812 _stx118149_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause118375_
                                                     (let* ((___stx125168125169_
                                                             _L118207_)
                                                            (_g118232118260_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx125168125169_)))))
               (let ((___kont125170125171_
                      (lambda (_L118354_)
                        (let ((__tmp125815
                               (let ((__tmp125816
                                      (let ((__tmp125817
                                             (let ((__tmp125818
                                                    (let ((__tmp125824
                                                           (let ((__tmp125825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id118226_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp125825)))
                  (__tmp125819
                   (let ((__tmp125820
                          (lambda (_g118364118367_ _g118365118369_)
                            (let ((__tmp125821
                                   (let ((__tmp125823
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp125822
                                          (let ()
                                            (declare (not safe))
                                            (cons _g118364118367_ '()))))
                                     (declare (not safe))
                                     (cons __tmp125823 __tmp125822))))
                              (declare (not safe))
                              (cons __tmp125821 _g118365118369_)))))
                     (declare (not safe))
                     (foldr1 __tmp125820 '() _L118354_))))
              (declare (not safe))
              (cons __tmp125824 __tmp125819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp125818))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp125817
                                         _stx118149_))))
                                 (declare (not safe))
                                 (cons __tmp125816 '()))))
                          (declare (not safe))
                          (cons _L118207_ __tmp125815))))
                     (___kont125174125175_
                      (lambda (_L118305_ _L118306_)
                        (let ((__tmp125826
                               (let ((__tmp125827
                                      (let ((__tmp125828
                                             (let ((__tmp125829
                                                    (let ((__tmp125843
                                                           (let ((__tmp125844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp125844)))
                  (__tmp125830
                   (let ((__tmp125841
                          (let ((__tmp125842
                                 (let ()
                                   (declare (not safe))
                                   (cons _id118226_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp125842)))
                         (__tmp125831
                          (let ((__tmp125837
                                 (let ((__tmp125838
                                        (let ((__tmp125840
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp125839
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L118305_ '()))))
                                          (declare (not safe))
                                          (cons __tmp125840 __tmp125839))))
                                   (declare (not safe))
                                   (cons __tmp125838 '())))
                                (__tmp125832
                                 (let ((__tmp125833
                                        (lambda (_g118317118320_
                                                 _g118318118322_)
                                          (let ((__tmp125834
                                                 (let ((__tmp125836
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp125835
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g118317118320_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp125836
                                                         __tmp125835))))
                                            (declare (not safe))
                                            (cons __tmp125834
                                                  _g118318118322_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp125833 '() _L118306_))))
                            (declare (not safe))
                            (foldr1 cons __tmp125837 __tmp125832))))
                     (declare (not safe))
                     (cons __tmp125841 __tmp125831))))
              (declare (not safe))
              (cons __tmp125843 __tmp125830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp125829))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp125828
                                         _stx118149_))))
                                 (declare (not safe))
                                 (cons __tmp125827 '()))))
                          (declare (not safe))
                          (cons _L118207_ __tmp125826))))
                     (___kont125178125179_
                      (lambda (_L118265_)
                        (let ((__tmp125845
                               (let ((__tmp125846
                                      (let ((__tmp125847
                                             (let ((__tmp125848
                                                    (let ((__tmp125856
                                                           (let ((__tmp125857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp125857)))
                  (__tmp125849
                   (let ((__tmp125854
                          (let ((__tmp125855
                                 (let ()
                                   (declare (not safe))
                                   (cons _id118226_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp125855)))
                         (__tmp125850
                          (let ((__tmp125851
                                 (let ((__tmp125853
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp125852
                                        (let ()
                                          (declare (not safe))
                                          (cons _L118265_ '()))))
                                   (declare (not safe))
                                   (cons __tmp125853 __tmp125852))))
                            (declare (not safe))
                            (cons __tmp125851 '()))))
                     (declare (not safe))
                     (cons __tmp125854 __tmp125850))))
              (declare (not safe))
              (cons __tmp125856 __tmp125849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp125848))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp125847
                                         _stx118149_))))
                                 (declare (not safe))
                                 (cons __tmp125846 '()))))
                          (declare (not safe))
                          (cons _L118207_ __tmp125845)))))
                 (let* ((___match125193125194_
                         (lambda (___splice125176125177_
                                  _target118246118281_
                                  _tl118248118283_)
                           (letrec ((_loop118249118286_
                                     (lambda (_hd118247118289_
                                              _arg118253118291_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd118247118289_))
                                           (let ((_e118250118294_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd118247118289_))))
                                             (let ((_lp-tl118252118299_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118250118294_)))
                                                   (_lp-hd118251118297_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118250118294_))))
                                               (let ((__tmp125858
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd118251118297_
                                                              _arg118253118291_))))
                                                 (declare (not safe))
                                                 (_loop118249118286_
                                                  _lp-tl118252118299_
                                                  __tmp125858))))
                                           (let ((_arg118254118302_
                                                  (reverse _arg118253118291_)))
                                             (___kont125174125175_
                                              _tl118248118283_
                                              _arg118254118302_))))))
                             (let ()
                               (declare (not safe))
                               (_loop118249118286_
                                _target118246118281_
                                '())))))
                        (___match125187125188_
                         (lambda (___splice125172125173_
                                  _target118235118330_
                                  _tl118237118332_)
                           (letrec ((_loop118238118335_
                                     (lambda (_hd118236118338_
                                              _arg118242118340_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd118236118338_))
                                           (let ((_e118239118343_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd118236118338_))))
                                             (let ((_lp-tl118241118348_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118239118343_)))
                                                   (_lp-hd118240118346_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118239118343_))))
                                               (let ((__tmp125859
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd118240118346_
                                                              _arg118242118340_))))
                                                 (declare (not safe))
                                                 (_loop118238118335_
                                                  _lp-tl118241118348_
                                                  __tmp125859))))
                                           (let ((_arg118243118351_
                                                  (reverse _arg118242118340_)))
                                             (___kont125170125171_
                                              _arg118243118351_))))))
                             (let ()
                               (declare (not safe))
                               (_loop118238118335_
                                _target118235118330_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx125168125169_))
                       (let ((___splice125172125173_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx125168125169_
                                 '0))))
                         (let ((_tl118237118332_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice125172125173_ '1)))
                               (_target118235118330_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice125172125173_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118237118332_))
                               (___match125187125188_
                                ___splice125172125173_
                                _target118235118330_
                                _tl118237118332_)
                               (___match125193125194_
                                ___splice125172125173_
                                _target118235118330_
                                _tl118237118332_))))
                       (___kont125178125179_ ___stx125168125169_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp125862
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id118226_
                                                              _ids118157_)))
                                                     (__tmp125861
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl118228_
                                                              _impls118158_)))
                                                     (__tmp125860
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause118375_
                                                              _clauses118159_))))
                                                 (declare (not safe))
                                                 (_lp118154_
                                                  _rest118179_
                                                  __tmp125862
                                                  __tmp125861
                                                  __tmp125860))))
                                           _tl118188118203_
                                           _hd118187118201_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g118182118193_ _g118183118196_))))))
                          (declare (not safe))
                          (_g118181118378_ _clause118180_))))))
            (if (let () (declare (not safe)) (##pair? _rest118160118168_))
                (let ((_hd118165118384_
                       (let ()
                         (declare (not safe))
                         (##car _rest118160118168_)))
                      (_tl118166118386_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest118160118168_))))
                  (let* ((_clause118389_ _hd118165118384_)
                         (_rest118391_ _tl118166118386_))
                    (declare (not safe))
                    (_K118164118381_ _rest118391_ _clause118389_)))
                (let () (declare (not safe)) (_else118162118176_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx118396_ _id118397_ _clauses118398_)
        (let ((_gensym?118400_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx118396_
           _id118397_
           _clauses118398_
           _gensym?118400_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g125864_
        (let ((_g125863_ (let () (declare (not safe)) (##length _g125864_))))
          (cond ((let () (declare (not safe)) (##fx= _g125863_ 3))
                 (apply (lambda (_stx118396_ _id118397_ _clauses118398_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx118396_
                             _id118397_
                             _clauses118398_)))
                        _g125864_))
                ((let () (declare (not safe)) (##fx= _g125863_ 4))
                 (apply (lambda (_stx118402_
                                 _id118403_
                                 _clauses118404_
                                 _gensym?118405_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx118402_
                             _id118403_
                             _clauses118404_
                             _gensym?118405_)))
                        _g125864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g125864_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx117426_)
        (letrec ((_case-lambda-clause-def117428_
                  (lambda (_id118145_ _impl118146_)
                    (let ((__tmp125865
                           (let ((__tmp125866
                                  (let ((__tmp125869
                                         (let ()
                                           (declare (not safe))
                                           (cons _id118145_ '())))
                                        (__tmp125867
                                         (let ((__tmp125868
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl118146_))))
                                           (declare (not safe))
                                           (cons __tmp125868 '()))))
                                    (declare (not safe))
                                    (cons __tmp125869 __tmp125867))))
                             (declare (not safe))
                             (cons '%#define-values __tmp125866))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp125865 _stx117426_))))
                 (_opt-lambda-dispatch-name117429_
                  (lambda (_id118141_)
                    (if (uninterned-symbol? _id118141_)
                        (let ((_str118143_ (symbol->string _id118141_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str118143_))
                              '"%"
                              _id118141_))
                        _id118141_)))
                 (_kw-lambda-dispatch-name117430_
                  (lambda (_id118136_ _name118137_)
                    (if (uninterned-symbol? _id118136_)
                        (let ((_str118139_ (symbol->string _id118136_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str118139_))
                              _name118137_
                              _id118136_))
                        _id118136_))))
          (let* ((___stx125216125217_ _stx117426_)
                 (_g117435117494_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx125216125217_)))))
            (let ((___kont125218125219_
                   (lambda (_L118045_ _L118046_)
                     (let* ((___stx125196125197_ _L118045_)
                            (_g118063118077_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx125196125197_)))))
                       (let ((___kont125198125199_
                              (lambda (_L118121_) _stx117426_))
                             (___kont125200125201_
                              (lambda (_L118090_)
                                (let ((_g125870_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx117426_
                                          _L118046_
                                          _L118090_))))
                                  (begin
                                    (let ((_g125871_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g125870_)
                                                 (##vector-length _g125870_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g125871_ 3)))
                                          (error "Context expects 3 values"
                                                 _g125871_)))
                                    (let ((_ids118100_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g125870_ 0)))
                                          (_impls118101_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g125870_ 1)))
                                          (_clauses118102_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g125870_ 2))))
                                      (let* ((_g125872_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids118100_))
                                             (_defs118105_
                                              (map _case-lambda-clause-def117428_
                                                   _ids118100_
                                                   _impls118101_)))
                                        (let ((__tmp125874
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L118046_)))
                                              (__tmp125873
                                               (map gxc#identifier-symbol
                                                    _ids118100_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp125874
                                           '" => "
                                           __tmp125873))
                                        (let ((__tmp125875
                                               (let ((__tmp125876
                                                      (let ((__tmp125877
                                                             (let ((__tmp125878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp125879
                                   (let ((__tmp125880
                                          (let ((__tmp125885
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L118046_ '())))
                                                (__tmp125881
                                                 (let ((__tmp125882
                                                        (let ((__tmp125884
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses118102_)))
                      (__tmp125883
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp125884 __tmp125883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp125882 '()))))
                                            (declare (not safe))
                                            (cons __tmp125885 __tmp125881))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp125880))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp125879
                               _stx117426_))))
                       (declare (not safe))
                       (cons __tmp125878 '()))))
                (declare (not safe))
                (foldr1 cons __tmp125877 _defs118105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp125876))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp125875
                                           _stx117426_)))))))))
                         (let ((___match125207125208_
                                (lambda (_e118066118113_
                                         _hd118067118116_
                                         _tl118068118118_)
                                  (let ((_L118121_ _tl118068118118_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L118121_))
                                        (___kont125198125199_ _L118121_)
                                        (___kont125200125201_
                                         _tl118068118118_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx125196125197_))
                               (let ((_e118066118113_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx125196125197_))))
                                 (let ((_tl118068118118_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e118066118113_)))
                                       (_hd118067118116_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e118066118113_))))
                                   (___match125207125208_
                                    _e118066118113_
                                    _hd118067118116_
                                    _tl118068118118_)))
                               (let ()
                                 (declare (not safe))
                                 (_g118063118077_))))))))
                  (___kont125220125221_
                   (lambda (_L117863_ _L117864_)
                     (let* ((_g117880117910_
                             (lambda (_g117881117907_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g117881117907_))))
                            (_g117879118005_
                             (lambda (_g117881117913_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g117881117913_))
                                   (let ((_e117885117915_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g117881117913_))))
                                     (let ((_hd117886117918_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e117885117915_)))
                                           (_tl117887117920_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e117885117915_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl117887117920_))
                                           (let ((_e117888117923_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl117887117920_))))
                                             (let ((_hd117889117926_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117888117923_)))
                                                   (_tl117890117928_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117888117923_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117889117926_))
                                                   (let ((_e117891117931_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117889117926_))))
                                                     (let ((_hd117892117934_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117891117931_)))
                                                           (_tl117893117936_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117891117931_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd117892117934_))
                                                           (let ((_e117894117939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd117892117934_))))
                     (let ((_hd117895117942_
                            (let ()
                              (declare (not safe))
                              (##car _e117894117939_)))
                           (_tl117896117944_
                            (let ()
                              (declare (not safe))
                              (##cdr _e117894117939_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd117895117942_))
                           (let ((_e117897117947_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd117895117942_))))
                             (let ((_hd117898117950_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e117897117947_)))
                                   (_tl117899117952_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e117897117947_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl117899117952_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl117896117944_))
                                       (let ((_e117900117955_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl117896117944_))))
                                         (let ((_hd117901117958_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117900117955_)))
                                               (_tl117902117960_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117900117955_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl117902117960_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl117893117936_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117890117928_))
                                                       (let ((_e117903117963_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117890117928_))))
                 (let ((_hd117904117966_
                        (let () (declare (not safe)) (##car _e117903117963_)))
                       (_tl117905117968_
                        (let () (declare (not safe)) (##cdr _e117903117963_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl117905117968_))
                       ((lambda (_L117971_ _L117972_ _L117973_)
                          (let* ((_lambda-id117997_
                                  (let ((__tmp125888
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L117864_)))
                                        (__tmp125886
                                         (let ((__tmp125887
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L117973_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name117429_
                                            __tmp125887))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp125888
                                     '"__"
                                     __tmp125886)))
                                 (_lambda-id117999_
                                  (let ((__tmp125889
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx117426_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id117997_
                                     __tmp125889)))
                                 (_g125890_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id117999_)))
                                 (_new-case-lambda-expr118002_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L117971_
                                     _L117973_
                                     _lambda-id117999_))))
                            (let ((__tmp125892
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L117864_)))
                                  (__tmp125891
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id117999_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp125892
                               '" => "
                               __tmp125891))
                            (let ((__tmp125893
                                   (let ((__tmp125894
                                          (let ((__tmp125902
                                                 (let ((__tmp125903
                                                        (let ((__tmp125904
                                                               (let ((__tmp125907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id117999_ '())))
                             (__tmp125905
                              (let ((__tmp125906
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L117972_))))
                                (declare (not safe))
                                (cons __tmp125906 '()))))
                         (declare (not safe))
                         (cons __tmp125907 __tmp125905))))
                  (declare (not safe))
                  (cons '%#define-values __tmp125904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp125903
                                                    _stx117426_)))
                                                (__tmp125895
                                                 (let ((__tmp125896
                                                        (let ((__tmp125897
                                                               (let ((__tmp125898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp125899
                                     (let ((__tmp125901
                                            (let ()
                                              (declare (not safe))
                                              (cons _L117864_ '())))
                                           (__tmp125900
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr118002_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp125901 __tmp125900))))
                                (declare (not safe))
                                (cons '%#define-values __tmp125899))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp125898 _stx117426_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp125897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp125896 '()))))
                                            (declare (not safe))
                                            (cons __tmp125902 __tmp125895))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp125894))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp125893
                               _stx117426_))))
                        _hd117904117966_
                        _hd117901117958_
                        _hd117898117950_)
                       (let ()
                         (declare (not safe))
                         (_g117880117910_ _g117881117913_)))))
               (let () (declare (not safe)) (_g117880117910_ _g117881117913_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g117880117910_
                                                      _g117881117913_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g117880117910_
                                                  _g117881117913_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g117880117910_ _g117881117913_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g117880117910_ _g117881117913_)))))
                           (let ()
                             (declare (not safe))
                             (_g117880117910_ _g117881117913_)))))
                   (let ()
                     (declare (not safe))
                     (_g117880117910_ _g117881117913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g117880117910_
                                                      _g117881117913_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117880117910_
                                              _g117881117913_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g117880117910_ _g117881117913_))))))
                       (declare (not safe))
                       (_g117879118005_ _L117863_))))
                  (___kont125222125223_
                   (lambda (_L117577_ _L117578_)
                     (let* ((_g117594117647_
                             (lambda (_g117595117644_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g117595117644_))))
                            (_g117593117823_
                             (lambda (_g117595117650_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g117595117650_))
                                   (let ((_e117601117652_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g117595117650_))))
                                     (let ((_hd117602117655_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e117601117652_)))
                                           (_tl117603117657_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e117601117652_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl117603117657_))
                                           (let ((_e117604117660_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl117603117657_))))
                                             (let ((_hd117605117663_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117604117660_)))
                                                   (_tl117606117665_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117604117660_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117605117663_))
                                                   (let ((_e117607117668_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117605117663_))))
                                                     (let ((_hd117608117671_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117607117668_)))
                                                           (_tl117609117673_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117607117668_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd117608117671_))
                                                           (let ((_e117610117676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd117608117671_))))
                     (let ((_hd117611117679_
                            (let ()
                              (declare (not safe))
                              (##car _e117610117676_)))
                           (_tl117612117681_
                            (let ()
                              (declare (not safe))
                              (##cdr _e117610117676_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd117611117679_))
                           (let ((_e117613117684_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd117611117679_))))
                             (let ((_hd117614117687_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e117613117684_)))
                                   (_tl117615117689_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e117613117684_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl117615117689_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl117612117681_))
                                       (let ((_e117616117692_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl117612117681_))))
                                         (let ((_hd117617117695_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117616117692_)))
                                               (_tl117618117697_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117616117692_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd117617117695_))
                                               (let ((_e117619117700_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd117617117695_))))
                                                 (let ((_hd117620117703_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e117619117700_)))
                                                       (_tl117621117705_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e117619117700_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117621117705_))
                                                       (let ((_e117622117708_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117621117705_))))
                 (let ((_hd117623117711_
                        (let () (declare (not safe)) (##car _e117622117708_)))
                       (_tl117624117713_
                        (let () (declare (not safe)) (##cdr _e117622117708_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd117623117711_))
                       (let ((_e117625117716_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd117623117711_))))
                         (let ((_hd117626117719_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117625117716_)))
                               (_tl117627117721_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117625117716_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd117626117719_))
                               (let ((_e117628117724_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd117626117719_))))
                                 (let ((_hd117629117727_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e117628117724_)))
                                       (_tl117630117729_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e117628117724_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd117629117727_))
                                       (let ((_e117631117732_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd117629117727_))))
                                         (let ((_hd117632117735_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117631117732_)))
                                               (_tl117633117737_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117631117732_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl117633117737_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl117630117729_))
                                                   (let ((_e117634117740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl117630117729_))))
                                                     (let ((_hd117635117743_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117634117740_)))
                                                           (_tl117636117745_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117634117740_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl117636117745_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl117627117721_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl117624117713_))
                           (let ((_e117637117748_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl117624117713_))))
                             (let ((_hd117638117751_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e117637117748_)))
                                   (_tl117639117753_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e117637117748_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl117639117753_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl117618117697_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl117609117673_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl117606117665_))
                                               (let ((_e117640117756_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl117606117665_))))
                                                 (let ((_hd117641117759_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e117640117756_)))
                                                       (_tl117642117761_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e117640117756_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl117642117761_))
                                                       ((lambda (_L117764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L117765_
                         _L117766_
                         _L117767_
                         _L117768_)
                  (let* ((_get-kws-id117808_
                          (let ((__tmp125910
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L117578_)))
                                (__tmp125908
                                 (let ((__tmp125909
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L117768_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name117430_
                                    __tmp125909
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp125910 '"__" __tmp125908)))
                         (_get-kws-id117810_
                          (let ((__tmp125911
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx117426_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id117808_
                             __tmp125911)))
                         (_main-id117812_
                          (let ((__tmp125914
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L117578_)))
                                (__tmp125912
                                 (let ((__tmp125913
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L117767_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name117430_
                                    __tmp125913
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp125914 '"__" __tmp125912)))
                         (_main-id117814_
                          (let ((__tmp125915
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx117426_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id117812_
                             __tmp125915)))
                         (_g125916_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id117810_)))
                         (_g125917_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id117814_)))
                         (_new-kw-dispatch117818_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L117764_
                             _L117768_
                             _get-kws-id117810_)))
                         (_new-get-kws117820_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L117765_
                             _L117767_
                             _main-id117814_))))
                    (let ((__tmp125920
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L117578_)))
                          (__tmp125919
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id117810_)))
                          (__tmp125918
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id117814_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp125920
                       '" => "
                       __tmp125919
                       '" => "
                       __tmp125918))
                    (let ((__tmp125921
                           (let ((__tmp125922
                                  (let ((__tmp125935
                                         (let ((__tmp125936
                                                (let ((__tmp125937
                                                       (let ((__tmp125938
                                                              (let ((__tmp125940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id117814_ '())))
                            (__tmp125939
                             (let ()
                               (declare (not safe))
                               (cons _L117766_ '()))))
                        (declare (not safe))
                        (cons __tmp125940 __tmp125939))))
                 (declare (not safe))
                 (cons '%#define-values __tmp125938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp125937
                                                   _stx117426_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp125936)))
                                        (__tmp125923
                                         (let ((__tmp125930
                                                (let ((__tmp125931
                                                       (let ((__tmp125932
                                                              (let ((__tmp125934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id117810_ '())))
                            (__tmp125933
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws117820_ '()))))
                        (declare (not safe))
                        (cons __tmp125934 __tmp125933))))
                 (declare (not safe))
                 (cons '%#define-values __tmp125932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp125931
                                                   _stx117426_)))
                                               (__tmp125924
                                                (let ((__tmp125925
                                                       (let ((__tmp125926
                                                              (let ((__tmp125927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp125929
                                    (let ()
                                      (declare (not safe))
                                      (cons _L117578_ '())))
                                   (__tmp125928
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch117818_ '()))))
                               (declare (not safe))
                               (cons __tmp125929 __tmp125928))))
                        (declare (not safe))
                        (cons '%#define-values __tmp125927))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp125926 _stx117426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp125925 '()))))
                                           (declare (not safe))
                                           (cons __tmp125930 __tmp125924))))
                                    (declare (not safe))
                                    (cons __tmp125935 __tmp125923))))
                             (declare (not safe))
                             (cons '%#begin __tmp125922))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp125921 _stx117426_))))
                _hd117641117759_
                _hd117638117751_
                _hd117635117743_
                _hd117632117735_
                _hd117614117687_)
               (let ()
                 (declare (not safe))
                 (_g117594117647_ _g117595117650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g117594117647_
                                                  _g117595117650_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g117594117647_
                                              _g117595117650_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g117594117647_ _g117595117650_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g117594117647_ _g117595117650_)))))
                           (let ()
                             (declare (not safe))
                             (_g117594117647_ _g117595117650_)))
                       (let ()
                         (declare (not safe))
                         (_g117594117647_ _g117595117650_)))
                   (let ()
                     (declare (not safe))
                     (_g117594117647_ _g117595117650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g117594117647_
                                                      _g117595117650_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g117594117647_
                                                  _g117595117650_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g117594117647_ _g117595117650_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g117594117647_ _g117595117650_)))))
                       (let ()
                         (declare (not safe))
                         (_g117594117647_ _g117595117650_)))))
               (let ()
                 (declare (not safe))
                 (_g117594117647_ _g117595117650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g117594117647_
                                                  _g117595117650_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g117594117647_ _g117595117650_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g117594117647_ _g117595117650_)))))
                           (let ()
                             (declare (not safe))
                             (_g117594117647_ _g117595117650_)))))
                   (let ()
                     (declare (not safe))
                     (_g117594117647_ _g117595117650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g117594117647_
                                                      _g117595117650_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117594117647_
                                              _g117595117650_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g117594117647_ _g117595117650_))))))
                       (declare (not safe))
                       (_g117593117823_ _L117577_))))
                  (___kont125224125225_
                   (lambda (_L117523_ _L117524_)
                     (let ((__tmp125941
                            (let ((__tmp125942
                                   (let ((__tmp125943
                                          (let ((__tmp125944
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L117523_))))
                                            (declare (not safe))
                                            (cons __tmp125944 '()))))
                                     (declare (not safe))
                                     (cons _L117524_ __tmp125943))))
                              (declare (not safe))
                              (cons '%#define-values __tmp125942))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp125941 _stx117426_)))))
              (let* ((___match125309125310_
                      (lambda (_e117467117545_
                               _hd117468117548_
                               _tl117469117550_
                               _e117470117553_
                               _hd117471117556_
                               _tl117472117558_
                               _e117473117561_
                               _hd117474117564_
                               _tl117475117566_
                               _e117476117569_
                               _hd117477117572_
                               _tl117478117574_)
                        (let ((_L117577_ _hd117477117572_)
                              (_L117578_ _hd117474117564_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L117578_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L117577_)))
                              (___kont125222125223_ _L117577_ _L117578_)
                              (___kont125224125225_
                               _hd117477117572_
                               _hd117471117556_)))))
                     (___match125281125282_
                      (lambda (_e117453117831_
                               _hd117454117834_
                               _tl117455117836_
                               _e117456117839_
                               _hd117457117842_
                               _tl117458117844_
                               _e117459117847_
                               _hd117460117850_
                               _tl117461117852_
                               _e117462117855_
                               _hd117463117858_
                               _tl117464117860_)
                        (let ((_L117863_ _hd117463117858_)
                              (_L117864_ _hd117460117850_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L117864_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L117863_)))
                              (___kont125220125221_ _L117863_ _L117864_)
                              (___match125309125310_
                               _e117453117831_
                               _hd117454117834_
                               _tl117455117836_
                               _e117456117839_
                               _hd117457117842_
                               _tl117458117844_
                               _e117459117847_
                               _hd117460117850_
                               _tl117461117852_
                               _e117462117855_
                               _hd117463117858_
                               _tl117464117860_)))))
                     (___match125253125254_
                      (lambda (_e117439118013_
                               _hd117440118016_
                               _tl117441118018_
                               _e117442118021_
                               _hd117443118024_
                               _tl117444118026_
                               _e117445118029_
                               _hd117446118032_
                               _tl117447118034_
                               _e117448118037_
                               _hd117449118040_
                               _tl117450118042_)
                        (let ((_L118045_ _hd117449118040_)
                              (_L118046_ _hd117446118032_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L118046_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L118045_)))
                              (___kont125218125219_ _L118045_ _L118046_)
                              (___match125281125282_
                               _e117439118013_
                               _hd117440118016_
                               _tl117441118018_
                               _e117442118021_
                               _hd117443118024_
                               _tl117444118026_
                               _e117445118029_
                               _hd117446118032_
                               _tl117447118034_
                               _e117448118037_
                               _hd117449118040_
                               _tl117450118042_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx125216125217_))
                    (let ((_e117439118013_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx125216125217_))))
                      (let ((_tl117441118018_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117439118013_)))
                            (_hd117440118016_
                             (let ()
                               (declare (not safe))
                               (##car _e117439118013_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl117441118018_))
                            (let ((_e117442118021_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl117441118018_))))
                              (let ((_tl117444118026_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e117442118021_)))
                                    (_hd117443118024_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e117442118021_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd117443118024_))
                                    (let ((_e117445118029_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd117443118024_))))
                                      (let ((_tl117447118034_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e117445118029_)))
                                            (_hd117446118032_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e117445118029_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117447118034_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl117444118026_))
                                                (let ((_e117448118037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl117444118026_))))
                                                  (let ((_tl117450118042_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e117448118037_)))
                                                        (_hd117449118040_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e117448118037_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl117450118042_))
                                                        (___match125253125254_
                                                         _e117439118013_
                                                         _hd117440118016_
                                                         _tl117441118018_
                                                         _e117442118021_
                                                         _hd117443118024_
                                                         _tl117444118026_
                                                         _e117445118029_
                                                         _hd117446118032_
                                                         _tl117447118034_
                                                         _e117448118037_
                                                         _hd117449118040_
                                                         _tl117450118042_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g117435117494_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117435117494_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl117444118026_))
                                                (let ((_e117487117515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl117444118026_))))
                                                  (let ((_tl117489117520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e117487117515_)))
                                                        (_hd117488117518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e117487117515_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl117489117520_))
                                                        (___kont125224125225_
                                                         _hd117488117518_
                                                         _hd117443118024_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g117435117494_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117435117494_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117444118026_))
                                        (let ((_e117487117515_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117444118026_))))
                                          (let ((_tl117489117520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117487117515_)))
                                                (_hd117488117518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117487117515_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117489117520_))
                                                (___kont125224125225_
                                                 _hd117488117518_
                                                 _hd117443118024_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117435117494_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117435117494_))))))
                            (let () (declare (not safe)) (_g117435117494_)))))
                    (let () (declare (not safe)) (_g117435117494_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx116358_)
        (letrec* ((_bind-e__123612123613_
                   (lambda (_id117410_ _expr117411_ _compile?117412_)
                     (let ((__tmp125947
                            (let ()
                              (declare (not safe))
                              (cons _id117410_ '())))
                           (__tmp125945
                            (let ((__tmp125946
                                   (if _compile?117412_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr117411_))
                                       _expr117411_)))
                              (declare (not safe))
                              (cons __tmp125946 '()))))
                       (declare (not safe))
                       (cons __tmp125947 __tmp125945))))
                  (_bind-e__0__123614123615_
                   (lambda (_id117417_ _expr117418_)
                     (let ((_compile?117420_ '#t))
                       (declare (not safe))
                       (_bind-e__123612123613_
                        _id117417_
                        _expr117418_
                        _compile?117420_))))
                  (_bind-e116360_
                   (lambda _g125949_
                     (let ((_g125948_
                            (let ()
                              (declare (not safe))
                              (##length _g125949_))))
                       (cond ((let () (declare (not safe)) (##fx= _g125948_ 2))
                              (apply (lambda (_id117417_ _expr117418_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__123614123615_
                                          _id117417_
                                          _expr117418_)))
                                     _g125949_))
                             ((let () (declare (not safe)) (##fx= _g125948_ 3))
                              (apply (lambda (_id117422_
                                              _expr117423_
                                              _compile?117424_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__123612123613_
                                          _id117422_
                                          _expr117423_
                                          _compile?117424_)))
                                     _g125949_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125949_))))))
                  (_compile-bindings116361_
                   (lambda (_bindings116994_)
                     (let _lp116996_ ((_rest116998_ _bindings116994_)
                                      (_lift1116999_ '())
                                      (_lift2117000_ '())
                                      (_bind117001_ '()))
                       (let* ((_rest117002117010_ _rest116998_)
                              (_else117004117018_
                               (lambda ()
                                 (values (reverse _lift1116999_)
                                         (reverse _lift2117000_)
                                         (reverse _bind117001_))))
                              (_K117006117397_
                               (lambda (_rest117021_ _hd117022_)
                                 (let* ((___stx125352125353_ _hd117022_)
                                        (_g117026117062_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx125352125353_)))))
                                   (let ((___kont125354125355_
                                          (lambda (_L117304_ _L117305_)
                                            (let* ((___stx125332125333_
                                                    _L117304_)
                                                   (_g117320117334_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx125332125333_)))))
                                              (let ((___kont125334125335_
                                                     (lambda (_L117382_)
                                                       (let ((__tmp125950
                                                              (let ((__tmp125951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__123612123613_
                                _L117305_
                                _L117304_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp125951 _bind117001_))))
                 (declare (not safe))
                 (_lp116996_
                  _rest117021_
                  _lift1116999_
                  _lift2117000_
                  __tmp125950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont125336125337_
                                                     (lambda (_L117347_)
                                                       (let ((_g125952_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx116358_
                         _L117305_
                         _L117347_
                         '#t))))
                 (begin
                   (let ((_g125953_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g125952_)
                                (##vector-length _g125952_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g125953_ 3)))
                         (error "Context expects 3 values" _g125953_)))
                   (let ((_ids117357_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g125952_ 0)))
                         (_impls117358_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g125952_ 1)))
                         (_clauses117359_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g125952_ 2))))
                     (let* ((_g125954_
                             (for-each gx#core-bind-runtime! _ids117357_))
                            (_xbind117362_
                             (map _bind-e116360_ _ids117357_ _impls117358_))
                            (_expr*117364_
                             (let ((__tmp125956
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses117359_)))
                                   (__tmp125955
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp125956
                                __tmp125955)))
                            (_bind*117366_
                             (let ()
                               (declare (not safe))
                               (_bind-e__123612123613_
                                _L117305_
                                _expr*117364_
                                '#f))))
                       (let ((__tmp125958
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L117305_)))
                             (__tmp125957
                              (map gxc#identifier-symbol _ids117357_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp125958
                          '" => "
                          __tmp125957))
                       (let ((__tmp125960
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2117000_ _xbind117362_)))
                             (__tmp125959
                              (let ()
                                (declare (not safe))
                                (cons _bind*117366_ _bind117001_))))
                         (declare (not safe))
                         (_lp116996_
                          _rest117021_
                          _lift1116999_
                          __tmp125960
                          __tmp125959)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match125343125344_
                                                       (lambda (_e117323117374_
                                                                _hd117324117377_
                                                                _tl117325117379_)
                                                         (let ((_L117382_
                                                                _tl117325117379_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L117382_))
                       (___kont125334125335_ _L117382_)
                       (___kont125336125337_ _tl117325117379_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx125332125333_))
                                                      (let ((_e117323117374_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx125332125333_))))
                (let ((_tl117325117379_
                       (let () (declare (not safe)) (##cdr _e117323117374_)))
                      (_hd117324117377_
                       (let () (declare (not safe)) (##car _e117323117374_))))
                  (___match125343125344_
                   _e117323117374_
                   _hd117324117377_
                   _tl117325117379_)))
              (let () (declare (not safe)) (_g117320117334_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont125356125357_
                                          (lambda (_L117132_ _L117133_)
                                            (let* ((_g117147117177_
                                                    (lambda (_g117148117174_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g117148117174_))))
                                                   (_g117146117272_
                                                    (lambda (_g117148117180_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g117148117180_))
                                                          (let ((_e117152117182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g117148117180_))))
                    (let ((_hd117153117185_
                           (let ()
                             (declare (not safe))
                             (##car _e117152117182_)))
                          (_tl117154117187_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117152117182_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117154117187_))
                          (let ((_e117155117190_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117154117187_))))
                            (let ((_hd117156117193_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117155117190_)))
                                  (_tl117157117195_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117155117190_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117156117193_))
                                  (let ((_e117158117198_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117156117193_))))
                                    (let ((_hd117159117201_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117158117198_)))
                                          (_tl117160117203_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117158117198_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd117159117201_))
                                          (let ((_e117161117206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd117159117201_))))
                                            (let ((_hd117162117209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117161117206_)))
                                                  (_tl117163117211_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117161117206_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd117162117209_))
                                                  (let ((_e117164117214_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd117162117209_))))
                                                    (let ((_hd117165117217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117164117214_)))
                                                          (_tl117166117219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117164117214_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117166117219_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117163117211_))
                      (let ((_e117167117222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117163117211_))))
                        (let ((_hd117168117225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117167117222_)))
                              (_tl117169117227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117167117222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl117169117227_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl117160117203_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117157117195_))
                                      (let ((_e117170117230_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117157117195_))))
                                        (let ((_hd117171117233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117170117230_)))
                                              (_tl117172117235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117170117230_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117172117235_))
                                              ((lambda (_L117238_
                                                        _L117239_
                                                        _L117240_)
                                                 (let* ((_lambda-id117264_
                                                         (let ((__tmp125962
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L117133_)))
                       (__tmp125961 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp125962 __tmp125961)))
                (_lambda-id117266_
                 (let ((__tmp125963
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx116358_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id117264_ __tmp125963)))
                (_g125964_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id117266_)))
                (_new-case-lambda-expr117269_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L117238_
                    _L117240_
                    _lambda-id117266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp125966
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L117133_)))
                                                         (__tmp125965
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id117266_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp125966
                                                      '" => "
                                                      __tmp125965))
                                                   (let ((__tmp125969
                                                          (let ((__tmp125970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__123612123613_
                            _L117133_
                            _new-case-lambda-expr117269_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp125970 _rest117021_)))
                 (__tmp125967
                  (let ((__tmp125968
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__123614123615_
                            _lambda-id117266_
                            _L117239_))))
                    (declare (not safe))
                    (cons __tmp125968 _lift1116999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp116996_
                                                      __tmp125969
                                                      __tmp125967
                                                      _lift2117000_
                                                      _bind117001_))))
                                               _hd117171117233_
                                               _hd117168117225_
                                               _hd117165117217_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117147117177_
                                                 _g117148117180_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117147117177_ _g117148117180_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117147117177_ _g117148117180_)))
                              (let ()
                                (declare (not safe))
                                (_g117147117177_ _g117148117180_)))))
                      (let ()
                        (declare (not safe))
                        (_g117147117177_ _g117148117180_)))
                  (let ()
                    (declare (not safe))
                    (_g117147117177_ _g117148117180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117147117177_
                                                     _g117148117180_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g117147117177_
                                             _g117148117180_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117147117177_ _g117148117180_)))))
                          (let ()
                            (declare (not safe))
                            (_g117147117177_ _g117148117180_)))))
                  (let ()
                    (declare (not safe))
                    (_g117147117177_ _g117148117180_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g117146117272_ _L117132_))))
                                         (___kont125358125359_
                                          (lambda (_L117083_ _L117084_)
                                            (let ((__tmp125971
                                                   (let ((__tmp125972
                                                          (let ((__tmp125973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp125974
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L117083_))))
                           (declare (not safe))
                           (cons __tmp125974 '()))))
                    (declare (not safe))
                    (cons _L117084_ __tmp125973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125972
                                                           _bind117001_))))
                                              (declare (not safe))
                                              (_lp116996_
                                               _rest117021_
                                               _lift1116999_
                                               _lift2117000_
                                               __tmp125971)))))
                                     (let* ((___match125403125404_
                                             (lambda (_e117041117108_
                                                      _hd117042117111_
                                                      _tl117043117113_
                                                      _e117044117116_
                                                      _hd117045117119_
                                                      _tl117046117121_
                                                      _e117047117124_
                                                      _hd117048117127_
                                                      _tl117049117129_)
                                               (let ((_L117132_
                                                      _hd117048117127_)
                                                     (_L117133_
                                                      _hd117045117119_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117133_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L117132_)))
                                                     (___kont125356125357_
                                                      _L117132_
                                                      _L117133_)
                                                     (___kont125358125359_
                                                      _hd117048117127_
                                                      _hd117042117111_)))))
                                            (___match125381125382_
                                             (lambda (_e117030117280_
                                                      _hd117031117283_
                                                      _tl117032117285_
                                                      _e117033117288_
                                                      _hd117034117291_
                                                      _tl117035117293_
                                                      _e117036117296_
                                                      _hd117037117299_
                                                      _tl117038117301_)
                                               (let ((_L117304_
                                                      _hd117037117299_)
                                                     (_L117305_
                                                      _hd117034117291_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117305_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L117304_)))
                                                     (___kont125354125355_
                                                      _L117304_
                                                      _L117305_)
                                                     (___match125403125404_
                                                      _e117030117280_
                                                      _hd117031117283_
                                                      _tl117032117285_
                                                      _e117033117288_
                                                      _hd117034117291_
                                                      _tl117035117293_
                                                      _e117036117296_
                                                      _hd117037117299_
                                                      _tl117038117301_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx125352125353_))
                                           (let ((_e117030117280_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx125352125353_))))
                                             (let ((_tl117032117285_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117030117280_)))
                                                   (_hd117031117283_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117030117280_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117031117283_))
                                                   (let ((_e117033117288_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117031117283_))))
                                                     (let ((_tl117035117293_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117033117288_)))
                                                           (_hd117034117291_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117033117288_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl117035117293_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl117032117285_))
                       (let ((_e117036117296_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117032117285_))))
                         (let ((_tl117038117301_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117036117296_)))
                               (_hd117037117299_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117036117296_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117038117301_))
                               (___match125381125382_
                                _e117030117280_
                                _hd117031117283_
                                _tl117032117285_
                                _e117033117288_
                                _hd117034117291_
                                _tl117035117293_
                                _e117036117296_
                                _hd117037117299_
                                _tl117038117301_)
                               (let ()
                                 (declare (not safe))
                                 (_g117026117062_)))))
                       (let () (declare (not safe)) (_g117026117062_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl117032117285_))
                       (let ((_e117055117075_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117032117285_))))
                         (let ((_tl117057117080_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117055117075_)))
                               (_hd117056117078_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117055117075_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117057117080_))
                               (___kont125358125359_
                                _hd117056117078_
                                _hd117031117283_)
                               (let ()
                                 (declare (not safe))
                                 (_g117026117062_)))))
                       (let () (declare (not safe)) (_g117026117062_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117032117285_))
                                                       (let ((_e117055117075_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117032117285_))))
                 (let ((_tl117057117080_
                        (let () (declare (not safe)) (##cdr _e117055117075_)))
                       (_hd117056117078_
                        (let () (declare (not safe)) (##car _e117055117075_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl117057117080_))
                       (___kont125358125359_ _hd117056117078_ _hd117031117283_)
                       (let () (declare (not safe)) (_g117026117062_)))))
               (let () (declare (not safe)) (_g117026117062_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g117026117062_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest117002117010_))
                             (let ((_hd117007117400_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest117002117010_)))
                                   (_tl117008117402_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest117002117010_))))
                               (let* ((_hd117405_ _hd117007117400_)
                                      (_rest117407_ _tl117008117402_))
                                 (declare (not safe))
                                 (_K117006117397_ _rest117407_ _hd117405_)))
                             (let ()
                               (declare (not safe))
                               (_else117004117018_)))))))
                  (_lift-kw-lambda?116362_
                   (lambda (_bind116918_)
                     (let* ((___stx125420125421_ _bind116918_)
                            (_g116921116938_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx125420125421_)))))
                       (let ((___kont125422125423_
                              (lambda (_L116974_ _L116975_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L116975_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L116974_))
                                    '#f)))
                             (___kont125424125425_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx125420125421_))
                             (let ((_e116925116950_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx125420125421_))))
                               (let ((_tl116927116955_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e116925116950_)))
                                     (_hd116926116953_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e116925116950_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd116926116953_))
                                     (let ((_e116928116958_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd116926116953_))))
                                       (let ((_tl116930116963_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e116928116958_)))
                                             (_hd116929116961_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e116928116958_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl116930116963_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl116927116955_))
                                                 (let ((_e116931116966_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl116927116955_))))
                                                   (let ((_tl116933116971_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e116931116966_)))
                                                         (_hd116932116969_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e116931116966_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl116933116971_))
                                                         (___kont125422125423_
                                                          _hd116932116969_
                                                          _hd116929116961_)
                                                         (___kont125424125425_))))
                                                 (___kont125424125425_))
                                             (___kont125424125425_))))
                                     (___kont125424125425_))))
                             (___kont125424125425_))))))
                  (_lift-kw-lambda-bindings116363_
                   (lambda (_bindings116530_)
                     (let _lp116532_ ((_rest116534_ _bindings116530_)
                                      (_lift1116535_ '())
                                      (_lift2116536_ '())
                                      (_bind116537_ '()))
                       (let* ((_rest116538116546_ _rest116534_)
                              (_else116540116554_
                               (lambda ()
                                 (values (reverse _lift1116535_)
                                         (reverse _lift2116536_)
                                         (reverse _bind116537_))))
                              (_K116542116906_
                               (lambda (_rest116557_ _hd116558_)
                                 (let* ((___stx125450125451_ _hd116558_)
                                        (_g116561116586_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx125450125451_)))))
                                   (let ((___kont125452125453_
                                          (lambda (_L116656_ _L116657_)
                                            (let* ((_g116671116724_
                                                    (lambda (_g116672116721_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g116672116721_))))
                                                   (_g116670116900_
                                                    (lambda (_g116672116727_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g116672116727_))
                                                          (let ((_e116678116729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g116672116727_))))
                    (let ((_hd116679116732_
                           (let ()
                             (declare (not safe))
                             (##car _e116678116729_)))
                          (_tl116680116734_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116678116729_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116680116734_))
                          (let ((_e116681116737_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116680116734_))))
                            (let ((_hd116682116740_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116681116737_)))
                                  (_tl116683116742_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116681116737_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116682116740_))
                                  (let ((_e116684116745_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116682116740_))))
                                    (let ((_hd116685116748_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116684116745_)))
                                          (_tl116686116750_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116684116745_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd116685116748_))
                                          (let ((_e116687116753_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd116685116748_))))
                                            (let ((_hd116688116756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116687116753_)))
                                                  (_tl116689116758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116687116753_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd116688116756_))
                                                  (let ((_e116690116761_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd116688116756_))))
                                                    (let ((_hd116691116764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116690116761_)))
                                                          (_tl116692116766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116690116761_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116692116766_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116689116758_))
                      (let ((_e116693116769_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116689116758_))))
                        (let ((_hd116694116772_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116693116769_)))
                              (_tl116695116774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116693116769_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116694116772_))
                              (let ((_e116696116777_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116694116772_))))
                                (let ((_hd116697116780_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116696116777_)))
                                      (_tl116698116782_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116696116777_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116698116782_))
                                      (let ((_e116699116785_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116698116782_))))
                                        (let ((_hd116700116788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116699116785_)))
                                              (_tl116701116790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116699116785_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd116700116788_))
                                              (let ((_e116702116793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd116700116788_))))
                                                (let ((_hd116703116796_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116702116793_)))
                                                      (_tl116704116798_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116702116793_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd116703116796_))
                                                      (let ((_e116705116801_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd116703116796_))))
                (let ((_hd116706116804_
                       (let () (declare (not safe)) (##car _e116705116801_)))
                      (_tl116707116806_
                       (let () (declare (not safe)) (##cdr _e116705116801_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116706116804_))
                      (let ((_e116708116809_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116706116804_))))
                        (let ((_hd116709116812_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116708116809_)))
                              (_tl116710116814_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116708116809_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl116710116814_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116707116806_))
                                  (let ((_e116711116817_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116707116806_))))
                                    (let ((_hd116712116820_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116711116817_)))
                                          (_tl116713116822_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116711116817_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116713116822_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116704116798_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116701116790_))
                                                  (let ((_e116714116825_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116701116790_))))
                                                    (let ((_hd116715116828_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116714116825_)))
                                                          (_tl116716116830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116714116825_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116716116830_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl116695116774_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl116686116750_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116683116742_))
                              (let ((_e116717116833_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116683116742_))))
                                (let ((_hd116718116836_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116717116833_)))
                                      (_tl116719116838_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116717116833_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116719116838_))
                                      ((lambda (_L116841_
                                                _L116842_
                                                _L116843_
                                                _L116844_
                                                _L116845_)
                                         (let* ((_get-kws-id116885_
                                                 (let ((__tmp125976
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L116657_)))
                                                       (__tmp125975
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp125976
                                                    __tmp125975)))
                                                (_get-kws-id116887_
                                                 (let ((__tmp125977
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx116358_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id116885_
                                                    __tmp125977)))
                                                (_main-id116889_
                                                 (let ((__tmp125979
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L116657_)))
                                                       (__tmp125978
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp125979
                                                    __tmp125978)))
                                                (_main-id116891_
                                                 (let ((__tmp125980
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx116358_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id116889_
                                                    __tmp125980)))
                                                (_g125981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id116887_)))
                                                (_g125982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id116891_)))
                                                (_new-kw-dispatch116895_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L116841_
                                                    _L116845_
                                                    _get-kws-id116887_)))
                                                (_new-get-kws116897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L116842_
                                                    _L116844_
                                                    _main-id116891_))))
                                           (let ((__tmp125985
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L116657_)))
                                                 (__tmp125984
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id116887_)))
                                                 (__tmp125983
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id116891_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp125985
                                              '" => "
                                              __tmp125984
                                              '" => "
                                              __tmp125983))
                                           (let ((__tmp125990
                                                  (let ((__tmp125991
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__123612123613_
                                                            _main-id116891_
                                                            _L116843_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp125991
                                                          _lift1116535_)))
                                                 (__tmp125988
                                                  (let ((__tmp125989
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__123612123613_
                                                            _get-kws-id116887_
                                                            _new-get-kws116897_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp125989
                                                          _lift2116536_)))
                                                 (__tmp125986
                                                  (let ((__tmp125987
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__123612123613_
                                                            _L116657_
                                                            _new-kw-dispatch116895_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp125987
                                                          _bind116537_))))
                                             (declare (not safe))
                                             (_lp116532_
                                              _rest116557_
                                              __tmp125990
                                              __tmp125988
                                              __tmp125986))))
                                       _hd116718116836_
                                       _hd116715116828_
                                       _hd116712116820_
                                       _hd116709116812_
                                       _hd116691116764_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116671116724_ _g116672116727_)))))
                              (let ()
                                (declare (not safe))
                                (_g116671116724_ _g116672116727_)))
                          (let ()
                            (declare (not safe))
                            (_g116671116724_ _g116672116727_)))
                      (let ()
                        (declare (not safe))
                        (_g116671116724_ _g116672116727_)))
                  (let ()
                    (declare (not safe))
                    (_g116671116724_ _g116672116727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g116671116724_
                                                     _g116672116727_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g116671116724_
                                                 _g116672116727_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g116671116724_
                                             _g116672116727_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g116671116724_ _g116672116727_)))
                              (let ()
                                (declare (not safe))
                                (_g116671116724_ _g116672116727_)))))
                      (let ()
                        (declare (not safe))
                        (_g116671116724_ _g116672116727_)))))
              (let ()
                (declare (not safe))
                (_g116671116724_ _g116672116727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g116671116724_
                                                 _g116672116727_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116671116724_ _g116672116727_)))))
                              (let ()
                                (declare (not safe))
                                (_g116671116724_ _g116672116727_)))))
                      (let ()
                        (declare (not safe))
                        (_g116671116724_ _g116672116727_)))
                  (let ()
                    (declare (not safe))
                    (_g116671116724_ _g116672116727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g116671116724_
                                                     _g116672116727_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g116671116724_
                                             _g116672116727_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g116671116724_ _g116672116727_)))))
                          (let ()
                            (declare (not safe))
                            (_g116671116724_ _g116672116727_)))))
                  (let ()
                    (declare (not safe))
                    (_g116671116724_ _g116672116727_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g116670116900_ _L116656_))))
                                         (___kont125454125455_
                                          (lambda (_L116607_ _L116608_)
                                            (let ((__tmp125992
                                                   (let ((__tmp125993
                                                          (let ((__tmp125994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L116607_ '()))))
                    (declare (not safe))
                    (cons _L116608_ __tmp125994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125993
                                                           _bind116537_))))
                                              (declare (not safe))
                                              (_lp116532_
                                               _rest116557_
                                               _lift1116535_
                                               _lift2116536_
                                               __tmp125992)))))
                                     (let ((___match125477125478_
                                            (lambda (_e116565116632_
                                                     _hd116566116635_
                                                     _tl116567116637_
                                                     _e116568116640_
                                                     _hd116569116643_
                                                     _tl116570116645_
                                                     _e116571116648_
                                                     _hd116572116651_
                                                     _tl116573116653_)
                                              (let ((_L116656_
                                                     _hd116572116651_)
                                                    (_L116657_
                                                     _hd116569116643_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L116657_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L116656_)))
                                                    (___kont125452125453_
                                                     _L116656_
                                                     _L116657_)
                                                    (___kont125454125455_
                                                     _hd116572116651_
                                                     _hd116566116635_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx125450125451_))
                                           (let ((_e116565116632_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx125450125451_))))
                                             (let ((_tl116567116637_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e116565116632_)))
                                                   (_hd116566116635_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e116565116632_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd116566116635_))
                                                   (let ((_e116568116640_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd116566116635_))))
                                                     (let ((_tl116570116645_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e116568116640_)))
                                                           (_hd116569116643_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e116568116640_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl116570116645_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl116567116637_))
                       (let ((_e116571116648_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl116567116637_))))
                         (let ((_tl116573116653_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e116571116648_)))
                               (_hd116572116651_
                                (let ()
                                  (declare (not safe))
                                  (##car _e116571116648_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl116573116653_))
                               (___match125477125478_
                                _e116565116632_
                                _hd116566116635_
                                _tl116567116637_
                                _e116568116640_
                                _hd116569116643_
                                _tl116570116645_
                                _e116571116648_
                                _hd116572116651_
                                _tl116573116653_)
                               (let ()
                                 (declare (not safe))
                                 (_g116561116586_)))))
                       (let () (declare (not safe)) (_g116561116586_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl116567116637_))
                       (let ((_e116579116599_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl116567116637_))))
                         (let ((_tl116581116604_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e116579116599_)))
                               (_hd116580116602_
                                (let ()
                                  (declare (not safe))
                                  (##car _e116579116599_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl116581116604_))
                               (___kont125454125455_
                                _hd116580116602_
                                _hd116566116635_)
                               (let ()
                                 (declare (not safe))
                                 (_g116561116586_)))))
                       (let () (declare (not safe)) (_g116561116586_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl116567116637_))
                                                       (let ((_e116579116599_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl116567116637_))))
                 (let ((_tl116581116604_
                        (let () (declare (not safe)) (##cdr _e116579116599_)))
                       (_hd116580116602_
                        (let () (declare (not safe)) (##car _e116579116599_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl116581116604_))
                       (___kont125454125455_ _hd116580116602_ _hd116566116635_)
                       (let () (declare (not safe)) (_g116561116586_)))))
               (let () (declare (not safe)) (_g116561116586_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g116561116586_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest116538116546_))
                             (let ((_hd116543116909_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest116538116546_)))
                                   (_tl116544116911_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest116538116546_))))
                               (let* ((_hd116914_ _hd116543116909_)
                                      (_rest116916_ _tl116544116911_))
                                 (declare (not safe))
                                 (_K116542116906_ _rest116916_ _hd116914_)))
                             (let ()
                               (declare (not safe))
                               (_else116540116554_))))))))
          (let* ((___stx125494125495_ _stx116358_)
                 (_g116366116392_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx125494125495_)))))
            (let ((___kont125496125497_
                   (lambda (_L116452_ _L116453_)
                     (let ((__tmp125996
                            (lambda ()
                              (if (let ((__tmp125997
                                         (let ((__tmp125998
                                                (lambda (_g116481116484_
                                                         _g116482116486_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g116481116484_
                                                          _g116482116486_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp125998
                                                   '()
                                                   _L116453_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?116362_
                                            __tmp125997))
                                  (let ((_g125999_
                                         (let ((__tmp126001
                                                (let ((__tmp126002
                                                       (lambda (_g116488116491_
                                                                _g116489116493_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g116488116491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g116489116493_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp126002
                                                          '()
                                                          _L116453_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings116363_
                                            __tmp126001))))
                                    (begin
                                      (let ((_g126000_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g125999_)
                                                   (##vector-length _g125999_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g126000_ 3)))
                                            (error "Context expects 3 values"
                                                   _g126000_)))
                                      (let ((_lift1116496_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g125999_ 0)))
                                            (_lift2116497_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g125999_ 1)))
                                            (_hd116498_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g125999_ 2))))
                                        (let* ((_expr116500_
                                                (let ((__tmp126003
                                                       (let ((__tmp126004
                                                              (let ((__tmp126005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L116452_ '()))))
                        (declare (not safe))
                        (cons _hd116498_ __tmp126005))))
                 (declare (not safe))
                 (cons '%#let-values __tmp126004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp126003
                                                   _stx116358_)))
                                               (_expr116502_
                                                (let ((__tmp126006
                                                       (let ((__tmp126007
                                                              (let ((__tmp126008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr116500_ '()))))
                        (declare (not safe))
                        (cons _lift2116497_ __tmp126008))))
                 (declare (not safe))
                 (cons '%#let-values __tmp126007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp126006
                                                   _stx116358_)))
                                               (_expr116504_
                                                (let ((__tmp126009
                                                       (let ((__tmp126010
                                                              (let ((__tmp126011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr116502_ '()))))
                        (declare (not safe))
                        (cons _lift1116496_ __tmp126011))))
                 (declare (not safe))
                 (cons '%#let-values __tmp126010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp126009
                                                   _stx116358_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr116504_))))))
                                  (let ((_g126012_
                                         (let ((__tmp126014
                                                (let ((__tmp126015
                                                       (lambda (_g116506116509_
                                                                _g116507116511_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g116506116509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g116507116511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp126015
                                                          '()
                                                          _L116453_))))
                                           (declare (not safe))
                                           (_compile-bindings116361_
                                            __tmp126014))))
                                    (begin
                                      (let ((_g126013_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g126012_)
                                                   (##vector-length _g126012_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g126013_ 3)))
                                            (error "Context expects 3 values"
                                                   _g126013_)))
                                      (let ((_lift1116514_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g126012_ 0)))
                                            (_lift2116515_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g126012_ 1)))
                                            (_hd116516_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g126012_ 2))))
                                        (let* ((_body116518_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L116452_)))
                                               (_expr116520_
                                                (let ((__tmp126016
                                                       (let ((__tmp126017
                                                              (let ((__tmp126018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body116518_ '()))))
                        (declare (not safe))
                        (cons _hd116516_ __tmp126018))))
                 (declare (not safe))
                 (cons '%#let-values __tmp126017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp126016
                                                   _stx116358_)))
                                               (_expr116522_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2116515_))
                                                    _expr116520_
                                                    (let ((__tmp126019
                                                           (let ((__tmp126020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp126021
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr116520_ '()))))
                            (declare (not safe))
                            (cons _lift2116515_ __tmp126021))))
                     (declare (not safe))
                     (cons '%#let-values __tmp126020))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp126019 _stx116358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr116524_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1116514_))
                                                    _expr116522_
                                                    (let ((__tmp126022
                                                           (let ((__tmp126023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp126024
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr116522_ '()))))
                            (declare (not safe))
                            (cons _lift1116514_ __tmp126024))))
                     (declare (not safe))
                     (cons '%#let-values __tmp126023))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp126022 _stx116358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr116524_)))))))
                           (__tmp125995
                            (let ((__obj125700
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj125700)
                              __obj125700)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp125996
                        gx#current-expander-context
                        __tmp125995))))
                  (___kont125500125501_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx116358_)))))
              (let ((___match125521125522_
                     (lambda (_e116370116404_
                              _hd116371116407_
                              _tl116372116409_
                              _e116373116412_
                              _hd116374116415_
                              _tl116375116417_
                              ___splice125498125499_
                              _target116376116420_
                              _tl116378116422_)
                       (letrec ((_loop116379116425_
                                 (lambda (_hd116377116428_ _bind116383116430_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd116377116428_))
                                       (let ((_e116380116433_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd116377116428_))))
                                         (let ((_lp-tl116382116438_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e116380116433_)))
                                               (_lp-hd116381116436_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e116380116433_))))
                                           (let ((__tmp126025
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd116381116436_
                                                          _bind116383116430_))))
                                             (declare (not safe))
                                             (_loop116379116425_
                                              _lp-tl116382116438_
                                              __tmp126025))))
                                       (let ((_bind116384116441_
                                              (reverse _bind116383116430_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl116375116417_))
                                             (let ((_e116385116444_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl116375116417_))))
                                               (let ((_tl116387116449_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e116385116444_)))
                                                     (_hd116386116447_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e116385116444_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl116387116449_))
                                                     (let ((_L116452_
                                                            _hd116386116447_)
                                                           (_L116453_
                                                            _bind116384116441_))
                                                       (if (let ((__tmp126026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp126027
                                 (lambda (_g116473116476_ _g116474116478_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g116473116476_ _g116474116478_)))))
                            (declare (not safe))
                            (foldr1 __tmp126027 '() _L116453_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp126026))
                   (___kont125496125497_ _L116452_ _L116453_)
                   (___kont125500125501_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont125500125501_))))
                                             (___kont125500125501_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop116379116425_ _target116376116420_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx125494125495_))
                    (let ((_e116370116404_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx125494125495_))))
                      (let ((_tl116372116409_
                             (let ()
                               (declare (not safe))
                               (##cdr _e116370116404_)))
                            (_hd116371116407_
                             (let ()
                               (declare (not safe))
                               (##car _e116370116404_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl116372116409_))
                            (let ((_e116373116412_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl116372116409_))))
                              (let ((_tl116375116417_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e116373116412_)))
                                    (_hd116374116415_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e116373116412_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd116374116415_))
                                    (let ((___splice125498125499_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd116374116415_
                                              '0))))
                                      (let ((_tl116378116422_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice125498125499_
                                                '1)))
                                            (_target116376116420_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice125498125499_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl116378116422_))
                                            (___match125521125522_
                                             _e116370116404_
                                             _hd116371116407_
                                             _tl116372116409_
                                             _e116373116412_
                                             _hd116374116415_
                                             _tl116375116417_
                                             ___splice125498125499_
                                             _target116376116420_
                                             _tl116378116422_)
                                            (___kont125500125501_))))
                                    (___kont125500125501_))))
                            (___kont125500125501_))))
                    (___kont125500125501_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx115502_)
        (letrec* ((_bind-e__123617123618_
                   (lambda (_id116342_ _expr116343_ _compile?116344_)
                     (let ((__tmp126030
                            (let ()
                              (declare (not safe))
                              (cons _id116342_ '())))
                           (__tmp126028
                            (let ((__tmp126029
                                   (if _compile?116344_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr116343_))
                                       _expr116343_)))
                              (declare (not safe))
                              (cons __tmp126029 '()))))
                       (declare (not safe))
                       (cons __tmp126030 __tmp126028))))
                  (_bind-e__0__123619123620_
                   (lambda (_id116349_ _expr116350_)
                     (let ((_compile?116352_ '#t))
                       (declare (not safe))
                       (_bind-e__123617123618_
                        _id116349_
                        _expr116350_
                        _compile?116352_))))
                  (_bind-e115504_
                   (lambda _g126032_
                     (let ((_g126031_
                            (let ()
                              (declare (not safe))
                              (##length _g126032_))))
                       (cond ((let () (declare (not safe)) (##fx= _g126031_ 2))
                              (apply (lambda (_id116349_ _expr116350_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__123619123620_
                                          _id116349_
                                          _expr116350_)))
                                     _g126032_))
                             ((let () (declare (not safe)) (##fx= _g126031_ 3))
                              (apply (lambda (_id116354_
                                              _expr116355_
                                              _compile?116356_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__123617123618_
                                          _id116354_
                                          _expr116355_
                                          _compile?116356_)))
                                     _g126032_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g126032_))))))
                  (_compile-bindings115505_
                   (lambda (_rest115640_)
                     (let _lp115642_ ((_rest115644_ _rest115640_)
                                      (_bind115645_ '()))
                       (let* ((_rest115646115654_ _rest115644_)
                              (_else115648115662_
                               (lambda () (reverse _bind115645_)))
                              (_K115650116329_
                               (lambda (_rest115665_ _hd115666_)
                                 (let* ((___stx125544125545_ _hd115666_)
                                        (_g115671115718_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx125544125545_)))))
                                   (let ((___kont125546125547_
                                          (lambda (_L116236_ _L116237_)
                                            (let* ((___stx125524125525_
                                                    _L116236_)
                                                   (_g116252116266_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx125524125525_)))))
                                              (let ((___kont125526125527_
                                                     (lambda (_L116314_)
                                                       (let ((__tmp126033
                                                              (let ((__tmp126034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__123617123618_
                                _L116237_
                                _L116236_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp126034 _bind115645_))))
                 (declare (not safe))
                 (_lp115642_ _rest115665_ __tmp126033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont125528125529_
                                                     (lambda (_L116279_)
                                                       (let ((_g126035_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx115502_
                         _L116237_
                         _L116279_
                         '#t))))
                 (begin
                   (let ((_g126036_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g126035_)
                                (##vector-length _g126035_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g126036_ 3)))
                         (error "Context expects 3 values" _g126036_)))
                   (let ((_ids116289_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g126035_ 0)))
                         (_impls116290_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g126035_ 1)))
                         (_clauses116291_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g126035_ 2))))
                     (let* ((_g126037_
                             (for-each gx#core-bind-runtime! _ids116289_))
                            (_xbind116294_
                             (map _bind-e115504_ _ids116289_ _impls116290_))
                            (_expr*116296_
                             (let ((__tmp126039
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses116291_)))
                                   (__tmp126038
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp126039
                                __tmp126038)))
                            (_bind*116298_
                             (let ()
                               (declare (not safe))
                               (_bind-e__123617123618_
                                _L116237_
                                _expr*116296_
                                '#f))))
                       (let ((__tmp126041
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L116237_)))
                             (__tmp126040
                              (map gxc#identifier-symbol _ids116289_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp126041
                          '" => "
                          __tmp126040))
                       (let ((__tmp126042
                              (let ((__tmp126043
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind115645_
                                               _xbind116294_))))
                                (declare (not safe))
                                (cons _bind*116298_ __tmp126043))))
                         (declare (not safe))
                         (_lp115642_ _rest115665_ __tmp126042)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match125535125536_
                                                       (lambda (_e116255116306_
                                                                _hd116256116309_
                                                                _tl116257116311_)
                                                         (let ((_L116314_
                                                                _tl116257116311_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L116314_))
                       (___kont125526125527_ _L116314_)
                       (___kont125528125529_ _tl116257116311_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx125524125525_))
                                                      (let ((_e116255116306_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx125524125525_))))
                (let ((_tl116257116311_
                       (let () (declare (not safe)) (##cdr _e116255116306_)))
                      (_hd116256116309_
                       (let () (declare (not safe)) (##car _e116255116306_))))
                  (___match125535125536_
                   _e116255116306_
                   _hd116256116309_
                   _tl116257116311_)))
              (let () (declare (not safe)) (_g116252116266_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont125548125549_
                                          (lambda (_L116064_ _L116065_)
                                            (let* ((_g116079116109_
                                                    (lambda (_g116080116106_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g116080116106_))))
                                                   (_g116078116204_
                                                    (lambda (_g116080116112_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g116080116112_))
                                                          (let ((_e116084116114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g116080116112_))))
                    (let ((_hd116085116117_
                           (let ()
                             (declare (not safe))
                             (##car _e116084116114_)))
                          (_tl116086116119_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116084116114_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116086116119_))
                          (let ((_e116087116122_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116086116119_))))
                            (let ((_hd116088116125_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116087116122_)))
                                  (_tl116089116127_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116087116122_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116088116125_))
                                  (let ((_e116090116130_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116088116125_))))
                                    (let ((_hd116091116133_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116090116130_)))
                                          (_tl116092116135_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116090116130_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd116091116133_))
                                          (let ((_e116093116138_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd116091116133_))))
                                            (let ((_hd116094116141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116093116138_)))
                                                  (_tl116095116143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116093116138_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd116094116141_))
                                                  (let ((_e116096116146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd116094116141_))))
                                                    (let ((_hd116097116149_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116096116146_)))
                                                          (_tl116098116151_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116096116146_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116098116151_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116095116143_))
                      (let ((_e116099116154_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116095116143_))))
                        (let ((_hd116100116157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116099116154_)))
                              (_tl116101116159_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116099116154_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl116101116159_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl116092116135_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116089116127_))
                                      (let ((_e116102116162_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116089116127_))))
                                        (let ((_hd116103116165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116102116162_)))
                                              (_tl116104116167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116102116162_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116104116167_))
                                              ((lambda (_L116170_
                                                        _L116171_
                                                        _L116172_)
                                                 (let* ((_lambda-id116196_
                                                         (let ((__tmp126045
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L116065_)))
                       (__tmp126044 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp126045 __tmp126044)))
                (_lambda-id116198_
                 (let ((__tmp126046
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx115502_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id116196_ __tmp126046)))
                (_g126047_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id116198_)))
                (_new-case-lambda-expr116201_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L116170_
                    _L116172_
                    _lambda-id116198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp126049
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L116065_)))
                                                         (__tmp126048
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id116198_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp126049
                                                      '" => "
                                                      __tmp126048))
                                                   (let ((__tmp126052
                                                          (let ((__tmp126053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__123617123618_
                            _L116065_
                            _new-case-lambda-expr116201_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp126053 _rest115665_)))
                 (__tmp126050
                  (let ((__tmp126051
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__123619123620_
                            _lambda-id116198_
                            _L116171_))))
                    (declare (not safe))
                    (cons __tmp126051 _bind115645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp115642_
                                                      __tmp126052
                                                      __tmp126050))))
                                               _hd116103116165_
                                               _hd116100116157_
                                               _hd116097116149_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116079116109_
                                                 _g116080116112_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116079116109_ _g116080116112_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g116079116109_ _g116080116112_)))
                              (let ()
                                (declare (not safe))
                                (_g116079116109_ _g116080116112_)))))
                      (let ()
                        (declare (not safe))
                        (_g116079116109_ _g116080116112_)))
                  (let ()
                    (declare (not safe))
                    (_g116079116109_ _g116080116112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g116079116109_
                                                     _g116080116112_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g116079116109_
                                             _g116080116112_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g116079116109_ _g116080116112_)))))
                          (let ()
                            (declare (not safe))
                            (_g116079116109_ _g116080116112_)))))
                  (let ()
                    (declare (not safe))
                    (_g116079116109_ _g116080116112_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g116078116204_ _L116064_))))
                                         (___kont125550125551_
                                          (lambda (_L115788_ _L115789_)
                                            (let* ((_g115803115856_
                                                    (lambda (_g115804115853_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g115804115853_))))
                                                   (_g115802116032_
                                                    (lambda (_g115804115859_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g115804115859_))
                                                          (let ((_e115810115861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g115804115859_))))
                    (let ((_hd115811115864_
                           (let ()
                             (declare (not safe))
                             (##car _e115810115861_)))
                          (_tl115812115866_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115810115861_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115812115866_))
                          (let ((_e115813115869_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115812115866_))))
                            (let ((_hd115814115872_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115813115869_)))
                                  (_tl115815115874_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115813115869_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115814115872_))
                                  (let ((_e115816115877_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115814115872_))))
                                    (let ((_hd115817115880_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115816115877_)))
                                          (_tl115818115882_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115816115877_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd115817115880_))
                                          (let ((_e115819115885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd115817115880_))))
                                            (let ((_hd115820115888_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115819115885_)))
                                                  (_tl115821115890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115819115885_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd115820115888_))
                                                  (let ((_e115822115893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd115820115888_))))
                                                    (let ((_hd115823115896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115822115893_)))
                                                          (_tl115824115898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115822115893_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115824115898_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115821115890_))
                      (let ((_e115825115901_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115821115890_))))
                        (let ((_hd115826115904_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115825115901_)))
                              (_tl115827115906_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115825115901_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115826115904_))
                              (let ((_e115828115909_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115826115904_))))
                                (let ((_hd115829115912_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115828115909_)))
                                      (_tl115830115914_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115828115909_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115830115914_))
                                      (let ((_e115831115917_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115830115914_))))
                                        (let ((_hd115832115920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115831115917_)))
                                              (_tl115833115922_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115831115917_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd115832115920_))
                                              (let ((_e115834115925_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd115832115920_))))
                                                (let ((_hd115835115928_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115834115925_)))
                                                      (_tl115836115930_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115834115925_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd115835115928_))
                                                      (let ((_e115837115933_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd115835115928_))))
                (let ((_hd115838115936_
                       (let () (declare (not safe)) (##car _e115837115933_)))
                      (_tl115839115938_
                       (let () (declare (not safe)) (##cdr _e115837115933_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115838115936_))
                      (let ((_e115840115941_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115838115936_))))
                        (let ((_hd115841115944_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115840115941_)))
                              (_tl115842115946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115840115941_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl115842115946_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115839115938_))
                                  (let ((_e115843115949_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115839115938_))))
                                    (let ((_hd115844115952_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115843115949_)))
                                          (_tl115845115954_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115843115949_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115845115954_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115836115930_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115833115922_))
                                                  (let ((_e115846115957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115833115922_))))
                                                    (let ((_hd115847115960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115846115957_)))
                                                          (_tl115848115962_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115846115957_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115848115962_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl115827115906_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl115818115882_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115815115874_))
                              (let ((_e115849115965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115815115874_))))
                                (let ((_hd115850115968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115849115965_)))
                                      (_tl115851115970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115849115965_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115851115970_))
                                      ((lambda (_L115973_
                                                _L115974_
                                                _L115975_
                                                _L115976_
                                                _L115977_)
                                         (let* ((_get-kws-id116017_
                                                 (let ((__tmp126055
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L115789_)))
                                                       (__tmp126054
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp126055
                                                    __tmp126054)))
                                                (_get-kws-id116019_
                                                 (let ((__tmp126056
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx115502_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id116017_
                                                    __tmp126056)))
                                                (_main-id116021_
                                                 (let ((__tmp126058
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L115789_)))
                                                       (__tmp126057
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp126058
                                                    __tmp126057)))
                                                (_main-id116023_
                                                 (let ((__tmp126059
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx115502_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id116021_
                                                    __tmp126059)))
                                                (_g126060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id116019_)))
                                                (_g126061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id116023_)))
                                                (_new-kw-dispatch116027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L115973_
                                                    _L115977_
                                                    _get-kws-id116019_)))
                                                (_new-get-kws116029_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L115974_
                                                    _L115976_
                                                    _main-id116023_))))
                                           (let ((__tmp126064
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L115789_)))
                                                 (__tmp126063
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id116019_)))
                                                 (__tmp126062
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id116023_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp126064
                                              '" => "
                                              __tmp126063
                                              '" => "
                                              __tmp126062))
                                           (let ((__tmp126065
                                                  (let ((__tmp126070
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__123617123618_
                                                            _main-id116023_
                                                            _L115975_
                                                            '#f)))
                                                        (__tmp126066
                                                         (let ((__tmp126069
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__123617123618_
                           _get-kws-id116019_
                           _new-get-kws116029_
                           '#f)))
                       (__tmp126067
                        (let ((__tmp126068
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__123617123618_
                                  _L115789_
                                  _new-kw-dispatch116027_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp126068 _rest115665_))))
                   (declare (not safe))
                   (cons __tmp126069 __tmp126067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp126070
                                                          __tmp126066))))
                                             (declare (not safe))
                                             (_lp115642_
                                              __tmp126065
                                              _bind115645_))))
                                       _hd115850115968_
                                       _hd115847115960_
                                       _hd115844115952_
                                       _hd115841115944_
                                       _hd115823115896_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115803115856_ _g115804115859_)))))
                              (let ()
                                (declare (not safe))
                                (_g115803115856_ _g115804115859_)))
                          (let ()
                            (declare (not safe))
                            (_g115803115856_ _g115804115859_)))
                      (let ()
                        (declare (not safe))
                        (_g115803115856_ _g115804115859_)))
                  (let ()
                    (declare (not safe))
                    (_g115803115856_ _g115804115859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g115803115856_
                                                     _g115804115859_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g115803115856_
                                                 _g115804115859_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g115803115856_
                                             _g115804115859_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g115803115856_ _g115804115859_)))
                              (let ()
                                (declare (not safe))
                                (_g115803115856_ _g115804115859_)))))
                      (let ()
                        (declare (not safe))
                        (_g115803115856_ _g115804115859_)))))
              (let ()
                (declare (not safe))
                (_g115803115856_ _g115804115859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g115803115856_
                                                 _g115804115859_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115803115856_ _g115804115859_)))))
                              (let ()
                                (declare (not safe))
                                (_g115803115856_ _g115804115859_)))))
                      (let ()
                        (declare (not safe))
                        (_g115803115856_ _g115804115859_)))
                  (let ()
                    (declare (not safe))
                    (_g115803115856_ _g115804115859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g115803115856_
                                                     _g115804115859_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g115803115856_
                                             _g115804115859_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g115803115856_ _g115804115859_)))))
                          (let ()
                            (declare (not safe))
                            (_g115803115856_ _g115804115859_)))))
                  (let ()
                    (declare (not safe))
                    (_g115803115856_ _g115804115859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g115802116032_ _L115788_))))
                                         (___kont125552125553_
                                          (lambda (_L115739_ _L115740_)
                                            (let ((__tmp126071
                                                   (let ((__tmp126072
                                                          (let ((__tmp126073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp126074
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L115739_))))
                           (declare (not safe))
                           (cons __tmp126074 '()))))
                    (declare (not safe))
                    (cons _L115740_ __tmp126073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp126072
                                                           _bind115645_))))
                                              (declare (not safe))
                                              (_lp115642_
                                               _rest115665_
                                               __tmp126071)))))
                                     (let* ((___match125619125620_
                                             (lambda (_e115697115764_
                                                      _hd115698115767_
                                                      _tl115699115769_
                                                      _e115700115772_
                                                      _hd115701115775_
                                                      _tl115702115777_
                                                      _e115703115780_
                                                      _hd115704115783_
                                                      _tl115705115785_)
                                               (let ((_L115788_
                                                      _hd115704115783_)
                                                     (_L115789_
                                                      _hd115701115775_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L115789_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L115788_)))
                                                     (___kont125550125551_
                                                      _L115788_
                                                      _L115789_)
                                                     (___kont125552125553_
                                                      _hd115704115783_
                                                      _hd115698115767_)))))
                                            (___match125597125598_
                                             (lambda (_e115686116040_
                                                      _hd115687116043_
                                                      _tl115688116045_
                                                      _e115689116048_
                                                      _hd115690116051_
                                                      _tl115691116053_
                                                      _e115692116056_
                                                      _hd115693116059_
                                                      _tl115694116061_)
                                               (let ((_L116064_
                                                      _hd115693116059_)
                                                     (_L116065_
                                                      _hd115690116051_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L116065_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L116064_)))
                                                     (___kont125548125549_
                                                      _L116064_
                                                      _L116065_)
                                                     (___match125619125620_
                                                      _e115686116040_
                                                      _hd115687116043_
                                                      _tl115688116045_
                                                      _e115689116048_
                                                      _hd115690116051_
                                                      _tl115691116053_
                                                      _e115692116056_
                                                      _hd115693116059_
                                                      _tl115694116061_)))))
                                            (___match125575125576_
                                             (lambda (_e115675116212_
                                                      _hd115676116215_
                                                      _tl115677116217_
                                                      _e115678116220_
                                                      _hd115679116223_
                                                      _tl115680116225_
                                                      _e115681116228_
                                                      _hd115682116231_
                                                      _tl115683116233_)
                                               (let ((_L116236_
                                                      _hd115682116231_)
                                                     (_L116237_
                                                      _hd115679116223_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L116237_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L116236_)))
                                                     (___kont125546125547_
                                                      _L116236_
                                                      _L116237_)
                                                     (___match125597125598_
                                                      _e115675116212_
                                                      _hd115676116215_
                                                      _tl115677116217_
                                                      _e115678116220_
                                                      _hd115679116223_
                                                      _tl115680116225_
                                                      _e115681116228_
                                                      _hd115682116231_
                                                      _tl115683116233_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx125544125545_))
                                           (let ((_e115675116212_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx125544125545_))))
                                             (let ((_tl115677116217_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e115675116212_)))
                                                   (_hd115676116215_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e115675116212_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd115676116215_))
                                                   (let ((_e115678116220_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd115676116215_))))
                                                     (let ((_tl115680116225_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e115678116220_)))
                                                           (_hd115679116223_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e115678116220_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl115680116225_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl115677116217_))
                       (let ((_e115681116228_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl115677116217_))))
                         (let ((_tl115683116233_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e115681116228_)))
                               (_hd115682116231_
                                (let ()
                                  (declare (not safe))
                                  (##car _e115681116228_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl115683116233_))
                               (___match125575125576_
                                _e115675116212_
                                _hd115676116215_
                                _tl115677116217_
                                _e115678116220_
                                _hd115679116223_
                                _tl115680116225_
                                _e115681116228_
                                _hd115682116231_
                                _tl115683116233_)
                               (let ()
                                 (declare (not safe))
                                 (_g115671115718_)))))
                       (let () (declare (not safe)) (_g115671115718_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl115677116217_))
                       (let ((_e115711115731_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl115677116217_))))
                         (let ((_tl115713115736_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e115711115731_)))
                               (_hd115712115734_
                                (let ()
                                  (declare (not safe))
                                  (##car _e115711115731_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl115713115736_))
                               (___kont125552125553_
                                _hd115712115734_
                                _hd115676116215_)
                               (let ()
                                 (declare (not safe))
                                 (_g115671115718_)))))
                       (let () (declare (not safe)) (_g115671115718_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl115677116217_))
                                                       (let ((_e115711115731_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl115677116217_))))
                 (let ((_tl115713115736_
                        (let () (declare (not safe)) (##cdr _e115711115731_)))
                       (_hd115712115734_
                        (let () (declare (not safe)) (##car _e115711115731_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl115713115736_))
                       (___kont125552125553_ _hd115712115734_ _hd115676116215_)
                       (let () (declare (not safe)) (_g115671115718_)))))
               (let () (declare (not safe)) (_g115671115718_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g115671115718_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest115646115654_))
                             (let ((_hd115651116332_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest115646115654_)))
                                   (_tl115652116334_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest115646115654_))))
                               (let* ((_hd116337_ _hd115651116332_)
                                      (_rest116339_ _tl115652116334_))
                                 (declare (not safe))
                                 (_K115650116329_ _rest116339_ _hd116337_)))
                             (let ()
                               (declare (not safe))
                               (_else115648115662_))))))))
          (let* ((___stx125636125637_ _stx115502_)
                 (_g115508115535_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx125636125637_)))))
            (let ((___kont125638125639_
                   (lambda (_L115595_ _L115596_ _L115597_)
                     (let ((__tmp126076
                            (lambda ()
                              (let ((_hd115634_
                                     (let ((__tmp126077
                                            (let ((__tmp126078
                                                   (lambda (_g115626115629_
                                                            _g115627115631_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g115626115629_
                                                             _g115627115631_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp126078
                                                      '()
                                                      _L115596_))))
                                       (declare (not safe))
                                       (_compile-bindings115505_ __tmp126077)))
                                    (_body115635_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L115595_))))
                                (let ((__tmp126079
                                       (let ((__tmp126080
                                              (let ((__tmp126081
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body115635_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd115634_
                                                      __tmp126081))))
                                         (declare (not safe))
                                         (cons _L115597_ __tmp126080))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp126079
                                   _stx115502_)))))
                           (__tmp126075
                            (let ((__obj125701
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj125701)
                              __obj125701)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp126076
                        gx#current-expander-context
                        __tmp126075))))
                  (___kont125642125643_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx115502_)))))
              (let ((___match125663125664_
                     (lambda (_e115513115547_
                              _hd115514115550_
                              _tl115515115552_
                              _e115516115555_
                              _hd115517115558_
                              _tl115518115560_
                              ___splice125640125641_
                              _target115519115563_
                              _tl115521115565_)
                       (letrec ((_loop115522115568_
                                 (lambda (_hd115520115571_ _bind115526115573_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd115520115571_))
                                       (let ((_e115523115576_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd115520115571_))))
                                         (let ((_lp-tl115525115581_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e115523115576_)))
                                               (_lp-hd115524115579_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e115523115576_))))
                                           (let ((__tmp126082
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd115524115579_
                                                          _bind115526115573_))))
                                             (declare (not safe))
                                             (_loop115522115568_
                                              _lp-tl115525115581_
                                              __tmp126082))))
                                       (let ((_bind115527115584_
                                              (reverse _bind115526115573_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl115518115560_))
                                             (let ((_e115528115587_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl115518115560_))))
                                               (let ((_tl115530115592_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e115528115587_)))
                                                     (_hd115529115590_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e115528115587_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl115530115592_))
                                                     (let ((_L115595_
                                                            _hd115529115590_)
                                                           (_L115596_
                                                            _bind115527115584_)
                                                           (_L115597_
                                                            _hd115514115550_))
                                                       (if (let ((__tmp126083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp126084
                                 (lambda (_g115618115621_ _g115619115623_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g115618115621_ _g115619115623_)))))
                            (declare (not safe))
                            (foldr1 __tmp126084 '() _L115596_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp126083))
                   (___kont125638125639_ _L115595_ _L115596_ _L115597_)
                   (___kont125642125643_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont125642125643_))))
                                             (___kont125642125643_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop115522115568_ _target115519115563_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx125636125637_))
                    (let ((_e115513115547_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx125636125637_))))
                      (let ((_tl115515115552_
                             (let ()
                               (declare (not safe))
                               (##cdr _e115513115547_)))
                            (_hd115514115550_
                             (let ()
                               (declare (not safe))
                               (##car _e115513115547_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl115515115552_))
                            (let ((_e115516115555_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl115515115552_))))
                              (let ((_tl115518115560_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e115516115555_)))
                                    (_hd115517115558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e115516115555_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd115517115558_))
                                    (let ((___splice125640125641_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd115517115558_
                                              '0))))
                                      (let ((_tl115521115565_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice125640125641_
                                                '1)))
                                            (_target115519115563_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice125640125641_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl115521115565_))
                                            (___match125663125664_
                                             _e115513115547_
                                             _hd115514115550_
                                             _tl115515115552_
                                             _e115516115555_
                                             _hd115517115558_
                                             _tl115518115560_
                                             ___splice125640125641_
                                             _target115519115563_
                                             _tl115521115565_)
                                            (___kont125642125643_))))
                                    (___kont125642125643_))))
                            (___kont125642125643_))))
                    (___kont125642125643_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind115420_)
        (let* ((___stx125666125667_ _bind115420_)
               (_g115423115440_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125666125667_)))))
          (let ((___kont125668125669_
                 (lambda (_L115476_ _L115477_)
                   (if (let () (declare (not safe)) (gx#identifier? _L115477_))
                       (let ((_$e115493_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L115476_))))
                         (if _$e115493_
                             _$e115493_
                             (let ((_$e115496_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L115476_))))
                               (if _$e115496_
                                   _$e115496_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L115476_))))))
                       '#f)))
                (___kont125670125671_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx125666125667_))
                (let ((_e115427115452_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx125666125667_))))
                  (let ((_tl115429115457_
                         (let () (declare (not safe)) (##cdr _e115427115452_)))
                        (_hd115428115455_
                         (let ()
                           (declare (not safe))
                           (##car _e115427115452_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115428115455_))
                        (let ((_e115430115460_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115428115455_))))
                          (let ((_tl115432115465_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115430115460_)))
                                (_hd115431115463_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115430115460_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl115432115465_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl115429115457_))
                                    (let ((_e115433115468_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl115429115457_))))
                                      (let ((_tl115435115473_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e115433115468_)))
                                            (_hd115434115471_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e115433115468_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl115435115473_))
                                            (___kont125668125669_
                                             _hd115434115471_
                                             _hd115431115463_)
                                            (___kont125670125671_))))
                                    (___kont125670125671_))
                                (___kont125670125671_))))
                        (___kont125670125671_))))
                (___kont125670125671_))))))))
