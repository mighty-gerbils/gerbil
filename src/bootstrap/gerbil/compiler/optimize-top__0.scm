(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707830020)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl237751_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244412 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl237751_ __tmp244412))
           (let ()
             (declare (not safe))
             (table-set! _tbl237751_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237751_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237751_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237751_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl237751_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx237734_ . _args237736_)
        (let ((__tmp244414
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237736_)
                     (gxc#compile-e__0 _stx237734_)
                     (let ((_arg1237741_ (car _args237736_))
                           (_rest237743_ (cdr _args237736_)))
                       (if (null? _rest237743_)
                           (gxc#compile-e__1 _stx237734_ _arg1237741_)
                           (let ((_arg2237746_ (car _rest237743_))
                                 (_rest237748_ (cdr _rest237743_)))
                             (if (null? _rest237748_)
                                 (gxc#compile-e__2
                                  _stx237734_
                                  _arg1237741_
                                  _arg2237746_)
                                 (apply gxc#compile-e
                                        _stx237734_
                                        _arg1237741_
                                        _arg2237746_
                                        _rest237748_))))))))
              (__tmp244413 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp244414
           gxc#current-compile-methods
           __tmp244413))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl237731_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244415 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl237731_ __tmp244415))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237731_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237731_ '%#call gxc#basic-expression-type-call%))
           _tbl237731_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx237714_ . _args237716_)
        (let ((__tmp244417
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237716_)
                     (gxc#compile-e__0 _stx237714_)
                     (let ((_arg1237721_ (car _args237716_))
                           (_rest237723_ (cdr _args237716_)))
                       (if (null? _rest237723_)
                           (gxc#compile-e__1 _stx237714_ _arg1237721_)
                           (let ((_arg2237726_ (car _rest237723_))
                                 (_rest237728_ (cdr _rest237723_)))
                             (if (null? _rest237728_)
                                 (gxc#compile-e__2
                                  _stx237714_
                                  _arg1237721_
                                  _arg2237726_)
                                 (apply gxc#compile-e
                                        _stx237714_
                                        _arg1237721_
                                        _arg2237726_
                                        _rest237728_))))))))
              (__tmp244416 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp244417
           gxc#current-compile-methods
           __tmp244416))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl237711_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244418 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl237711_ __tmp244418))
           (let ()
             (declare (not safe))
             (table-set! _tbl237711_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237711_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237711_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237711_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237711_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237711_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237711_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237711_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237711_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237711_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237711_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237711_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl237711_ '%#set! gxc#collect-body-setq%))
           _tbl237711_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx237694_ . _args237696_)
        (let ((__tmp244420
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237696_)
                     (gxc#compile-e__0 _stx237694_)
                     (let ((_arg1237701_ (car _args237696_))
                           (_rest237703_ (cdr _args237696_)))
                       (if (null? _rest237703_)
                           (gxc#compile-e__1 _stx237694_ _arg1237701_)
                           (let ((_arg2237706_ (car _rest237703_))
                                 (_rest237708_ (cdr _rest237703_)))
                             (if (null? _rest237708_)
                                 (gxc#compile-e__2
                                  _stx237694_
                                  _arg1237701_
                                  _arg2237706_)
                                 (apply gxc#compile-e
                                        _stx237694_
                                        _arg1237701_
                                        _arg2237706_
                                        _rest237708_))))))))
              (__tmp244419 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp244420
           gxc#current-compile-methods
           __tmp244419))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl237691_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244421 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl237691_ __tmp244421))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237691_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237691_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237691_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237691_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237691_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237691_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237691_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237691_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl237691_ '%#ref gxc#basic-expression-type-ref%))
           _tbl237691_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx237674_ . _args237676_)
        (let ((__tmp244423
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237676_)
                     (gxc#compile-e__0 _stx237674_)
                     (let ((_arg1237681_ (car _args237676_))
                           (_rest237683_ (cdr _args237676_)))
                       (if (null? _rest237683_)
                           (gxc#compile-e__1 _stx237674_ _arg1237681_)
                           (let ((_arg2237686_ (car _rest237683_))
                                 (_rest237688_ (cdr _rest237683_)))
                             (if (null? _rest237688_)
                                 (gxc#compile-e__2
                                  _stx237674_
                                  _arg1237681_
                                  _arg2237686_)
                                 (apply gxc#compile-e
                                        _stx237674_
                                        _arg1237681_
                                        _arg2237686_
                                        _rest237688_))))))))
              (__tmp244422 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp244423
           gxc#current-compile-methods
           __tmp244422))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl237671_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp244424 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl237671_ __tmp244424))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237671_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237671_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237671_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl237671_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl237671_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx237654_ . _args237656_)
        (let ((__tmp244426
               (lambda ()
                 (declare (not safe))
                 (if (null? _args237656_)
                     (gxc#compile-e__0 _stx237654_)
                     (let ((_arg1237661_ (car _args237656_))
                           (_rest237663_ (cdr _args237656_)))
                       (if (null? _rest237663_)
                           (gxc#compile-e__1 _stx237654_ _arg1237661_)
                           (let ((_arg2237666_ (car _rest237663_))
                                 (_rest237668_ (cdr _rest237663_)))
                             (if (null? _rest237668_)
                                 (gxc#compile-e__2
                                  _stx237654_
                                  _arg1237661_
                                  _arg2237666_)
                                 (apply gxc#compile-e
                                        _stx237654_
                                        _arg1237661_
                                        _arg2237666_
                                        _rest237668_))))))))
              (__tmp244425 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp244426
           gxc#current-compile-methods
           __tmp244425))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx237557_)
        (let* ((___stx242332242333_ _stx237557_)
               (_g237560237580_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242332242333_)))))
          (let ((___kont242334242335_
                 (lambda (_L237624_ _L237625_)
                   (let ((_sym237643_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237625_))))
                     (if (let ((__tmp244427 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp244427 _sym237643_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym237643_))
                         (let ((_type237644237646_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L237624_))))
                           (if _type237644237646_
                               (let ((_type237649_ _type237644237646_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym237643_
                                  _type237649_))
                               '#f))))))
                (___kont242336242337_ (lambda () '#!void)))
            (let ((___match242365242366_
                   (lambda (_e237564237592_
                            _hd237565237595_
                            _tl237566237597_
                            _e237567237600_
                            _hd237568237603_
                            _tl237569237605_
                            _e237570237608_
                            _hd237571237611_
                            _tl237572237613_
                            _e237573237616_
                            _hd237574237619_
                            _tl237575237621_)
                     (let ((_L237624_ _hd237574237619_)
                           (_L237625_ _hd237571237611_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L237625_))
                           (___kont242334242335_ _L237624_ _L237625_)
                           (___kont242336242337_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242332242333_))
                  (let ((_e237564237592_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242332242333_))))
                    (let ((_tl237566237597_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237564237592_)))
                          (_hd237565237595_
                           (let ()
                             (declare (not safe))
                             (##car _e237564237592_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237566237597_))
                          (let ((_e237567237600_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237566237597_))))
                            (let ((_tl237569237605_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237567237600_)))
                                  (_hd237568237603_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237567237600_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237568237603_))
                                  (let ((_e237570237608_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237568237603_))))
                                    (let ((_tl237572237613_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237570237608_)))
                                          (_hd237571237611_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237570237608_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237572237613_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237569237605_))
                                              (let ((_e237573237616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237569237605_))))
                                                (let ((_tl237575237621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237573237616_)))
                                                      (_hd237574237619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237573237616_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237575237621_))
                                                      (___match242365242366_
                                                       _e237564237592_
                                                       _hd237565237595_
                                                       _tl237566237597_
                                                       _e237567237600_
                                                       _hd237568237603_
                                                       _tl237569237605_
                                                       _e237570237608_
                                                       _hd237571237611_
                                                       _tl237572237613_
                                                       _e237573237616_
                                                       _hd237574237619_
                                                       _tl237575237621_)
                                                      (___kont242336242337_))))
                                              (___kont242336242337_))
                                          (___kont242336242337_))))
                                  (___kont242336242337_))))
                          (___kont242336242337_))))
                  (___kont242336242337_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx237413_)
        (let* ((___stx242368242369_ _stx237413_)
               (_g237416237447_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242368242369_)))))
          (let ((___kont242370242371_
                 (lambda (_L237529_ _L237530_)
                   (let ((_sym237546_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237530_))))
                     (if (let ((__tmp244428 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp244428 _sym237546_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym237546_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym237546_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym237546_))
                             (let ((_type237547237549_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L237529_))))
                               (if _type237547237549_
                                   (let ((_type237552_ _type237547237549_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym237546_
                                      _type237552_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L237529_)))))
                (___kont242372242373_
                 (lambda (_L237476_ _L237477_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L237476_)))))
            (let ((___match242401242402_
                   (lambda (_e237420237497_
                            _hd237421237500_
                            _tl237422237502_
                            _e237423237505_
                            _hd237424237508_
                            _tl237425237510_
                            _e237426237513_
                            _hd237427237516_
                            _tl237428237518_
                            _e237429237521_
                            _hd237430237524_
                            _tl237431237526_)
                     (let ((_L237529_ _hd237430237524_)
                           (_L237530_ _hd237427237516_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L237530_))
                           (___kont242370242371_ _L237529_ _L237530_)
                           (___kont242372242373_
                            _hd237430237524_
                            _hd237424237508_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242368242369_))
                  (let ((_e237420237497_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242368242369_))))
                    (let ((_tl237422237502_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237420237497_)))
                          (_hd237421237500_
                           (let ()
                             (declare (not safe))
                             (##car _e237420237497_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237422237502_))
                          (let ((_e237423237505_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237422237502_))))
                            (let ((_tl237425237510_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237423237505_)))
                                  (_hd237424237508_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237423237505_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237424237508_))
                                  (let ((_e237426237513_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237424237508_))))
                                    (let ((_tl237428237518_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237426237513_)))
                                          (_hd237427237516_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237426237513_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237428237518_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237425237510_))
                                              (let ((_e237429237521_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237425237510_))))
                                                (let ((_tl237431237526_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237429237521_)))
                                                      (_hd237430237524_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237429237521_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237431237526_))
                                                      (___match242401242402_
                                                       _e237420237497_
                                                       _hd237421237500_
                                                       _tl237422237502_
                                                       _e237423237505_
                                                       _hd237424237508_
                                                       _tl237425237510_
                                                       _e237426237513_
                                                       _hd237427237516_
                                                       _tl237428237518_
                                                       _e237429237521_
                                                       _hd237430237524_
                                                       _tl237431237526_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237416237447_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237416237447_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl237425237510_))
                                              (let ((_e237440237468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl237425237510_))))
                                                (let ((_tl237442237473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237440237468_)))
                                                      (_hd237441237471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237440237468_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl237442237473_))
                                                      (___kont242372242373_
                                                       _hd237441237471_
                                                       _hd237424237508_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g237416237447_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g237416237447_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237425237510_))
                                      (let ((_e237440237468_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237425237510_))))
                                        (let ((_tl237442237473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237440237468_)))
                                              (_hd237441237471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237440237468_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237442237473_))
                                              (___kont242372242373_
                                               _hd237441237471_
                                               _hd237424237508_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237416237447_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237416237447_))))))
                          (let () (declare (not safe)) (_g237416237447_)))))
                  (let () (declare (not safe)) (_g237416237447_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx237198_)
        (letrec ((_collect-e237200_
                  (lambda (_hd237357_ _expr237358_)
                    (let* ((___stx242424242425_ _hd237357_)
                           (_g237361237371_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx242424242425_)))))
                      (let ((___kont242426242427_
                             (lambda (_L237391_)
                               (let ((_sym237402_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L237391_))))
                                 (if (let ((__tmp244429
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp244429 _sym237402_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym237402_))
                                     (let ((_type237403237405_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr237358_))))
                                       (if _type237403237405_
                                           (let ((_type237408_
                                                  _type237403237405_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym237402_
                                              _type237408_
                                              '#t))
                                           '#f))))))
                            (___kont242428242429_ (lambda () '#!void)))
                        (let ((___match242437242438_
                               (lambda (_e237364237383_
                                        _hd237365237386_
                                        _tl237366237388_)
                                 (let ((_L237391_ _hd237365237386_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L237391_))
                                       (___kont242426242427_ _L237391_)
                                       (___kont242428242429_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx242424242425_))
                              (let ((_e237364237383_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx242424242425_))))
                                (let ((_tl237366237388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237364237383_)))
                                      (_hd237365237386_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237364237383_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237366237388_))
                                      (___match242437242438_
                                       _e237364237383_
                                       _hd237365237386_
                                       _tl237366237388_)
                                      (___kont242428242429_))))
                              (___kont242428242429_))))))))
          (let* ((_g237202237237_
                  (lambda (_g237203237234_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g237203237234_))))
                 (_g237201237354_
                  (lambda (_g237203237240_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g237203237240_))
                        (let ((_e237207237242_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g237203237240_))))
                          (let ((_hd237208237245_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237207237242_)))
                                (_tl237209237247_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237207237242_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237209237247_))
                                (let ((_e237210237250_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237209237247_))))
                                  (let ((_hd237211237253_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237210237250_)))
                                        (_tl237212237255_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237210237250_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd237211237253_))
                                        (let ((_g244430_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd237211237253_
                                                  '0))))
                                          (begin
                                            (let ((_g244431_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g244430_)
                                                         (##vector-length
                                                          _g244430_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g244431_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g244431_)))
                                            (let ((_target237213237258_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g244430_
                                                      0)))
                                                  (_tl237215237260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g244430_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237215237260_))
                                                  (letrec ((_loop237216237263_
                                                            (lambda (_hd237214237266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr237220237268_
                             _hd237221237270_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd237214237266_))
                          (let ((_e237217237273_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd237214237266_))))
                            (let ((_lp-hd237218237276_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237217237273_)))
                                  (_lp-tl237219237278_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237217237273_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd237218237276_))
                                  (let ((_e237224237281_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd237218237276_))))
                                    (let ((_hd237225237284_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237224237281_)))
                                          (_tl237226237286_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237224237281_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl237226237286_))
                                          (let ((_e237227237289_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl237226237286_))))
                                            (let ((_hd237228237292_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237227237289_)))
                                                  (_tl237229237294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237227237289_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl237229237294_))
                                                  (let ((__tmp244433
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd237228237292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr237220237268_)))
                (__tmp244432
                 (let ()
                   (declare (not safe))
                   (cons _hd237225237284_ _hd237221237270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop237216237263_
                                                     _lp-tl237219237278_
                                                     __tmp244433
                                                     __tmp244432))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237202237237_
                                                     _g237203237240_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237202237237_
                                             _g237203237240_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237202237237_ _g237203237240_)))))
                          (let ((_expr237222237297_
                                 (reverse _expr237220237268_))
                                (_hd237223237299_ (reverse _hd237221237270_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237212237255_))
                                (let ((_e237230237302_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237212237255_))))
                                  (let ((_hd237231237305_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237230237302_)))
                                        (_tl237232237307_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237230237302_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237232237307_))
                                        ((lambda (_L237310_
                                                  _L237311_
                                                  _L237312_)
                                           (for-each
                                            _collect-e237200_
                                            (let ((__tmp244434
                                                   (lambda (_g237332237335_
                                                            _g237333237337_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237332237335_
                                                             _g237333237337_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp244434
                                                      '()
                                                      _L237312_))
                                            (let ((__tmp244435
                                                   (lambda (_g237339237342_
                                                            _g237340237344_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237339237342_
                                                             _g237340237344_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp244435
                                                      '()
                                                      _L237311_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp244436
                                                   (lambda (_g237346237349_
                                                            _g237347237351_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237346237349_
                                                             _g237347237351_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp244436
                                                      '()
                                                      _L237311_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L237310_)))
                                         _hd237231237305_
                                         _expr237222237297_
                                         _hd237223237299_)
                                        (let ()
                                          (declare (not safe))
                                          (_g237202237237_ _g237203237240_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237202237237_ _g237203237240_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop237216237263_
                                                       _target237213237258_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237202237237_
                                                     _g237203237240_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g237202237237_ _g237203237240_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g237202237237_ _g237203237240_)))))
                        (let ()
                          (declare (not safe))
                          (_g237202237237_ _g237203237240_))))))
            (declare (not safe))
            (_g237201237354_ _stx237198_)))))
    (define gxc#collect-type-call%
      (lambda (_stx236690_)
        (let* ((___stx242440242441_ _stx236690_)
               (_g236694236809_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242440242441_)))))
          (let ((___kont242442242443_
                 (lambda (_L237148_ _L237149_ _L237150_ _L237151_ _L237152_)
                   (let ((__tmp244440
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237151_)))
                         (__tmp244439
                          (let () (declare (not safe)) (gx#stx-e _L237150_)))
                         (__tmp244438
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L237149_)))
                         (__tmp244437
                          (let () (declare (not safe)) (gx#stx-e _L237148_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp244440
                      __tmp244439
                      __tmp244438
                      __tmp244437))))
                (___kont242444242445_
                 (lambda (_L236976_ _L236977_ _L236978_ _L236979_)
                   (let ((__tmp244443
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236978_)))
                         (__tmp244442
                          (let () (declare (not safe)) (gx#stx-e _L236977_)))
                         (__tmp244441
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236976_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp244443
                      __tmp244442
                      __tmp244441
                      '#f))))
                (___kont242446242447_
                 (lambda (_L236846_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp244444
                           (lambda (_g236859236862_ _g236860236864_)
                             (let ()
                               (declare (not safe))
                               (cons _g236859236862_ _g236860236864_)))))
                      (declare (not safe))
                      (foldr1 __tmp244444 '() _L236846_))))))
            (let* ((___match242697242698_
                    (lambda (_e236793236814_
                             _hd236794236817_
                             _tl236795236819_
                             ___splice242448242449_
                             _target236796236822_
                             _tl236798236824_)
                      (letrec ((_loop236799236827_
                                (lambda (_hd236797236830_ _expr236803236832_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd236797236830_))
                                      (let ((_e236800236835_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd236797236830_))))
                                        (let ((_lp-tl236802236840_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236800236835_)))
                                              (_lp-hd236801236838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236800236835_))))
                                          (let ((__tmp244445
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd236801236838_
                                                         _expr236803236832_))))
                                            (declare (not safe))
                                            (_loop236799236827_
                                             _lp-tl236802236840_
                                             __tmp244445))))
                                      (let ((_expr236804236843_
                                             (reverse _expr236803236832_)))
                                        (___kont242446242447_
                                         _expr236804236843_))))))
                        (let ()
                          (declare (not safe))
                          (_loop236799236827_ _target236796236822_ '())))))
                   (___match242577242578_
                    (lambda (_e236701237020_
                             _hd236702237023_
                             _tl236703237025_
                             _e236704237028_
                             _hd236705237031_
                             _tl236706237033_
                             _e236707237036_
                             _hd236708237039_
                             _tl236709237041_
                             _e236710237044_
                             _hd236711237047_
                             _tl236712237049_
                             _e236713237052_
                             _hd236714237055_
                             _tl236715237057_
                             _e236716237060_
                             _hd236717237063_
                             _tl236718237065_
                             _e236719237068_
                             _hd236720237071_
                             _tl236721237073_
                             _e236722237076_
                             _hd236723237079_
                             _tl236724237081_
                             _e236725237084_
                             _hd236726237087_
                             _tl236727237089_
                             _e236728237092_
                             _hd236729237095_
                             _tl236730237097_
                             _e236731237100_
                             _hd236732237103_
                             _tl236733237105_
                             _e236734237108_
                             _hd236735237111_
                             _tl236736237113_
                             _e236737237116_
                             _hd236738237119_
                             _tl236739237121_
                             _e236740237124_
                             _hd236741237127_
                             _tl236742237129_
                             _e236743237132_
                             _hd236744237135_
                             _tl236745237137_
                             _e236746237140_
                             _hd236747237143_
                             _tl236748237145_)
                      (let ((_L237148_ _hd236747237143_)
                            (_L237149_ _hd236738237119_)
                            (_L237150_ _hd236729237095_)
                            (_L237151_ _hd236720237071_)
                            (_L237152_ _hd236711237047_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L237152_
                               'bind-method!))
                            (___kont242442242443_
                             _L237148_
                             _L237149_
                             _L237150_
                             _L237151_
                             _L237152_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl236703237025_))
                                (let ((___splice242448242449_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl236703237025_
                                          '0))))
                                  (let ((_tl236798236824_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice242448242449_
                                            '1)))
                                        (_target236796236822_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice242448242449_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236798236824_))
                                        (___match242697242698_
                                         _e236701237020_
                                         _hd236702237023_
                                         _tl236703237025_
                                         ___splice242448242449_
                                         _target236796236822_
                                         _tl236798236824_)
                                        (let ()
                                          (declare (not safe))
                                          (_g236694236809_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236694236809_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242440242441_))
                  (let ((_e236701237020_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242440242441_))))
                    (let ((_tl236703237025_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236701237020_)))
                          (_hd236702237023_
                           (let ()
                             (declare (not safe))
                             (##car _e236701237020_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236703237025_))
                          (let ((_e236704237028_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236703237025_))))
                            (let ((_tl236706237033_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236704237028_)))
                                  (_hd236705237031_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236704237028_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236705237031_))
                                  (let ((_e236707237036_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236705237031_))))
                                    (let ((_tl236709237041_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236707237036_)))
                                          (_hd236708237039_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236707237036_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd236708237039_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd236708237039_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236709237041_))
                                                  (let ((_e236710237044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236709237041_))))
                                                    (let ((_tl236712237049_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236710237044_)))
                                                          (_hd236711237047_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236710237044_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236712237049_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236706237033_))
                      (let ((_e236713237052_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236706237033_))))
                        (let ((_tl236715237057_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236713237052_)))
                              (_hd236714237055_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236713237052_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd236714237055_))
                              (let ((_e236716237060_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd236714237055_))))
                                (let ((_tl236718237065_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236716237060_)))
                                      (_hd236717237063_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236716237060_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd236717237063_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd236717237063_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236718237065_))
                                              (let ((_e236719237068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236718237065_))))
                                                (let ((_tl236721237073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236719237068_)))
                                                      (_hd236720237071_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236719237068_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236721237073_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl236715237057_))
                                                          (let ((_e236722237076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl236715237057_))))
                    (let ((_tl236724237081_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236722237076_)))
                          (_hd236723237079_
                           (let ()
                             (declare (not safe))
                             (##car _e236722237076_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236723237079_))
                          (let ((_e236725237084_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236723237079_))))
                            (let ((_tl236727237089_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236725237084_)))
                                  (_hd236726237087_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236725237084_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd236726237087_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd236726237087_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236727237089_))
                                          (let ((_e236728237092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236727237089_))))
                                            (let ((_tl236730237097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236728237092_)))
                                                  (_hd236729237095_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236728237092_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236730237097_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl236724237081_))
                                                      (let ((_e236731237100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl236724237081_))))
                (let ((_tl236733237105_
                       (let () (declare (not safe)) (##cdr _e236731237100_)))
                      (_hd236732237103_
                       (let () (declare (not safe)) (##car _e236731237100_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd236732237103_))
                      (let ((_e236734237108_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd236732237103_))))
                        (let ((_tl236736237113_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236734237108_)))
                              (_hd236735237111_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236734237108_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd236735237111_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd236735237111_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236736237113_))
                                      (let ((_e236737237116_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236736237113_))))
                                        (let ((_tl236739237121_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236737237116_)))
                                              (_hd236738237119_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236737237116_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236739237121_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl236733237105_))
                                                  (let ((_e236740237124_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl236733237105_))))
                                                    (let ((_tl236742237129_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236740237124_)))
                                                          (_hd236741237127_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236740237124_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd236741237127_))
                                                          (let ((_e236743237132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd236741237127_))))
                    (let ((_tl236745237137_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236743237132_)))
                          (_hd236744237135_
                           (let ()
                             (declare (not safe))
                             (##car _e236743237132_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd236744237135_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd236744237135_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl236745237137_))
                                  (let ((_e236746237140_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl236745237137_))))
                                    (let ((_tl236748237145_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236746237140_)))
                                          (_hd236747237143_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236746237140_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236748237145_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236742237129_))
                                              (___match242577242578_
                                               _e236701237020_
                                               _hd236702237023_
                                               _tl236703237025_
                                               _e236704237028_
                                               _hd236705237031_
                                               _tl236706237033_
                                               _e236707237036_
                                               _hd236708237039_
                                               _tl236709237041_
                                               _e236710237044_
                                               _hd236711237047_
                                               _tl236712237049_
                                               _e236713237052_
                                               _hd236714237055_
                                               _tl236715237057_
                                               _e236716237060_
                                               _hd236717237063_
                                               _tl236718237065_
                                               _e236719237068_
                                               _hd236720237071_
                                               _tl236721237073_
                                               _e236722237076_
                                               _hd236723237079_
                                               _tl236724237081_
                                               _e236725237084_
                                               _hd236726237087_
                                               _tl236727237089_
                                               _e236728237092_
                                               _hd236729237095_
                                               _tl236730237097_
                                               _e236731237100_
                                               _hd236732237103_
                                               _tl236733237105_
                                               _e236734237108_
                                               _hd236735237111_
                                               _tl236736237113_
                                               _e236737237116_
                                               _hd236738237119_
                                               _tl236739237121_
                                               _e236740237124_
                                               _hd236741237127_
                                               _tl236742237129_
                                               _e236743237132_
                                               _hd236744237135_
                                               _tl236745237137_
                                               _e236746237140_
                                               _hd236747237143_
                                               _tl236748237145_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl236703237025_))
                                                  (let ((___splice242448242449_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl236703237025_
                                                            '0))))
                                                    (let ((_tl236798236824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242448242449_
                                                              '1)))
                                                          (_target236796236822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242448242449_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236798236824_))
                                                          (___match242697242698_
                                                           _e236701237020_
                                                           _hd236702237023_
                                                           _tl236703237025_
                                                           ___splice242448242449_
                                                           _target236796236822_
                                                           _tl236798236824_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g236694236809_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236694236809_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl236703237025_))
                                              (let ((___splice242448242449_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl236703237025_
                                                        '0))))
                                                (let ((_tl236798236824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice242448242449_
                                                          '1)))
                                                      (_target236796236822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice242448242449_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236798236824_))
                                                      (___match242697242698_
                                                       _e236701237020_
                                                       _hd236702237023_
                                                       _tl236703237025_
                                                       ___splice242448242449_
                                                       _target236796236822_
                                                       _tl236798236824_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236694236809_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236694236809_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl236703237025_))
                                      (let ((___splice242448242449_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl236703237025_
                                                '0))))
                                        (let ((_tl236798236824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice242448242449_
                                                  '1)))
                                              (_target236796236822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice242448242449_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236798236824_))
                                              (___match242697242698_
                                               _e236701237020_
                                               _hd236702237023_
                                               _tl236703237025_
                                               ___splice242448242449_
                                               _target236796236822_
                                               _tl236798236824_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236694236809_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236694236809_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl236703237025_))
                                  (let ((___splice242448242449_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl236703237025_
                                            '0))))
                                    (let ((_tl236798236824_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice242448242449_
                                              '1)))
                                          (_target236796236822_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice242448242449_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236798236824_))
                                          (___match242697242698_
                                           _e236701237020_
                                           _hd236702237023_
                                           _tl236703237025_
                                           ___splice242448242449_
                                           _target236796236822_
                                           _tl236798236824_)
                                          (let ()
                                            (declare (not safe))
                                            (_g236694236809_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236694236809_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl236703237025_))
                              (let ((___splice242448242449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl236703237025_
                                        '0))))
                                (let ((_tl236798236824_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice242448242449_
                                          '1)))
                                      (_target236796236822_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice242448242449_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236798236824_))
                                      (___match242697242698_
                                       _e236701237020_
                                       _hd236702237023_
                                       _tl236703237025_
                                       ___splice242448242449_
                                       _target236796236822_
                                       _tl236798236824_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236694236809_)))))
                              (let ()
                                (declare (not safe))
                                (_g236694236809_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl236703237025_))
                      (let ((___splice242448242449_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl236703237025_ '0))))
                        (let ((_tl236798236824_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice242448242449_ '1)))
                              (_target236796236822_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice242448242449_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236798236824_))
                              (___match242697242698_
                               _e236701237020_
                               _hd236702237023_
                               _tl236703237025_
                               ___splice242448242449_
                               _target236796236822_
                               _tl236798236824_)
                              (let ()
                                (declare (not safe))
                                (_g236694236809_)))))
                      (let () (declare (not safe)) (_g236694236809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236733237105_))
                                                      (if (let ((__tmp244446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp244446 'bind-method!))
                  (let ((_L236976_ _hd236738237119_)
                        (_L236977_ _hd236729237095_)
                        (_L236978_ _hd236720237071_)
                        (_L236979_ _hd236711237047_))
                    (___kont242444242445_
                     _L236976_
                     _L236977_
                     _L236978_
                     _L236979_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl236703237025_))
                      (let ((___splice242448242449_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl236703237025_ '0))))
                        (let ((_tl236798236824_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice242448242449_ '1)))
                              (_target236796236822_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice242448242449_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236798236824_))
                              (___match242697242698_
                               _e236701237020_
                               _hd236702237023_
                               _tl236703237025_
                               ___splice242448242449_
                               _target236796236822_
                               _tl236798236824_)
                              (let ()
                                (declare (not safe))
                                (_g236694236809_)))))
                      (let () (declare (not safe)) (_g236694236809_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl236703237025_))
                  (let ((___splice242448242449_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl236703237025_ '0))))
                    (let ((_tl236798236824_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice242448242449_ '1)))
                          (_target236796236822_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice242448242449_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236798236824_))
                          (___match242697242698_
                           _e236701237020_
                           _hd236702237023_
                           _tl236703237025_
                           ___splice242448242449_
                           _target236796236822_
                           _tl236798236824_)
                          (let () (declare (not safe)) (_g236694236809_)))))
                  (let () (declare (not safe)) (_g236694236809_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl236703237025_))
                                                  (let ((___splice242448242449_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl236703237025_
                                                            '0))))
                                                    (let ((_tl236798236824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242448242449_
                                                              '1)))
                                                          (_target236796236822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242448242449_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236798236824_))
                                                          (___match242697242698_
                                                           _e236701237020_
                                                           _hd236702237023_
                                                           _tl236703237025_
                                                           ___splice242448242449_
                                                           _target236796236822_
                                                           _tl236798236824_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g236694236809_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236694236809_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl236703237025_))
                                          (let ((___splice242448242449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl236703237025_
                                                    '0))))
                                            (let ((_tl236798236824_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice242448242449_
                                                      '1)))
                                                  (_target236796236822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice242448242449_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236798236824_))
                                                  (___match242697242698_
                                                   _e236701237020_
                                                   _hd236702237023_
                                                   _tl236703237025_
                                                   ___splice242448242449_
                                                   _target236796236822_
                                                   _tl236798236824_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236694236809_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236694236809_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl236703237025_))
                                      (let ((___splice242448242449_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl236703237025_
                                                '0))))
                                        (let ((_tl236798236824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice242448242449_
                                                  '1)))
                                              (_target236796236822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice242448242449_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236798236824_))
                                              (___match242697242698_
                                               _e236701237020_
                                               _hd236702237023_
                                               _tl236703237025_
                                               ___splice242448242449_
                                               _target236796236822_
                                               _tl236798236824_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236694236809_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236694236809_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl236703237025_))
                                  (let ((___splice242448242449_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl236703237025_
                                            '0))))
                                    (let ((_tl236798236824_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice242448242449_
                                              '1)))
                                          (_target236796236822_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice242448242449_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236798236824_))
                                          (___match242697242698_
                                           _e236701237020_
                                           _hd236702237023_
                                           _tl236703237025_
                                           ___splice242448242449_
                                           _target236796236822_
                                           _tl236798236824_)
                                          (let ()
                                            (declare (not safe))
                                            (_g236694236809_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236694236809_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl236703237025_))
                          (let ((___splice242448242449_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl236703237025_
                                    '0))))
                            (let ((_tl236798236824_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242448242449_ '1)))
                                  (_target236796236822_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242448242449_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236798236824_))
                                  (___match242697242698_
                                   _e236701237020_
                                   _hd236702237023_
                                   _tl236703237025_
                                   ___splice242448242449_
                                   _target236796236822_
                                   _tl236798236824_)
                                  (let ()
                                    (declare (not safe))
                                    (_g236694236809_)))))
                          (let () (declare (not safe)) (_g236694236809_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl236703237025_))
                  (let ((___splice242448242449_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl236703237025_ '0))))
                    (let ((_tl236798236824_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice242448242449_ '1)))
                          (_target236796236822_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice242448242449_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236798236824_))
                          (___match242697242698_
                           _e236701237020_
                           _hd236702237023_
                           _tl236703237025_
                           ___splice242448242449_
                           _target236796236822_
                           _tl236798236824_)
                          (let () (declare (not safe)) (_g236694236809_)))))
                  (let () (declare (not safe)) (_g236694236809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl236703237025_))
                                                      (let ((___splice242448242449_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl236703237025_ '0))))
                (let ((_tl236798236824_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice242448242449_ '1)))
                      (_target236796236822_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice242448242449_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236798236824_))
                      (___match242697242698_
                       _e236701237020_
                       _hd236702237023_
                       _tl236703237025_
                       ___splice242448242449_
                       _target236796236822_
                       _tl236798236824_)
                      (let () (declare (not safe)) (_g236694236809_)))))
              (let () (declare (not safe)) (_g236694236809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl236703237025_))
                                              (let ((___splice242448242449_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl236703237025_
                                                        '0))))
                                                (let ((_tl236798236824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice242448242449_
                                                          '1)))
                                                      (_target236796236822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice242448242449_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236798236824_))
                                                      (___match242697242698_
                                                       _e236701237020_
                                                       _hd236702237023_
                                                       _tl236703237025_
                                                       ___splice242448242449_
                                                       _target236796236822_
                                                       _tl236798236824_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236694236809_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236694236809_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl236703237025_))
                                          (let ((___splice242448242449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl236703237025_
                                                    '0))))
                                            (let ((_tl236798236824_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice242448242449_
                                                      '1)))
                                                  (_target236796236822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice242448242449_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236798236824_))
                                                  (___match242697242698_
                                                   _e236701237020_
                                                   _hd236702237023_
                                                   _tl236703237025_
                                                   ___splice242448242449_
                                                   _target236796236822_
                                                   _tl236798236824_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236694236809_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236694236809_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl236703237025_))
                                      (let ((___splice242448242449_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl236703237025_
                                                '0))))
                                        (let ((_tl236798236824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice242448242449_
                                                  '1)))
                                              (_target236796236822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice242448242449_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236798236824_))
                                              (___match242697242698_
                                               _e236701237020_
                                               _hd236702237023_
                                               _tl236703237025_
                                               ___splice242448242449_
                                               _target236796236822_
                                               _tl236798236824_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236694236809_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236694236809_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl236703237025_))
                              (let ((___splice242448242449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl236703237025_
                                        '0))))
                                (let ((_tl236798236824_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice242448242449_
                                          '1)))
                                      (_target236796236822_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice242448242449_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236798236824_))
                                      (___match242697242698_
                                       _e236701237020_
                                       _hd236702237023_
                                       _tl236703237025_
                                       ___splice242448242449_
                                       _target236796236822_
                                       _tl236798236824_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236694236809_)))))
                              (let ()
                                (declare (not safe))
                                (_g236694236809_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl236703237025_))
                      (let ((___splice242448242449_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl236703237025_ '0))))
                        (let ((_tl236798236824_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice242448242449_ '1)))
                              (_target236796236822_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice242448242449_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236798236824_))
                              (___match242697242698_
                               _e236701237020_
                               _hd236702237023_
                               _tl236703237025_
                               ___splice242448242449_
                               _target236796236822_
                               _tl236798236824_)
                              (let ()
                                (declare (not safe))
                                (_g236694236809_)))))
                      (let () (declare (not safe)) (_g236694236809_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl236703237025_))
                  (let ((___splice242448242449_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl236703237025_ '0))))
                    (let ((_tl236798236824_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice242448242449_ '1)))
                          (_target236796236822_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice242448242449_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236798236824_))
                          (___match242697242698_
                           _e236701237020_
                           _hd236702237023_
                           _tl236703237025_
                           ___splice242448242449_
                           _target236796236822_
                           _tl236798236824_)
                          (let () (declare (not safe)) (_g236694236809_)))))
                  (let () (declare (not safe)) (_g236694236809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl236703237025_))
                                                  (let ((___splice242448242449_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl236703237025_
                                                            '0))))
                                                    (let ((_tl236798236824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242448242449_
                                                              '1)))
                                                          (_target236796236822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242448242449_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236798236824_))
                                                          (___match242697242698_
                                                           _e236701237020_
                                                           _hd236702237023_
                                                           _tl236703237025_
                                                           ___splice242448242449_
                                                           _target236796236822_
                                                           _tl236798236824_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g236694236809_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236694236809_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl236703237025_))
                                              (let ((___splice242448242449_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl236703237025_
                                                        '0))))
                                                (let ((_tl236798236824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice242448242449_
                                                          '1)))
                                                      (_target236796236822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice242448242449_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236798236824_))
                                                      (___match242697242698_
                                                       _e236701237020_
                                                       _hd236702237023_
                                                       _tl236703237025_
                                                       ___splice242448242449_
                                                       _target236796236822_
                                                       _tl236798236824_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236694236809_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236694236809_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl236703237025_))
                                          (let ((___splice242448242449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl236703237025_
                                                    '0))))
                                            (let ((_tl236798236824_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice242448242449_
                                                      '1)))
                                                  (_target236796236822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice242448242449_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236798236824_))
                                                  (___match242697242698_
                                                   _e236701237020_
                                                   _hd236702237023_
                                                   _tl236703237025_
                                                   ___splice242448242449_
                                                   _target236796236822_
                                                   _tl236798236824_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236694236809_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236694236809_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl236703237025_))
                                  (let ((___splice242448242449_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl236703237025_
                                            '0))))
                                    (let ((_tl236798236824_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice242448242449_
                                              '1)))
                                          (_target236796236822_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice242448242449_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236798236824_))
                                          (___match242697242698_
                                           _e236701237020_
                                           _hd236702237023_
                                           _tl236703237025_
                                           ___splice242448242449_
                                           _target236796236822_
                                           _tl236798236824_)
                                          (let ()
                                            (declare (not safe))
                                            (_g236694236809_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236694236809_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl236703237025_))
                          (let ((___splice242448242449_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl236703237025_
                                    '0))))
                            (let ((_tl236798236824_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242448242449_ '1)))
                                  (_target236796236822_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242448242449_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236798236824_))
                                  (___match242697242698_
                                   _e236701237020_
                                   _hd236702237023_
                                   _tl236703237025_
                                   ___splice242448242449_
                                   _target236796236822_
                                   _tl236798236824_)
                                  (let ()
                                    (declare (not safe))
                                    (_g236694236809_)))))
                          (let () (declare (not safe)) (_g236694236809_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl236703237025_))
                      (let ((___splice242448242449_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl236703237025_ '0))))
                        (let ((_tl236798236824_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice242448242449_ '1)))
                              (_target236796236822_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice242448242449_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236798236824_))
                              (___match242697242698_
                               _e236701237020_
                               _hd236702237023_
                               _tl236703237025_
                               ___splice242448242449_
                               _target236796236822_
                               _tl236798236824_)
                              (let ()
                                (declare (not safe))
                                (_g236694236809_)))))
                      (let () (declare (not safe)) (_g236694236809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl236703237025_))
                                                      (let ((___splice242448242449_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl236703237025_ '0))))
                (let ((_tl236798236824_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice242448242449_ '1)))
                      (_target236796236822_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice242448242449_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236798236824_))
                      (___match242697242698_
                       _e236701237020_
                       _hd236702237023_
                       _tl236703237025_
                       ___splice242448242449_
                       _target236796236822_
                       _tl236798236824_)
                      (let () (declare (not safe)) (_g236694236809_)))))
              (let () (declare (not safe)) (_g236694236809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl236703237025_))
                                                  (let ((___splice242448242449_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl236703237025_
                                                            '0))))
                                                    (let ((_tl236798236824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242448242449_
                                                              '1)))
                                                          (_target236796236822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242448242449_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236798236824_))
                                                          (___match242697242698_
                                                           _e236701237020_
                                                           _hd236702237023_
                                                           _tl236703237025_
                                                           ___splice242448242449_
                                                           _target236796236822_
                                                           _tl236798236824_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g236694236809_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236694236809_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl236703237025_))
                                              (let ((___splice242448242449_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl236703237025_
                                                        '0))))
                                                (let ((_tl236798236824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice242448242449_
                                                          '1)))
                                                      (_target236796236822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice242448242449_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236798236824_))
                                                      (___match242697242698_
                                                       _e236701237020_
                                                       _hd236702237023_
                                                       _tl236703237025_
                                                       ___splice242448242449_
                                                       _target236796236822_
                                                       _tl236798236824_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236694236809_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236694236809_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl236703237025_))
                                      (let ((___splice242448242449_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl236703237025_
                                                '0))))
                                        (let ((_tl236798236824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice242448242449_
                                                  '1)))
                                              (_target236796236822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice242448242449_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236798236824_))
                                              (___match242697242698_
                                               _e236701237020_
                                               _hd236702237023_
                                               _tl236703237025_
                                               ___splice242448242449_
                                               _target236796236822_
                                               _tl236798236824_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236694236809_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236694236809_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl236703237025_))
                              (let ((___splice242448242449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl236703237025_
                                        '0))))
                                (let ((_tl236798236824_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice242448242449_
                                          '1)))
                                      (_target236796236822_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice242448242449_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236798236824_))
                                      (___match242697242698_
                                       _e236701237020_
                                       _hd236702237023_
                                       _tl236703237025_
                                       ___splice242448242449_
                                       _target236796236822_
                                       _tl236798236824_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236694236809_)))))
                              (let ()
                                (declare (not safe))
                                (_g236694236809_))))))
                  (let () (declare (not safe)) (_g236694236809_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx236630_)
        (let* ((___stx242700242701_ _stx236630_)
               (_g236633236646_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242700242701_)))))
          (let ((___kont242702242703_
                 (lambda (_L236674_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L236674_))))
                (___kont242704242705_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242700242701_))
                (let ((_e236636236658_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242700242701_))))
                  (let ((_tl236638236663_
                         (let () (declare (not safe)) (##cdr _e236636236658_)))
                        (_hd236637236661_
                         (let ()
                           (declare (not safe))
                           (##car _e236636236658_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl236638236663_))
                        (let ((_e236639236666_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl236638236663_))))
                          (let ((_tl236641236671_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236639236666_)))
                                (_hd236640236669_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236639236666_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl236641236671_))
                                (___kont242702242703_ _hd236640236669_)
                                (___kont242704242705_))))
                        (___kont242704242705_))))
                (___kont242704242705_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx236510_)
        (let* ((_g236512236529_
                (lambda (_g236513236526_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236513236526_))))
               (_g236511236627_
                (lambda (_g236513236532_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236513236532_))
                      (let ((_e236516236534_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236513236532_))))
                        (let ((_hd236517236537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236516236534_)))
                              (_tl236518236539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236516236534_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236518236539_))
                              (let ((_e236519236542_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236518236539_))))
                                (let ((_hd236520236545_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236519236542_)))
                                      (_tl236521236547_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236519236542_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236521236547_))
                                      (let ((_e236522236550_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236521236547_))))
                                        (let ((_hd236523236553_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236522236550_)))
                                              (_tl236524236555_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236522236550_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236524236555_))
                                              ((lambda (_L236558_ _L236559_)
                                                 (let* ((___stx242722242723_
                                                         _L236559_)
                                                        (_g236575236586_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx242722242723_)))))
                                                   (let ((___kont242724242725_
                                                          (lambda (_L236606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L236607_)
                    (let ((_$e236619_
                           (let ((__tmp244447
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L236607_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp244447
                              '#f))))
                      (if _$e236619_
                          ((lambda (_type-e236622_)
                             (_type-e236622_ _stx236510_ _L236559_))
                           _$e236619_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L236558_))))))
                 (___kont242726242727_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L236558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match242733242734_
                                                            (lambda (_e236579236598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd236580236601_
                             _tl236581236603_)
                      (let ((_L236606_ _tl236581236603_)
                            (_L236607_ _hd236580236601_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L236607_))
                            (___kont242724242725_ _L236606_ _L236607_)
                            (___kont242726242727_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx242722242723_))
                   (let ((_e236579236598_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx242722242723_))))
                     (let ((_tl236581236603_
                            (let ()
                              (declare (not safe))
                              (##cdr _e236579236598_)))
                           (_hd236580236601_
                            (let ()
                              (declare (not safe))
                              (##car _e236579236598_))))
                       (___match242733242734_
                        _e236579236598_
                        _hd236580236601_
                        _tl236581236603_)))
                   (___kont242726242727_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd236523236553_
                                               _hd236520236545_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236512236529_
                                                 _g236513236532_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236512236529_ _g236513236532_)))))
                              (let ()
                                (declare (not safe))
                                (_g236512236529_ _g236513236532_)))))
                      (let ()
                        (declare (not safe))
                        (_g236512236529_ _g236513236532_))))))
          (declare (not safe))
          (_g236511236627_ _stx236510_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx236354_ _ann236355_)
        (let* ((_g236357236394_
                (lambda (_g236358236391_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236358236391_))))
               (_g236356236507_
                (lambda (_g236358236397_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236358236397_))
                      (let ((_e236366236399_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236358236397_))))
                        (let ((_hd236367236402_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236366236399_)))
                              (_tl236368236404_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236366236399_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236368236404_))
                              (let ((_e236369236407_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236368236404_))))
                                (let ((_hd236370236410_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236369236407_)))
                                      (_tl236371236412_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236369236407_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236371236412_))
                                      (let ((_e236372236415_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236371236412_))))
                                        (let ((_hd236373236418_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236372236415_)))
                                              (_tl236374236420_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236372236415_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236374236420_))
                                              (let ((_e236375236423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236374236420_))))
                                                (let ((_hd236376236426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236375236423_)))
                                                      (_tl236377236428_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236375236423_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl236377236428_))
                                                      (let ((_e236378236431_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl236377236428_))))
                (let ((_hd236379236434_
                       (let () (declare (not safe)) (##car _e236378236431_)))
                      (_tl236380236436_
                       (let () (declare (not safe)) (##cdr _e236378236431_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl236380236436_))
                      (let ((_e236381236439_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236380236436_))))
                        (let ((_hd236382236442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236381236439_)))
                              (_tl236383236444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236381236439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236383236444_))
                              (let ((_e236384236447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236383236444_))))
                                (let ((_hd236385236450_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236384236447_)))
                                      (_tl236386236452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236384236447_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236386236452_))
                                      (let ((_e236387236455_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236386236452_))))
                                        (let ((_hd236388236458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236387236455_)))
                                              (_tl236389236460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236387236455_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236389236460_))
                                              ((lambda (_L236463_
                                                        _L236464_
                                                        _L236465_
                                                        _L236466_
                                                        _L236467_
                                                        _L236468_
                                                        _L236469_)
                                                 (let ((_type-id236499_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236469_)))
                                                       (_super236500_
                                                        (map gxc#identifier-symbol
                                                             _L236468_))
                                                       (_slots236501_
                                                        (map gx#stx-e
                                                             _L236467_))
                                                       (_ctor-method236502_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236466_)))
                                                       (_struct?236503_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236465_)))
                                                       (_final?236504_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L236464_)))
                                                       (_metaclass236505_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L236463_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L236463_))
                                                            '#f)))
                                                   (let ((__obj244405
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
                                                      __obj244405
                                                      _type-id236499_
                                                      _super236500_
                                                      _slots236501_
                                                      _ctor-method236502_
                                                      _struct?236503_
                                                      _final?236504_
                                                      _metaclass236505_)
                                                     __obj244405)))
                                               _hd236388236458_
                                               _hd236385236450_
                                               _hd236382236442_
                                               _hd236379236434_
                                               _hd236376236426_
                                               _hd236373236418_
                                               _hd236370236410_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236357236394_
                                                 _g236358236397_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236357236394_ _g236358236397_)))))
                              (let ()
                                (declare (not safe))
                                (_g236357236394_ _g236358236397_)))))
                      (let ()
                        (declare (not safe))
                        (_g236357236394_ _g236358236397_)))))
              (let ()
                (declare (not safe))
                (_g236357236394_ _g236358236397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236357236394_
                                                 _g236358236397_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236357236394_ _g236358236397_)))))
                              (let ()
                                (declare (not safe))
                                (_g236357236394_ _g236358236397_)))))
                      (let ()
                        (declare (not safe))
                        (_g236357236394_ _g236358236397_))))))
          (declare (not safe))
          (_g236356236507_ _ann236355_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx236302_ _ann236303_)
        (let* ((_g236305236318_
                (lambda (_g236306236315_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236306236315_))))
               (_g236304236351_
                (lambda (_g236306236321_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236306236321_))
                      (let ((_e236308236323_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236306236321_))))
                        (let ((_hd236309236326_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236308236323_)))
                              (_tl236310236328_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236308236323_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236310236328_))
                              (let ((_e236311236331_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236310236328_))))
                                (let ((_hd236312236334_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236311236331_)))
                                      (_tl236313236336_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236311236331_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236313236336_))
                                      ((lambda (_L236339_)
                                         (let ((__tmp244448
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L236339_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp244448)))
                                       _hd236312236334_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236305236318_ _g236306236321_)))))
                              (let ()
                                (declare (not safe))
                                (_g236305236318_ _g236306236321_)))))
                      (let ()
                        (declare (not safe))
                        (_g236305236318_ _g236306236321_))))))
          (declare (not safe))
          (_g236304236351_ _ann236303_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx236250_ _ann236251_)
        (let* ((_g236253236266_
                (lambda (_g236254236263_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236254236263_))))
               (_g236252236299_
                (lambda (_g236254236269_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236254236269_))
                      (let ((_e236256236271_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236254236269_))))
                        (let ((_hd236257236274_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236256236271_)))
                              (_tl236258236276_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236256236271_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236258236276_))
                              (let ((_e236259236279_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236258236276_))))
                                (let ((_hd236260236282_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236259236279_)))
                                      (_tl236261236284_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236259236279_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236261236284_))
                                      ((lambda (_L236287_)
                                         (let ((__tmp244449
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L236287_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp244449)))
                                       _hd236260236282_)
                                      (let ()
                                        (declare (not safe))
                                        (_g236253236266_ _g236254236269_)))))
                              (let ()
                                (declare (not safe))
                                (_g236253236266_ _g236254236269_)))))
                      (let ()
                        (declare (not safe))
                        (_g236253236266_ _g236254236269_))))))
          (declare (not safe))
          (_g236252236299_ _ann236251_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx236166_ _ann236167_)
        (let* ((_g236169236190_
                (lambda (_g236170236187_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236170236187_))))
               (_g236168236247_
                (lambda (_g236170236193_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236170236193_))
                      (let ((_e236174236195_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236170236193_))))
                        (let ((_hd236175236198_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236174236195_)))
                              (_tl236176236200_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236174236195_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236176236200_))
                              (let ((_e236177236203_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236176236200_))))
                                (let ((_hd236178236206_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236177236203_)))
                                      (_tl236179236208_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236177236203_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236179236208_))
                                      (let ((_e236180236211_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236179236208_))))
                                        (let ((_hd236181236214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236180236211_)))
                                              (_tl236182236216_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236180236211_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236182236216_))
                                              (let ((_e236183236219_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236182236216_))))
                                                (let ((_hd236184236222_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236183236219_)))
                                                      (_tl236185236224_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236183236219_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236185236224_))
                                                      ((lambda (_L236227_
                                                                _L236228_
                                                                _L236229_)
                                                         (let ((__tmp244452
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236229_)))
                       (__tmp244451
                        (let () (declare (not safe)) (gx#stx-e _L236228_)))
                       (__tmp244450
                        (let () (declare (not safe)) (gx#stx-e _L236227_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp244452
                    __tmp244451
                    __tmp244450)))
               _hd236184236222_
               _hd236181236214_
               _hd236178236206_)
              (let ()
                (declare (not safe))
                (_g236169236190_ _g236170236193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236169236190_
                                                 _g236170236193_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236169236190_ _g236170236193_)))))
                              (let ()
                                (declare (not safe))
                                (_g236169236190_ _g236170236193_)))))
                      (let ()
                        (declare (not safe))
                        (_g236169236190_ _g236170236193_))))))
          (declare (not safe))
          (_g236168236247_ _ann236167_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx236082_ _ann236083_)
        (let* ((_g236085236106_
                (lambda (_g236086236103_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g236086236103_))))
               (_g236084236163_
                (lambda (_g236086236109_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g236086236109_))
                      (let ((_e236090236111_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g236086236109_))))
                        (let ((_hd236091236114_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236090236111_)))
                              (_tl236092236116_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236090236111_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236092236116_))
                              (let ((_e236093236119_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl236092236116_))))
                                (let ((_hd236094236122_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236093236119_)))
                                      (_tl236095236124_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236093236119_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236095236124_))
                                      (let ((_e236096236127_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236095236124_))))
                                        (let ((_hd236097236130_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236096236127_)))
                                              (_tl236098236132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236096236127_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236098236132_))
                                              (let ((_e236099236135_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236098236132_))))
                                                (let ((_hd236100236138_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236099236135_)))
                                                      (_tl236101236140_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236099236135_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236101236140_))
                                                      ((lambda (_L236143_
                                                                _L236144_
                                                                _L236145_)
                                                         (let ((__tmp244455
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L236145_)))
                       (__tmp244454
                        (let () (declare (not safe)) (gx#stx-e _L236144_)))
                       (__tmp244453
                        (let () (declare (not safe)) (gx#stx-e _L236143_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp244455
                    __tmp244454
                    __tmp244453)))
               _hd236100236138_
               _hd236097236130_
               _hd236094236122_)
              (let ()
                (declare (not safe))
                (_g236085236106_ _g236086236109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g236085236106_
                                                 _g236086236109_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236085236106_ _g236086236109_)))))
                              (let ()
                                (declare (not safe))
                                (_g236085236106_ _g236086236109_)))))
                      (let ()
                        (declare (not safe))
                        (_g236085236106_ _g236086236109_))))))
          (declare (not safe))
          (_g236084236163_ _ann236083_))))
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
      (lambda (_stx235202_)
        (let* ((___stx242736242737_ _stx235202_)
               (_g235208235404_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242736242737_)))))
          (let ((___kont242738242739_
                 (lambda (_L236070_)
                   (let ((__obj244406
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj244406
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L236070_))
                      '#f)
                     __obj244406)))
                (___kont242740242741_
                 (lambda (_L235997_
                          _L235998_
                          _L235999_
                          _L236000_
                          _L236001_
                          _L236002_)
                   (let* ((_tab236052_
                           (let () (declare (not safe)) (gx#stx-e _L235999_)))
                          (_keys236054_
                           (if _tab236052_
                               (let ((__tmp244456 (vector->list _tab236052_)))
                                 (declare (not safe))
                                 (filter values __tmp244456))
                               '#f)))
                     (let ((__tmp244457
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L235998_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys236054_
                        __tmp244457)))))
                (___kont242742242743_
                 (lambda (_L235730_
                          _L235731_
                          _L235732_
                          _L235733_
                          _L235734_
                          _L235735_
                          _L235736_
                          _L235737_
                          _L235738_
                          _L235739_)
                   (let ((__tmp244459
                          (map gx#stx-e
                               (let ((__tmp244460
                                      (lambda (_g235832235835_ _g235833235837_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g235832235835_
                                                _g235833235837_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp244460 '() _L235732_))))
                         (__tmp244458
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L235736_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp244459
                      __tmp244458))))
                (___kont242746242747_
                 (lambda (_L235440_)
                   (let ((__obj244407
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj244407
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L235440_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L235440_)))
                     __obj244407)))
                (___kont242748242749_
                 (lambda (_L235417_)
                   (let ((__obj244408
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj244408
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L235417_))
                      '#f)
                     __obj244408))))
            (let* ((___match243055243056_
                    (lambda (_e235393235432_ _hd235394235435_ _tl235395235437_)
                      (let ((_L235440_ _tl235395235437_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L235440_))
                            (___kont242746242747_ _L235440_)
                            (___kont242748242749_ _tl235395235437_)))))
                   (___match243049243050_
                    (lambda (_e235287235454_
                             _hd235288235457_
                             _tl235289235459_
                             _e235290235462_
                             _hd235291235465_
                             _tl235292235467_
                             _e235293235470_
                             _hd235294235473_
                             _tl235295235475_
                             _e235296235478_
                             _hd235297235481_
                             _tl235298235483_
                             _e235299235486_
                             _hd235300235489_
                             _tl235301235491_
                             _e235302235494_
                             _hd235303235497_
                             _tl235304235499_
                             _e235305235502_
                             _hd235306235505_
                             _tl235307235507_
                             _e235308235510_
                             _hd235309235513_
                             _tl235310235515_
                             _e235311235518_
                             _hd235312235521_
                             _tl235313235523_
                             _e235314235526_
                             _hd235315235529_
                             _tl235316235531_
                             _e235317235534_
                             _hd235318235537_
                             _tl235319235539_
                             _e235320235542_
                             _hd235321235545_
                             _tl235322235547_
                             _e235323235550_
                             _hd235324235553_
                             _tl235325235555_
                             _e235326235558_
                             _hd235327235561_
                             _tl235328235563_
                             ___splice242744242745_
                             _target235329235566_
                             _tl235331235568_
                             _e235344235571_
                             _hd235345235574_
                             _tl235346235576_
                             _e235347235579_
                             _hd235348235582_
                             _tl235349235584_
                             _e235350235587_
                             _hd235351235590_
                             _tl235352235592_)
                      (letrec ((_loop235332235595_
                                (lambda (_hd235330235598_
                                         _-absent-value235336235600_
                                         _key235337235602_
                                         _-xkwvar235338235604_
                                         _-hash-ref235339235606_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd235330235598_))
                                      (let ((_e235333235609_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd235330235598_))))
                                        (let ((_lp-tl235335235614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235333235609_)))
                                              (_lp-hd235334235612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235333235609_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd235334235612_))
                                              (let ((_e235353235617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd235334235612_))))
                                                (let ((_tl235355235622_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235353235617_)))
                                                      (_hd235354235620_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235353235617_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd235354235620_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd235354235620_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235355235622_))
                      (let ((_e235356235625_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235355235622_))))
                        (let ((_tl235358235630_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235356235625_)))
                              (_hd235357235628_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235356235625_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd235357235628_))
                              (let ((_e235359235633_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd235357235628_))))
                                (let ((_tl235361235638_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235359235633_)))
                                      (_hd235360235636_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235359235633_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd235360235636_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd235360235636_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235361235638_))
                                              (let ((_e235362235641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235361235638_))))
                                                (let ((_tl235364235646_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235362235641_)))
                                                      (_hd235363235644_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235362235641_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235364235646_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235358235630_))
                                                          (let ((_e235365235649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235358235630_))))
                    (let ((_tl235367235654_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235365235649_)))
                          (_hd235366235652_
                           (let ()
                             (declare (not safe))
                             (##car _e235365235649_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235366235652_))
                          (let ((_e235368235657_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235366235652_))))
                            (let ((_tl235370235662_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235368235657_)))
                                  (_hd235369235660_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235368235657_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235369235660_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235369235660_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235370235662_))
                                          (let ((_e235371235665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235370235662_))))
                                            (let ((_tl235373235670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235371235665_)))
                                                  (_hd235372235668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235371235665_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235373235670_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235367235654_))
                                                      (let ((_e235374235673_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235367235654_))))
                (let ((_tl235376235678_
                       (let () (declare (not safe)) (##cdr _e235374235673_)))
                      (_hd235375235676_
                       (let () (declare (not safe)) (##car _e235374235673_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235375235676_))
                      (let ((_e235377235681_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235375235676_))))
                        (let ((_tl235379235686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235377235681_)))
                              (_hd235378235684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235377235681_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235378235684_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd235378235684_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235379235686_))
                                      (let ((_e235380235689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235379235686_))))
                                        (let ((_tl235382235694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235380235689_)))
                                              (_hd235381235692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235380235689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235382235694_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235376235678_))
                                                  (let ((_e235383235697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235376235678_))))
                                                    (let ((_tl235385235702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235383235697_)))
                                                          (_hd235384235700_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235383235697_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235384235700_))
                                                          (let ((_e235386235705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235384235700_))))
                    (let ((_tl235388235710_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235386235705_)))
                          (_hd235387235708_
                           (let ()
                             (declare (not safe))
                             (##car _e235386235705_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235387235708_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd235387235708_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235388235710_))
                                  (let ((_e235389235713_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235388235710_))))
                                    (let ((_tl235391235718_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235389235713_)))
                                          (_hd235390235716_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235389235713_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235391235718_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235385235702_))
                                              (let ((__tmp244464
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd235390235716_
                                                             _-absent-value235336235600_)))
                                                    (__tmp244463
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd235381235692_
                                                             _key235337235602_)))
                                                    (__tmp244462
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd235372235668_
                                                             _-xkwvar235338235604_)))
                                                    (__tmp244461
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd235363235644_
                                                             _-hash-ref235339235606_))))
                                                (declare (not safe))
                                                (_loop235332235595_
                                                 _lp-tl235335235614_
                                                 __tmp244464
                                                 __tmp244463
                                                 __tmp244462
                                                 __tmp244461))
                                              (___match243055243056_
                                               _e235287235454_
                                               _hd235288235457_
                                               _tl235289235459_))
                                          (___match243055243056_
                                           _e235287235454_
                                           _hd235288235457_
                                           _tl235289235459_))))
                                  (___match243055243056_
                                   _e235287235454_
                                   _hd235288235457_
                                   _tl235289235459_))
                              (___match243055243056_
                               _e235287235454_
                               _hd235288235457_
                               _tl235289235459_))
                          (___match243055243056_
                           _e235287235454_
                           _hd235288235457_
                           _tl235289235459_))))
                  (___match243055243056_
                   _e235287235454_
                   _hd235288235457_
                   _tl235289235459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243055243056_
                                                   _e235287235454_
                                                   _hd235288235457_
                                                   _tl235289235459_))
                                              (___match243055243056_
                                               _e235287235454_
                                               _hd235288235457_
                                               _tl235289235459_))))
                                      (___match243055243056_
                                       _e235287235454_
                                       _hd235288235457_
                                       _tl235289235459_))
                                  (___match243055243056_
                                   _e235287235454_
                                   _hd235288235457_
                                   _tl235289235459_))
                              (___match243055243056_
                               _e235287235454_
                               _hd235288235457_
                               _tl235289235459_))))
                      (___match243055243056_
                       _e235287235454_
                       _hd235288235457_
                       _tl235289235459_))))
              (___match243055243056_
               _e235287235454_
               _hd235288235457_
               _tl235289235459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243055243056_
                                                   _e235287235454_
                                                   _hd235288235457_
                                                   _tl235289235459_))))
                                          (___match243055243056_
                                           _e235287235454_
                                           _hd235288235457_
                                           _tl235289235459_))
                                      (___match243055243056_
                                       _e235287235454_
                                       _hd235288235457_
                                       _tl235289235459_))
                                  (___match243055243056_
                                   _e235287235454_
                                   _hd235288235457_
                                   _tl235289235459_))))
                          (___match243055243056_
                           _e235287235454_
                           _hd235288235457_
                           _tl235289235459_))))
                  (___match243055243056_
                   _e235287235454_
                   _hd235288235457_
                   _tl235289235459_))
              (___match243055243056_
               _e235287235454_
               _hd235288235457_
               _tl235289235459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243055243056_
                                               _e235287235454_
                                               _hd235288235457_
                                               _tl235289235459_))
                                          (___match243055243056_
                                           _e235287235454_
                                           _hd235288235457_
                                           _tl235289235459_))
                                      (___match243055243056_
                                       _e235287235454_
                                       _hd235288235457_
                                       _tl235289235459_))))
                              (___match243055243056_
                               _e235287235454_
                               _hd235288235457_
                               _tl235289235459_))))
                      (___match243055243056_
                       _e235287235454_
                       _hd235288235457_
                       _tl235289235459_))
                  (___match243055243056_
                   _e235287235454_
                   _hd235288235457_
                   _tl235289235459_))
              (___match243055243056_
               _e235287235454_
               _hd235288235457_
               _tl235289235459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match243055243056_
                                               _e235287235454_
                                               _hd235288235457_
                                               _tl235289235459_))))
                                      (let ((_-hash-ref235343235727_
                                             (reverse _-hash-ref235339235606_))
                                            (_-xkwvar235342235725_
                                             (reverse _-xkwvar235338235604_))
                                            (_key235341235723_
                                             (reverse _key235337235602_))
                                            (_-absent-value235340235721_
                                             (reverse _-absent-value235336235600_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235298235483_))
                                            (let ((_L235730_ _hd235351235590_)
                                                  (_L235731_
                                                   _-absent-value235340235721_)
                                                  (_L235732_ _key235341235723_)
                                                  (_L235733_
                                                   _-xkwvar235342235725_)
                                                  (_L235734_
                                                   _-hash-ref235343235727_)
                                                  (_L235735_ _hd235327235561_)
                                                  (_L235736_ _hd235318235537_)
                                                  (_L235737_ _hd235309235513_)
                                                  (_L235738_ _tl235295235475_)
                                                  (_L235739_ _hd235294235473_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L235739_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L235738_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L235737_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L235739_
                                                          _L235735_))
                                                       (let ((__tmp244465
                                                              (let ((__tmp244466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g235792235795_ _g235793235797_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235792235795_ _g235793235797_)))))
                        (declare (not safe))
                        (foldr1 __tmp244466 '() _L235732_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp244465))
               (let ((__tmp244469
                      (lambda (_g235799235801_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235799235801_
                           'hash-ref))))
                     (__tmp244467
                      (let ((__tmp244468
                             (lambda (_g235803235806_ _g235804235808_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235803235806_ _g235804235808_)))))
                        (declare (not safe))
                        (foldr1 __tmp244468 '() _L235734_))))
                 (declare (not safe))
                 (andmap1 __tmp244469 __tmp244467))
               (let ((__tmp244472
                      (lambda (_g235810235812_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235810235812_
                           'absent-value))))
                     (__tmp244470
                      (let ((__tmp244471
                             (lambda (_g235814235817_ _g235815235819_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235814235817_ _g235815235819_)))))
                        (declare (not safe))
                        (foldr1 __tmp244471 '() _L235731_))))
                 (declare (not safe))
                 (andmap1 __tmp244472 __tmp244470))
               (let ((__tmp244475
                      (lambda (_g235821235823_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g235821235823_ _L235739_))))
                     (__tmp244473
                      (let ((__tmp244474
                             (lambda (_g235825235828_ _g235826235830_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235825235828_ _g235826235830_)))))
                        (declare (not safe))
                        (foldr1 __tmp244474 '() _L235733_))))
                 (declare (not safe))
                 (andmap1 __tmp244475 __tmp244473)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242742242743_
                                                   _L235730_
                                                   _L235731_
                                                   _L235732_
                                                   _L235733_
                                                   _L235734_
                                                   _L235735_
                                                   _L235736_
                                                   _L235737_
                                                   _L235738_
                                                   _L235739_)
                                                  (___match243055243056_
                                                   _e235287235454_
                                                   _hd235288235457_
                                                   _tl235289235459_)))
                                            (___match243055243056_
                                             _e235287235454_
                                             _hd235288235457_
                                             _tl235289235459_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop235332235595_
                           _target235329235566_
                           '()
                           '()
                           '()
                           '())))))
                   (___match242921242922_
                    (lambda (_e235287235454_
                             _hd235288235457_
                             _tl235289235459_
                             _e235290235462_
                             _hd235291235465_
                             _tl235292235467_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235291235465_))
                          (let ((_e235293235470_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235291235465_))))
                            (let ((_tl235295235475_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235293235470_)))
                                  (_hd235294235473_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235293235470_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235292235467_))
                                  (let ((_e235296235478_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235292235467_))))
                                    (let ((_tl235298235483_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235296235478_)))
                                          (_hd235297235481_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235296235478_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235297235481_))
                                          (let ((_e235299235486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235297235481_))))
                                            (let ((_tl235301235491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235299235486_)))
                                                  (_hd235300235489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235299235486_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd235300235489_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd235300235489_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235301235491_))
                                                          (let ((_e235302235494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235301235491_))))
                    (let ((_tl235304235499_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235302235494_)))
                          (_hd235303235497_
                           (let ()
                             (declare (not safe))
                             (##car _e235302235494_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235303235497_))
                          (let ((_e235305235502_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235303235497_))))
                            (let ((_tl235307235507_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235305235502_)))
                                  (_hd235306235505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235305235502_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235306235505_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235306235505_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235307235507_))
                                          (let ((_e235308235510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235307235507_))))
                                            (let ((_tl235310235515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235308235510_)))
                                                  (_hd235309235513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235308235510_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235310235515_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235304235499_))
                                                      (let ((_e235311235518_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235304235499_))))
                (let ((_tl235313235523_
                       (let () (declare (not safe)) (##cdr _e235311235518_)))
                      (_hd235312235521_
                       (let () (declare (not safe)) (##car _e235311235518_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235312235521_))
                      (let ((_e235314235526_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235312235521_))))
                        (let ((_tl235316235531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235314235526_)))
                              (_hd235315235529_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235314235526_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235315235529_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235315235529_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235316235531_))
                                      (let ((_e235317235534_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235316235531_))))
                                        (let ((_tl235319235539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235317235534_)))
                                              (_hd235318235537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235317235534_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235319235539_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235313235523_))
                                                  (let ((_e235320235542_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235313235523_))))
                                                    (let ((_tl235322235547_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235320235542_)))
                                                          (_hd235321235545_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235320235542_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235321235545_))
                                                          (let ((_e235323235550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235321235545_))))
                    (let ((_tl235325235555_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235323235550_)))
                          (_hd235324235553_
                           (let ()
                             (declare (not safe))
                             (##car _e235323235550_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235324235553_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd235324235553_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235325235555_))
                                  (let ((_e235326235558_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235325235555_))))
                                    (let ((_tl235328235563_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235326235558_)))
                                          (_hd235327235561_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235326235558_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235328235563_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235322235547_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl235322235547_))
                                                        '1)
                                                  (let ((___splice242744242745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235322235547_
                                                            '1))))
                                                    (let ((_tl235331235568_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242744242745_
                                                              '1)))
                                                          (_target235329235566_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice242744242745_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235331235568_))
                                                          (let ((_e235344235571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235331235568_))))
                    (let ((_tl235346235576_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235344235571_)))
                          (_hd235345235574_
                           (let ()
                             (declare (not safe))
                             (##car _e235344235571_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235345235574_))
                          (let ((_e235347235579_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235345235574_))))
                            (let ((_tl235349235584_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235347235579_)))
                                  (_hd235348235582_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235347235579_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235348235582_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235348235582_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235349235584_))
                                          (let ((_e235350235587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235349235584_))))
                                            (let ((_tl235352235592_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235350235587_)))
                                                  (_hd235351235590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235350235587_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235352235592_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235346235576_))
                                                      (___match243049243050_
                                                       _e235287235454_
                                                       _hd235288235457_
                                                       _tl235289235459_
                                                       _e235290235462_
                                                       _hd235291235465_
                                                       _tl235292235467_
                                                       _e235293235470_
                                                       _hd235294235473_
                                                       _tl235295235475_
                                                       _e235296235478_
                                                       _hd235297235481_
                                                       _tl235298235483_
                                                       _e235299235486_
                                                       _hd235300235489_
                                                       _tl235301235491_
                                                       _e235302235494_
                                                       _hd235303235497_
                                                       _tl235304235499_
                                                       _e235305235502_
                                                       _hd235306235505_
                                                       _tl235307235507_
                                                       _e235308235510_
                                                       _hd235309235513_
                                                       _tl235310235515_
                                                       _e235311235518_
                                                       _hd235312235521_
                                                       _tl235313235523_
                                                       _e235314235526_
                                                       _hd235315235529_
                                                       _tl235316235531_
                                                       _e235317235534_
                                                       _hd235318235537_
                                                       _tl235319235539_
                                                       _e235320235542_
                                                       _hd235321235545_
                                                       _tl235322235547_
                                                       _e235323235550_
                                                       _hd235324235553_
                                                       _tl235325235555_
                                                       _e235326235558_
                                                       _hd235327235561_
                                                       _tl235328235563_
                                                       ___splice242744242745_
                                                       _target235329235566_
                                                       _tl235331235568_
                                                       _e235344235571_
                                                       _hd235345235574_
                                                       _tl235346235576_
                                                       _e235347235579_
                                                       _hd235348235582_
                                                       _tl235349235584_
                                                       _e235350235587_
                                                       _hd235351235590_
                                                       _tl235352235592_)
                                                      (___match243055243056_
                                                       _e235287235454_
                                                       _hd235288235457_
                                                       _tl235289235459_))
                                                  (___match243055243056_
                                                   _e235287235454_
                                                   _hd235288235457_
                                                   _tl235289235459_))))
                                          (___match243055243056_
                                           _e235287235454_
                                           _hd235288235457_
                                           _tl235289235459_))
                                      (___match243055243056_
                                       _e235287235454_
                                       _hd235288235457_
                                       _tl235289235459_))
                                  (___match243055243056_
                                   _e235287235454_
                                   _hd235288235457_
                                   _tl235289235459_))))
                          (___match243055243056_
                           _e235287235454_
                           _hd235288235457_
                           _tl235289235459_))))
                  (___match243055243056_
                   _e235287235454_
                   _hd235288235457_
                   _tl235289235459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243055243056_
                                                   _e235287235454_
                                                   _hd235288235457_
                                                   _tl235289235459_))
                                              (___match243055243056_
                                               _e235287235454_
                                               _hd235288235457_
                                               _tl235289235459_))
                                          (___match243055243056_
                                           _e235287235454_
                                           _hd235288235457_
                                           _tl235289235459_))))
                                  (___match243055243056_
                                   _e235287235454_
                                   _hd235288235457_
                                   _tl235289235459_))
                              (___match243055243056_
                               _e235287235454_
                               _hd235288235457_
                               _tl235289235459_))
                          (___match243055243056_
                           _e235287235454_
                           _hd235288235457_
                           _tl235289235459_))))
                  (___match243055243056_
                   _e235287235454_
                   _hd235288235457_
                   _tl235289235459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243055243056_
                                                   _e235287235454_
                                                   _hd235288235457_
                                                   _tl235289235459_))
                                              (___match243055243056_
                                               _e235287235454_
                                               _hd235288235457_
                                               _tl235289235459_))))
                                      (___match243055243056_
                                       _e235287235454_
                                       _hd235288235457_
                                       _tl235289235459_))
                                  (___match243055243056_
                                   _e235287235454_
                                   _hd235288235457_
                                   _tl235289235459_))
                              (___match243055243056_
                               _e235287235454_
                               _hd235288235457_
                               _tl235289235459_))))
                      (___match243055243056_
                       _e235287235454_
                       _hd235288235457_
                       _tl235289235459_))))
              (___match243055243056_
               _e235287235454_
               _hd235288235457_
               _tl235289235459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243055243056_
                                                   _e235287235454_
                                                   _hd235288235457_
                                                   _tl235289235459_))))
                                          (___match243055243056_
                                           _e235287235454_
                                           _hd235288235457_
                                           _tl235289235459_))
                                      (___match243055243056_
                                       _e235287235454_
                                       _hd235288235457_
                                       _tl235289235459_))
                                  (___match243055243056_
                                   _e235287235454_
                                   _hd235288235457_
                                   _tl235289235459_))))
                          (___match243055243056_
                           _e235287235454_
                           _hd235288235457_
                           _tl235289235459_))))
                  (___match243055243056_
                   _e235287235454_
                   _hd235288235457_
                   _tl235289235459_))
              (___match243055243056_
               _e235287235454_
               _hd235288235457_
               _tl235289235459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243055243056_
                                                   _e235287235454_
                                                   _hd235288235457_
                                                   _tl235289235459_))))
                                          (___match243055243056_
                                           _e235287235454_
                                           _hd235288235457_
                                           _tl235289235459_))))
                                  (___match243055243056_
                                   _e235287235454_
                                   _hd235288235457_
                                   _tl235289235459_))))
                          (___match243055243056_
                           _e235287235454_
                           _hd235288235457_
                           _tl235289235459_))))
                   (___match242909242910_
                    (lambda (_e235220235845_
                             _hd235221235848_
                             _tl235222235850_
                             _e235223235853_
                             _hd235224235856_
                             _tl235225235858_
                             _e235226235861_
                             _hd235227235864_
                             _tl235228235866_
                             _e235229235869_
                             _hd235230235872_
                             _tl235231235874_
                             _e235232235877_
                             _hd235233235880_
                             _tl235234235882_
                             _e235235235885_
                             _hd235236235888_
                             _tl235237235890_
                             _e235238235893_
                             _hd235239235896_
                             _tl235240235898_
                             _e235241235901_
                             _hd235242235904_
                             _tl235243235906_
                             _e235244235909_
                             _hd235245235912_
                             _tl235246235914_
                             _e235247235917_
                             _hd235248235920_
                             _tl235249235922_
                             _e235250235925_
                             _hd235251235928_
                             _tl235252235930_
                             _e235253235933_
                             _hd235254235936_
                             _tl235255235938_
                             _e235256235941_
                             _hd235257235944_
                             _tl235258235946_
                             _e235259235949_
                             _hd235260235952_
                             _tl235261235954_
                             _e235262235957_
                             _hd235263235960_
                             _tl235264235962_
                             _e235265235965_
                             _hd235266235968_
                             _tl235267235970_
                             _e235268235973_
                             _hd235269235976_
                             _tl235270235978_
                             _e235271235981_
                             _hd235272235984_
                             _tl235273235986_
                             _e235274235989_
                             _hd235275235992_
                             _tl235276235994_)
                      (let ((_L235997_ _hd235275235992_)
                            (_L235998_ _hd235266235968_)
                            (_L235999_ _hd235257235944_)
                            (_L236000_ _hd235248235920_)
                            (_L236001_ _hd235239235896_)
                            (_L236002_ _hd235224235856_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L236002_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L236001_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L236000_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L236002_ _L235997_)))
                            (___kont242740242741_
                             _L235997_
                             _L235998_
                             _L235999_
                             _L236000_
                             _L236001_
                             _L236002_)
                            (___match242921242922_
                             _e235220235845_
                             _hd235221235848_
                             _tl235222235850_
                             _e235223235853_
                             _hd235224235856_
                             _tl235225235858_)))))
                   (___match242763242764_
                    (lambda (_e235220235845_ _hd235221235848_ _tl235222235850_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235222235850_))
                          (let ((_e235223235853_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235222235850_))))
                            (let ((_tl235225235858_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235223235853_)))
                                  (_hd235224235856_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235223235853_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235225235858_))
                                  (let ((_e235226235861_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235225235858_))))
                                    (let ((_tl235228235866_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235226235861_)))
                                          (_hd235227235864_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235226235861_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235227235864_))
                                          (let ((_e235229235869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235227235864_))))
                                            (let ((_tl235231235874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235229235869_)))
                                                  (_hd235230235872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235229235869_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd235230235872_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd235230235872_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235231235874_))
                                                          (let ((_e235232235877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235231235874_))))
                    (let ((_tl235234235882_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235232235877_)))
                          (_hd235233235880_
                           (let ()
                             (declare (not safe))
                             (##car _e235232235877_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235233235880_))
                          (let ((_e235235235885_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235233235880_))))
                            (let ((_tl235237235890_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235235235885_)))
                                  (_hd235236235888_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235235235885_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235236235888_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd235236235888_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235237235890_))
                                          (let ((_e235238235893_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235237235890_))))
                                            (let ((_tl235240235898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235238235893_)))
                                                  (_hd235239235896_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235238235893_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235240235898_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235234235882_))
                                                      (let ((_e235241235901_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235234235882_))))
                (let ((_tl235243235906_
                       (let () (declare (not safe)) (##cdr _e235241235901_)))
                      (_hd235242235904_
                       (let () (declare (not safe)) (##car _e235241235901_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235242235904_))
                      (let ((_e235244235909_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235242235904_))))
                        (let ((_tl235246235914_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235244235909_)))
                              (_hd235245235912_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235244235909_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235245235912_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235245235912_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235246235914_))
                                      (let ((_e235247235917_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235246235914_))))
                                        (let ((_tl235249235922_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235247235917_)))
                                              (_hd235248235920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235247235917_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235249235922_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235243235906_))
                                                  (let ((_e235250235925_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235243235906_))))
                                                    (let ((_tl235252235930_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235250235925_)))
                                                          (_hd235251235928_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235250235925_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235251235928_))
                                                          (let ((_e235253235933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235251235928_))))
                    (let ((_tl235255235938_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235253235933_)))
                          (_hd235254235936_
                           (let ()
                             (declare (not safe))
                             (##car _e235253235933_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235254235936_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd235254235936_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235255235938_))
                                  (let ((_e235256235941_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235255235938_))))
                                    (let ((_tl235258235946_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235256235941_)))
                                          (_hd235257235944_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235256235941_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235258235946_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235252235930_))
                                              (let ((_e235259235949_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235252235930_))))
                                                (let ((_tl235261235954_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235259235949_)))
                                                      (_hd235260235952_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235259235949_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235260235952_))
                                                      (let ((_e235262235957_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd235260235952_))))
                (let ((_tl235264235962_
                       (let () (declare (not safe)) (##cdr _e235262235957_)))
                      (_hd235263235960_
                       (let () (declare (not safe)) (##car _e235262235957_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd235263235960_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd235263235960_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235264235962_))
                              (let ((_e235265235965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235264235962_))))
                                (let ((_tl235267235970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235265235965_)))
                                      (_hd235266235968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235265235965_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235267235970_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235261235954_))
                                          (let ((_e235268235973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235261235954_))))
                                            (let ((_tl235270235978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235268235973_)))
                                                  (_hd235269235976_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235268235973_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd235269235976_))
                                                  (let ((_e235271235981_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd235269235976_))))
                                                    (let ((_tl235273235986_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235271235981_)))
                                                          (_hd235272235984_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235271235981_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd235272235984_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd235272235984_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235273235986_))
                          (let ((_e235274235989_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235273235986_))))
                            (let ((_tl235276235994_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235274235989_)))
                                  (_hd235275235992_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235274235989_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl235276235994_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235270235978_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235228235866_))
                                          (___match242909242910_
                                           _e235220235845_
                                           _hd235221235848_
                                           _tl235222235850_
                                           _e235223235853_
                                           _hd235224235856_
                                           _tl235225235858_
                                           _e235226235861_
                                           _hd235227235864_
                                           _tl235228235866_
                                           _e235229235869_
                                           _hd235230235872_
                                           _tl235231235874_
                                           _e235232235877_
                                           _hd235233235880_
                                           _tl235234235882_
                                           _e235235235885_
                                           _hd235236235888_
                                           _tl235237235890_
                                           _e235238235893_
                                           _hd235239235896_
                                           _tl235240235898_
                                           _e235241235901_
                                           _hd235242235904_
                                           _tl235243235906_
                                           _e235244235909_
                                           _hd235245235912_
                                           _tl235246235914_
                                           _e235247235917_
                                           _hd235248235920_
                                           _tl235249235922_
                                           _e235250235925_
                                           _hd235251235928_
                                           _tl235252235930_
                                           _e235253235933_
                                           _hd235254235936_
                                           _tl235255235938_
                                           _e235256235941_
                                           _hd235257235944_
                                           _tl235258235946_
                                           _e235259235949_
                                           _hd235260235952_
                                           _tl235261235954_
                                           _e235262235957_
                                           _hd235263235960_
                                           _tl235264235962_
                                           _e235265235965_
                                           _hd235266235968_
                                           _tl235267235970_
                                           _e235268235973_
                                           _hd235269235976_
                                           _tl235270235978_
                                           _e235271235981_
                                           _hd235272235984_
                                           _tl235273235986_
                                           _e235274235989_
                                           _hd235275235992_
                                           _tl235276235994_)
                                          (___match242921242922_
                                           _e235220235845_
                                           _hd235221235848_
                                           _tl235222235850_
                                           _e235223235853_
                                           _hd235224235856_
                                           _tl235225235858_))
                                      (___match242921242922_
                                       _e235220235845_
                                       _hd235221235848_
                                       _tl235222235850_
                                       _e235223235853_
                                       _hd235224235856_
                                       _tl235225235858_))
                                  (___match242921242922_
                                   _e235220235845_
                                   _hd235221235848_
                                   _tl235222235850_
                                   _e235223235853_
                                   _hd235224235856_
                                   _tl235225235858_))))
                          (___match242921242922_
                           _e235220235845_
                           _hd235221235848_
                           _tl235222235850_
                           _e235223235853_
                           _hd235224235856_
                           _tl235225235858_))
                      (___match242921242922_
                       _e235220235845_
                       _hd235221235848_
                       _tl235222235850_
                       _e235223235853_
                       _hd235224235856_
                       _tl235225235858_))
                  (___match242921242922_
                   _e235220235845_
                   _hd235221235848_
                   _tl235222235850_
                   _e235223235853_
                   _hd235224235856_
                   _tl235225235858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242921242922_
                                                   _e235220235845_
                                                   _hd235221235848_
                                                   _tl235222235850_
                                                   _e235223235853_
                                                   _hd235224235856_
                                                   _tl235225235858_))))
                                          (___match242921242922_
                                           _e235220235845_
                                           _hd235221235848_
                                           _tl235222235850_
                                           _e235223235853_
                                           _hd235224235856_
                                           _tl235225235858_))
                                      (___match242921242922_
                                       _e235220235845_
                                       _hd235221235848_
                                       _tl235222235850_
                                       _e235223235853_
                                       _hd235224235856_
                                       _tl235225235858_))))
                              (___match242921242922_
                               _e235220235845_
                               _hd235221235848_
                               _tl235222235850_
                               _e235223235853_
                               _hd235224235856_
                               _tl235225235858_))
                          (___match242921242922_
                           _e235220235845_
                           _hd235221235848_
                           _tl235222235850_
                           _e235223235853_
                           _hd235224235856_
                           _tl235225235858_))
                      (___match242921242922_
                       _e235220235845_
                       _hd235221235848_
                       _tl235222235850_
                       _e235223235853_
                       _hd235224235856_
                       _tl235225235858_))))
              (___match242921242922_
               _e235220235845_
               _hd235221235848_
               _tl235222235850_
               _e235223235853_
               _hd235224235856_
               _tl235225235858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242921242922_
                                               _e235220235845_
                                               _hd235221235848_
                                               _tl235222235850_
                                               _e235223235853_
                                               _hd235224235856_
                                               _tl235225235858_))
                                          (___match242921242922_
                                           _e235220235845_
                                           _hd235221235848_
                                           _tl235222235850_
                                           _e235223235853_
                                           _hd235224235856_
                                           _tl235225235858_))))
                                  (___match242921242922_
                                   _e235220235845_
                                   _hd235221235848_
                                   _tl235222235850_
                                   _e235223235853_
                                   _hd235224235856_
                                   _tl235225235858_))
                              (___match242921242922_
                               _e235220235845_
                               _hd235221235848_
                               _tl235222235850_
                               _e235223235853_
                               _hd235224235856_
                               _tl235225235858_))
                          (___match242921242922_
                           _e235220235845_
                           _hd235221235848_
                           _tl235222235850_
                           _e235223235853_
                           _hd235224235856_
                           _tl235225235858_))))
                  (___match242921242922_
                   _e235220235845_
                   _hd235221235848_
                   _tl235222235850_
                   _e235223235853_
                   _hd235224235856_
                   _tl235225235858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242921242922_
                                                   _e235220235845_
                                                   _hd235221235848_
                                                   _tl235222235850_
                                                   _e235223235853_
                                                   _hd235224235856_
                                                   _tl235225235858_))
                                              (___match242921242922_
                                               _e235220235845_
                                               _hd235221235848_
                                               _tl235222235850_
                                               _e235223235853_
                                               _hd235224235856_
                                               _tl235225235858_))))
                                      (___match242921242922_
                                       _e235220235845_
                                       _hd235221235848_
                                       _tl235222235850_
                                       _e235223235853_
                                       _hd235224235856_
                                       _tl235225235858_))
                                  (___match242921242922_
                                   _e235220235845_
                                   _hd235221235848_
                                   _tl235222235850_
                                   _e235223235853_
                                   _hd235224235856_
                                   _tl235225235858_))
                              (___match242921242922_
                               _e235220235845_
                               _hd235221235848_
                               _tl235222235850_
                               _e235223235853_
                               _hd235224235856_
                               _tl235225235858_))))
                      (___match242921242922_
                       _e235220235845_
                       _hd235221235848_
                       _tl235222235850_
                       _e235223235853_
                       _hd235224235856_
                       _tl235225235858_))))
              (___match242921242922_
               _e235220235845_
               _hd235221235848_
               _tl235222235850_
               _e235223235853_
               _hd235224235856_
               _tl235225235858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242921242922_
                                                   _e235220235845_
                                                   _hd235221235848_
                                                   _tl235222235850_
                                                   _e235223235853_
                                                   _hd235224235856_
                                                   _tl235225235858_))))
                                          (___match242921242922_
                                           _e235220235845_
                                           _hd235221235848_
                                           _tl235222235850_
                                           _e235223235853_
                                           _hd235224235856_
                                           _tl235225235858_))
                                      (___match242921242922_
                                       _e235220235845_
                                       _hd235221235848_
                                       _tl235222235850_
                                       _e235223235853_
                                       _hd235224235856_
                                       _tl235225235858_))
                                  (___match242921242922_
                                   _e235220235845_
                                   _hd235221235848_
                                   _tl235222235850_
                                   _e235223235853_
                                   _hd235224235856_
                                   _tl235225235858_))))
                          (___match242921242922_
                           _e235220235845_
                           _hd235221235848_
                           _tl235222235850_
                           _e235223235853_
                           _hd235224235856_
                           _tl235225235858_))))
                  (___match242921242922_
                   _e235220235845_
                   _hd235221235848_
                   _tl235222235850_
                   _e235223235853_
                   _hd235224235856_
                   _tl235225235858_))
              (___match242921242922_
               _e235220235845_
               _hd235221235848_
               _tl235222235850_
               _e235223235853_
               _hd235224235856_
               _tl235225235858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242921242922_
                                                   _e235220235845_
                                                   _hd235221235848_
                                                   _tl235222235850_
                                                   _e235223235853_
                                                   _hd235224235856_
                                                   _tl235225235858_))))
                                          (___match242921242922_
                                           _e235220235845_
                                           _hd235221235848_
                                           _tl235222235850_
                                           _e235223235853_
                                           _hd235224235856_
                                           _tl235225235858_))))
                                  (___match242921242922_
                                   _e235220235845_
                                   _hd235221235848_
                                   _tl235222235850_
                                   _e235223235853_
                                   _hd235224235856_
                                   _tl235225235858_))))
                          (___match243055243056_
                           _e235220235845_
                           _hd235221235848_
                           _tl235222235850_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242736242737_))
                  (let ((_e235211236062_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242736242737_))))
                    (let ((_tl235213236067_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235211236062_)))
                          (_hd235212236065_
                           (let ()
                             (declare (not safe))
                             (##car _e235211236062_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L236070_ _tl235213236067_))
                            (___kont242738242739_ _L236070_))
                          (___match242763242764_
                           _e235211236062_
                           _hd235212236065_
                           _tl235213236067_))))
                  (let () (declare (not safe)) (_g235208235404_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx235157_)
        (letrec ((_clause-e235159_
                  (lambda (_form235200_)
                    (let ((__obj244409
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
                       __obj244409
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form235200_))
                       (if (let ((__tmp244476
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp244476))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form235200_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form235200_))
                               '#f)
                           '#f))
                      __obj244409))))
          (let* ((_g235161235171_
                  (lambda (_g235162235168_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g235162235168_))))
                 (_g235160235197_
                  (lambda (_g235162235174_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g235162235174_))
                        (let ((_e235164235176_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g235162235174_))))
                          (let ((_hd235165235179_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235164235176_)))
                                (_tl235166235181_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235164235176_))))
                            ((lambda (_L235184_)
                               (let ((_clauses235195_
                                      (map _clause-e235159_ _L235184_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses235195_)))
                             _tl235166235181_)))
                        (let ()
                          (declare (not safe))
                          (_g235161235171_ _g235162235174_))))))
            (declare (not safe))
            (_g235160235197_ _stx235157_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx235089_)
        (let* ((_g235091235108_
                (lambda (_g235092235105_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235092235105_))))
               (_g235090235154_
                (lambda (_g235092235111_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235092235111_))
                      (let ((_e235095235113_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235092235111_))))
                        (let ((_hd235096235116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235095235113_)))
                              (_tl235097235118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235095235113_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235097235118_))
                              (let ((_e235098235121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235097235118_))))
                                (let ((_hd235099235124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235098235121_)))
                                      (_tl235100235126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235098235121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235100235126_))
                                      (let ((_e235101235129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235100235126_))))
                                        (let ((_hd235102235132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235101235129_)))
                                              (_tl235103235134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235101235129_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235103235134_))
                                              ((lambda (_L235137_ _L235138_)
                                                 (let ((__tmp244477
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L235137_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp244477
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd235102235132_
                                               _hd235099235124_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235091235108_
                                                 _g235092235111_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235091235108_ _g235092235111_)))))
                              (let ()
                                (declare (not safe))
                                (_g235091235108_ _g235092235111_)))))
                      (let ()
                        (declare (not safe))
                        (_g235091235108_ _g235092235111_))))))
          (declare (not safe))
          (_g235090235154_ _stx235089_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx234994_)
        (let* ((___stx243064243065_ _stx234994_)
               (_g234997235017_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243064243065_)))))
          (let ((___kont243066243067_
                 (lambda (_L235061_ _L235062_)
                   (let ((_type-e235079235081_
                          (let ((__tmp244478
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L235062_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp244478
                             '#f))))
                     (if _type-e235079235081_
                         (let ((_type-e235084_ _type-e235079235081_))
                           (_type-e235084_ _stx234994_ _L235061_))
                         '#f))))
                (___kont243068243069_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243064243065_))
                (let ((_e235001235029_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243064243065_))))
                  (let ((_tl235003235034_
                         (let () (declare (not safe)) (##cdr _e235001235029_)))
                        (_hd235002235032_
                         (let ()
                           (declare (not safe))
                           (##car _e235001235029_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235003235034_))
                        (let ((_e235004235037_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235003235034_))))
                          (let ((_tl235006235042_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235004235037_)))
                                (_hd235005235040_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235004235037_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd235005235040_))
                                (let ((_e235007235045_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd235005235040_))))
                                  (let ((_tl235009235050_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e235007235045_)))
                                        (_hd235008235048_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e235007235045_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd235008235048_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd235008235048_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl235009235050_))
                                                (let ((_e235010235053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl235009235050_))))
                                                  (let ((_tl235012235058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e235010235053_)))
                                                        (_hd235011235056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e235010235053_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl235012235058_))
                                                        (___kont243066243067_
                                                         _tl235006235042_
                                                         _hd235011235056_)
                                                        (___kont243068243069_))))
                                                (___kont243068243069_))
                                            (___kont243068243069_))
                                        (___kont243068243069_))))
                                (___kont243068243069_))))
                        (___kont243068243069_))))
                (___kont243068243069_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx234943_)
        (let* ((_g234945234958_
                (lambda (_g234946234955_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234946234955_))))
               (_g234944234991_
                (lambda (_g234946234961_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234946234961_))
                      (let ((_e234948234963_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234946234961_))))
                        (let ((_hd234949234966_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234948234963_)))
                              (_tl234950234968_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234948234963_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234950234968_))
                              (let ((_e234951234971_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234950234968_))))
                                (let ((_hd234952234974_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234951234971_)))
                                      (_tl234953234976_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234951234971_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234953234976_))
                                      ((lambda (_L234979_)
                                         (let ((__tmp244479
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L234979_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp244479)))
                                       _hd234952234974_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234945234958_ _g234946234961_)))))
                              (let ()
                                (declare (not safe))
                                (_g234945234958_ _g234946234961_)))))
                      (let ()
                        (declare (not safe))
                        (_g234945234958_ _g234946234961_))))))
          (declare (not safe))
          (_g234944234991_ _stx234943_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form234177_)
        (let* ((___stx243102243103_ _form234177_)
               (_g234182234339_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243102243103_)))))
          (let ((___kont243104243105_
                 (lambda (_L234863_ _L234864_ _L234865_) '#t))
                (___kont243110243111_
                 (lambda (_L234651_
                          _L234652_
                          _L234653_
                          _L234654_
                          _L234655_
                          _L234656_)
                   '#t))
                (___kont243116243117_
                 (lambda (_L234447_ _L234448_ _L234449_ _L234450_) '#t))
                (___kont243118243119_ (lambda () '#f)))
            (let* ((___match243243243244_
                    (lambda (_e234299234351_
                             _hd234300234354_
                             _tl234301234356_
                             _e234302234359_
                             _hd234303234362_
                             _tl234304234364_
                             _e234305234367_
                             _hd234306234370_
                             _tl234307234372_
                             _e234308234375_
                             _hd234309234378_
                             _tl234310234380_
                             _e234311234383_
                             _hd234312234386_
                             _tl234313234388_
                             _e234314234391_
                             _hd234315234394_
                             _tl234316234396_
                             _e234317234399_
                             _hd234318234402_
                             _tl234319234404_
                             _e234320234407_
                             _hd234321234410_
                             _tl234322234412_
                             _e234323234415_
                             _hd234324234418_
                             _tl234325234420_
                             _e234326234423_
                             _hd234327234426_
                             _tl234328234428_
                             _e234329234431_
                             _hd234330234434_
                             _tl234331234436_
                             _e234332234439_
                             _hd234333234442_
                             _tl234334234444_)
                      (let ((_L234447_ _hd234333234442_)
                            (_L234448_ _hd234324234418_)
                            (_L234449_ _hd234315234394_)
                            (_L234450_ _hd234300234354_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L234450_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L234449_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L234450_ _L234447_))
                                 (let ((__tmp244480
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L234448_
                                           _L234450_))))
                                   (declare (not safe))
                                   (not __tmp244480)))
                            (___kont243116243117_
                             _L234447_
                             _L234448_
                             _L234449_
                             _L234450_)
                            (___kont243118243119_)))))
                   (___match243215243216_
                    (lambda (_e234299234351_
                             _hd234300234354_
                             _tl234301234356_
                             _e234302234359_
                             _hd234303234362_
                             _tl234304234364_
                             _e234305234367_
                             _hd234306234370_
                             _tl234307234372_
                             _e234308234375_
                             _hd234309234378_
                             _tl234310234380_
                             _e234311234383_
                             _hd234312234386_
                             _tl234313234388_
                             _e234314234391_
                             _hd234315234394_
                             _tl234316234396_
                             _e234317234399_
                             _hd234318234402_
                             _tl234319234404_
                             _e234320234407_
                             _hd234321234410_
                             _tl234322234412_
                             _e234323234415_
                             _hd234324234418_
                             _tl234325234420_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234319234404_))
                          (let ((_e234326234423_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234319234404_))))
                            (let ((_tl234328234428_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234326234423_)))
                                  (_hd234327234426_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234326234423_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234327234426_))
                                  (let ((_e234329234431_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234327234426_))))
                                    (let ((_tl234331234436_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234329234431_)))
                                          (_hd234330234434_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234329234431_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd234330234434_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd234330234434_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234331234436_))
                                                  (let ((_e234332234439_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234331234436_))))
                                                    (let ((_tl234334234444_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234332234439_)))
                                                          (_hd234333234442_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234332234439_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234334234444_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl234328234428_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234304234364_))
                          (___match243243243244_
                           _e234299234351_
                           _hd234300234354_
                           _tl234301234356_
                           _e234302234359_
                           _hd234303234362_
                           _tl234304234364_
                           _e234305234367_
                           _hd234306234370_
                           _tl234307234372_
                           _e234308234375_
                           _hd234309234378_
                           _tl234310234380_
                           _e234311234383_
                           _hd234312234386_
                           _tl234313234388_
                           _e234314234391_
                           _hd234315234394_
                           _tl234316234396_
                           _e234317234399_
                           _hd234318234402_
                           _tl234319234404_
                           _e234320234407_
                           _hd234321234410_
                           _tl234322234412_
                           _e234323234415_
                           _hd234324234418_
                           _tl234325234420_
                           _e234326234423_
                           _hd234327234426_
                           _tl234328234428_
                           _e234329234431_
                           _hd234330234434_
                           _tl234331234436_
                           _e234332234439_
                           _hd234333234442_
                           _tl234334234444_)
                          (___kont243118243119_))
                      (___kont243118243119_))
                  (___kont243118243119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243118243119_))
                                              (___kont243118243119_))
                                          (___kont243118243119_))))
                                  (___kont243118243119_))))
                          (___kont243118243119_))))
                   (___match243145243146_
                    (lambda (_e234235234491_
                             _hd234236234494_
                             _tl234237234496_
                             ___splice243112243113_
                             _target234238234499_
                             _tl234240234501_)
                      (letrec ((_loop234241234504_
                                (lambda (_hd234239234507_ _arg234245234509_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234239234507_))
                                      (let ((_e234242234512_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234239234507_))))
                                        (let ((_lp-tl234244234517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234242234512_)))
                                              (_lp-hd234243234515_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234242234512_))))
                                          (let ((__tmp244481
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234243234515_
                                                         _arg234245234509_))))
                                            (declare (not safe))
                                            (_loop234241234504_
                                             _lp-tl234244234517_
                                             __tmp244481))))
                                      (let ((_arg234246234520_
                                             (reverse _arg234245234509_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234237234496_))
                                            (let ((_e234247234523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234237234496_))))
                                              (let ((_tl234249234528_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234247234523_)))
                                                    (_hd234248234526_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234247234523_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234248234526_))
                                                    (let ((_e234250234531_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234248234526_))))
                                                      (let ((_tl234252234536_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234250234531_)))
                    (_hd234251234534_
                     (let () (declare (not safe)) (##car _e234250234531_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234251234534_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234251234534_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234252234536_))
                            (let ((_e234253234539_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234252234536_))))
                              (let ((_tl234255234544_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234253234539_)))
                                    (_hd234254234542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234253234539_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234254234542_))
                                    (let ((_e234256234547_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234254234542_))))
                                      (let ((_tl234258234552_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234256234547_)))
                                            (_hd234257234550_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234256234547_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234257234550_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234257234550_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234258234552_))
                                                    (let ((_e234259234555_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234258234552_))))
                                                      (let ((_tl234261234560_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234259234555_)))
                    (_hd234260234558_
                     (let () (declare (not safe)) (##car _e234259234555_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234261234560_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234255234544_))
                        (let ((_e234262234563_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234255234544_))))
                          (let ((_tl234264234568_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234262234563_)))
                                (_hd234263234566_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234262234563_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234263234566_))
                                (let ((_e234265234571_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234263234566_))))
                                  (let ((_tl234267234576_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234265234571_)))
                                        (_hd234266234574_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234265234571_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234266234574_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234266234574_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234267234576_))
                                                (let ((_e234268234579_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234267234576_))))
                                                  (let ((_tl234270234584_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234268234579_)))
                                                        (_hd234269234582_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234268234579_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234270234584_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl234264234568_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl234264234568_))
                              '1)
                        (let ((___splice243114243115_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234264234568_
                                  '1))))
                          (let ((_tl234273234589_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243114243115_ '1)))
                                (_target234271234587_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243114243115_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234273234589_))
                                (let ((_e234280234592_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234273234589_))))
                                  (let ((_tl234282234597_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234280234592_)))
                                        (_hd234281234595_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234280234592_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd234281234595_))
                                        (let ((_e234283234600_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd234281234595_))))
                                          (let ((_tl234285234605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e234283234600_)))
                                                (_hd234284234603_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e234283234600_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd234284234603_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd234284234603_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl234285234605_))
                                                        (let ((_e234286234608_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl234285234605_))))
                  (let ((_tl234288234613_
                         (let () (declare (not safe)) (##cdr _e234286234608_)))
                        (_hd234287234611_
                         (let ()
                           (declare (not safe))
                           (##car _e234286234608_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl234288234613_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl234282234597_))
                            (letrec ((_loop234274234616_
                                      (lambda (_hd234272234619_
                                               _xarg234278234621_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd234272234619_))
                                            (let ((_e234275234624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd234272234619_))))
                                              (let ((_lp-tl234277234629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234275234624_)))
                                                    (_lp-hd234276234627_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234275234624_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd234276234627_))
                                                    (let ((_e234289234632_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd234276234627_))))
                                                      (let ((_tl234291234637_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234289234632_)))
                    (_hd234290234635_
                     (let () (declare (not safe)) (##car _e234289234632_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234290234635_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd234290234635_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234291234637_))
                            (let ((_e234292234640_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234291234637_))))
                              (let ((_tl234294234645_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234292234640_)))
                                    (_hd234293234643_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234292234640_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl234294234645_))
                                    (let ((__tmp244482
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd234293234643_
                                                   _xarg234278234621_))))
                                      (declare (not safe))
                                      (_loop234274234616_
                                       _lp-tl234277234629_
                                       __tmp244482))
                                    (___match243215243216_
                                     _e234235234491_
                                     _hd234236234494_
                                     _tl234237234496_
                                     _e234247234523_
                                     _hd234248234526_
                                     _tl234249234528_
                                     _e234250234531_
                                     _hd234251234534_
                                     _tl234252234536_
                                     _e234253234539_
                                     _hd234254234542_
                                     _tl234255234544_
                                     _e234256234547_
                                     _hd234257234550_
                                     _tl234258234552_
                                     _e234259234555_
                                     _hd234260234558_
                                     _tl234261234560_
                                     _e234262234563_
                                     _hd234263234566_
                                     _tl234264234568_
                                     _e234265234571_
                                     _hd234266234574_
                                     _tl234267234576_
                                     _e234268234579_
                                     _hd234269234582_
                                     _tl234270234584_))))
                            (___match243215243216_
                             _e234235234491_
                             _hd234236234494_
                             _tl234237234496_
                             _e234247234523_
                             _hd234248234526_
                             _tl234249234528_
                             _e234250234531_
                             _hd234251234534_
                             _tl234252234536_
                             _e234253234539_
                             _hd234254234542_
                             _tl234255234544_
                             _e234256234547_
                             _hd234257234550_
                             _tl234258234552_
                             _e234259234555_
                             _hd234260234558_
                             _tl234261234560_
                             _e234262234563_
                             _hd234263234566_
                             _tl234264234568_
                             _e234265234571_
                             _hd234266234574_
                             _tl234267234576_
                             _e234268234579_
                             _hd234269234582_
                             _tl234270234584_))
                        (___match243215243216_
                         _e234235234491_
                         _hd234236234494_
                         _tl234237234496_
                         _e234247234523_
                         _hd234248234526_
                         _tl234249234528_
                         _e234250234531_
                         _hd234251234534_
                         _tl234252234536_
                         _e234253234539_
                         _hd234254234542_
                         _tl234255234544_
                         _e234256234547_
                         _hd234257234550_
                         _tl234258234552_
                         _e234259234555_
                         _hd234260234558_
                         _tl234261234560_
                         _e234262234563_
                         _hd234263234566_
                         _tl234264234568_
                         _e234265234571_
                         _hd234266234574_
                         _tl234267234576_
                         _e234268234579_
                         _hd234269234582_
                         _tl234270234584_))
                    (___match243215243216_
                     _e234235234491_
                     _hd234236234494_
                     _tl234237234496_
                     _e234247234523_
                     _hd234248234526_
                     _tl234249234528_
                     _e234250234531_
                     _hd234251234534_
                     _tl234252234536_
                     _e234253234539_
                     _hd234254234542_
                     _tl234255234544_
                     _e234256234547_
                     _hd234257234550_
                     _tl234258234552_
                     _e234259234555_
                     _hd234260234558_
                     _tl234261234560_
                     _e234262234563_
                     _hd234263234566_
                     _tl234264234568_
                     _e234265234571_
                     _hd234266234574_
                     _tl234267234576_
                     _e234268234579_
                     _hd234269234582_
                     _tl234270234584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243215243216_
                                                     _e234235234491_
                                                     _hd234236234494_
                                                     _tl234237234496_
                                                     _e234247234523_
                                                     _hd234248234526_
                                                     _tl234249234528_
                                                     _e234250234531_
                                                     _hd234251234534_
                                                     _tl234252234536_
                                                     _e234253234539_
                                                     _hd234254234542_
                                                     _tl234255234544_
                                                     _e234256234547_
                                                     _hd234257234550_
                                                     _tl234258234552_
                                                     _e234259234555_
                                                     _hd234260234558_
                                                     _tl234261234560_
                                                     _e234262234563_
                                                     _hd234263234566_
                                                     _tl234264234568_
                                                     _e234265234571_
                                                     _hd234266234574_
                                                     _tl234267234576_
                                                     _e234268234579_
                                                     _hd234269234582_
                                                     _tl234270234584_))))
                                            (let ((_xarg234279234648_
                                                   (reverse _xarg234278234621_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234249234528_))
                                                  (let ((_L234651_
                                                         _hd234287234611_)
                                                        (_L234652_
                                                         _xarg234279234648_)
                                                        (_L234653_
                                                         _hd234269234582_)
                                                        (_L234654_
                                                         _hd234260234558_)
                                                        (_L234655_
                                                         _tl234240234501_)
                                                        (_L234656_
                                                         _arg234246234520_))
                                                    (if (and (let ((__tmp244483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp244484
                                   (lambda (_g234699234702_ _g234700234704_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g234699234702_
                                             _g234700234704_)))))
                              (declare (not safe))
                              (foldr1 __tmp244484 '() _L234656_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp244483))
                     (let () (declare (not safe)) (gx#identifier? _L234655_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L234654_ 'apply))
                     (fx= (length (let ((__tmp244485
                                         (lambda (_g234706234709_
                                                  _g234707234711_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g234706234709_
                                                   _g234707234711_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp244485 '() _L234656_)))
                          (length (let ((__tmp244486
                                         (lambda (_g234713234716_
                                                  _g234714234718_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g234713234716_
                                                   _g234714234718_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp244486 '() _L234652_))))
                     (let ((__tmp244489
                            (let ((__tmp244490
                                   (lambda (_g234720234723_ _g234721234725_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g234720234723_
                                             _g234721234725_)))))
                              (declare (not safe))
                              (foldr1 __tmp244490 '() _L234656_)))
                           (__tmp244487
                            (let ((__tmp244488
                                   (lambda (_g234727234730_ _g234728234732_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g234727234730_
                                             _g234728234732_)))))
                              (declare (not safe))
                              (foldr1 __tmp244488 '() _L234652_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp244489 __tmp244487))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L234655_ _L234651_))
                     (let ((__tmp244491
                            (let ((__tmp244495
                                   (lambda (_g234734234736_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g234734234736_
                                        _L234653_))))
                                  (__tmp244492
                                   (let ((__tmp244494
                                          (lambda (_g234738234741_
                                                   _g234739234743_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g234738234741_
                                                    _g234739234743_))))
                                         (__tmp244493
                                          (let ()
                                            (declare (not safe))
                                            (cons _L234655_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp244494
                                             __tmp244493
                                             _L234656_))))
                              (declare (not safe))
                              (find __tmp244495 __tmp244492))))
                       (declare (not safe))
                       (not __tmp244491)))
                (___kont243110243111_
                 _L234651_
                 _L234652_
                 _L234653_
                 _L234654_
                 _L234655_
                 _L234656_)
                (___match243215243216_
                 _e234235234491_
                 _hd234236234494_
                 _tl234237234496_
                 _e234247234523_
                 _hd234248234526_
                 _tl234249234528_
                 _e234250234531_
                 _hd234251234534_
                 _tl234252234536_
                 _e234253234539_
                 _hd234254234542_
                 _tl234255234544_
                 _e234256234547_
                 _hd234257234550_
                 _tl234258234552_
                 _e234259234555_
                 _hd234260234558_
                 _tl234261234560_
                 _e234262234563_
                 _hd234263234566_
                 _tl234264234568_
                 _e234265234571_
                 _hd234266234574_
                 _tl234267234576_
                 _e234268234579_
                 _hd234269234582_
                 _tl234270234584_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match243215243216_
                                                   _e234235234491_
                                                   _hd234236234494_
                                                   _tl234237234496_
                                                   _e234247234523_
                                                   _hd234248234526_
                                                   _tl234249234528_
                                                   _e234250234531_
                                                   _hd234251234534_
                                                   _tl234252234536_
                                                   _e234253234539_
                                                   _hd234254234542_
                                                   _tl234255234544_
                                                   _e234256234547_
                                                   _hd234257234550_
                                                   _tl234258234552_
                                                   _e234259234555_
                                                   _hd234260234558_
                                                   _tl234261234560_
                                                   _e234262234563_
                                                   _hd234263234566_
                                                   _tl234264234568_
                                                   _e234265234571_
                                                   _hd234266234574_
                                                   _tl234267234576_
                                                   _e234268234579_
                                                   _hd234269234582_
                                                   _tl234270234584_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop234274234616_ _target234271234587_ '())))
                            (___match243215243216_
                             _e234235234491_
                             _hd234236234494_
                             _tl234237234496_
                             _e234247234523_
                             _hd234248234526_
                             _tl234249234528_
                             _e234250234531_
                             _hd234251234534_
                             _tl234252234536_
                             _e234253234539_
                             _hd234254234542_
                             _tl234255234544_
                             _e234256234547_
                             _hd234257234550_
                             _tl234258234552_
                             _e234259234555_
                             _hd234260234558_
                             _tl234261234560_
                             _e234262234563_
                             _hd234263234566_
                             _tl234264234568_
                             _e234265234571_
                             _hd234266234574_
                             _tl234267234576_
                             _e234268234579_
                             _hd234269234582_
                             _tl234270234584_))
                        (___match243215243216_
                         _e234235234491_
                         _hd234236234494_
                         _tl234237234496_
                         _e234247234523_
                         _hd234248234526_
                         _tl234249234528_
                         _e234250234531_
                         _hd234251234534_
                         _tl234252234536_
                         _e234253234539_
                         _hd234254234542_
                         _tl234255234544_
                         _e234256234547_
                         _hd234257234550_
                         _tl234258234552_
                         _e234259234555_
                         _hd234260234558_
                         _tl234261234560_
                         _e234262234563_
                         _hd234263234566_
                         _tl234264234568_
                         _e234265234571_
                         _hd234266234574_
                         _tl234267234576_
                         _e234268234579_
                         _hd234269234582_
                         _tl234270234584_))))
                (___match243215243216_
                 _e234235234491_
                 _hd234236234494_
                 _tl234237234496_
                 _e234247234523_
                 _hd234248234526_
                 _tl234249234528_
                 _e234250234531_
                 _hd234251234534_
                 _tl234252234536_
                 _e234253234539_
                 _hd234254234542_
                 _tl234255234544_
                 _e234256234547_
                 _hd234257234550_
                 _tl234258234552_
                 _e234259234555_
                 _hd234260234558_
                 _tl234261234560_
                 _e234262234563_
                 _hd234263234566_
                 _tl234264234568_
                 _e234265234571_
                 _hd234266234574_
                 _tl234267234576_
                 _e234268234579_
                 _hd234269234582_
                 _tl234270234584_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243215243216_
                                                     _e234235234491_
                                                     _hd234236234494_
                                                     _tl234237234496_
                                                     _e234247234523_
                                                     _hd234248234526_
                                                     _tl234249234528_
                                                     _e234250234531_
                                                     _hd234251234534_
                                                     _tl234252234536_
                                                     _e234253234539_
                                                     _hd234254234542_
                                                     _tl234255234544_
                                                     _e234256234547_
                                                     _hd234257234550_
                                                     _tl234258234552_
                                                     _e234259234555_
                                                     _hd234260234558_
                                                     _tl234261234560_
                                                     _e234262234563_
                                                     _hd234263234566_
                                                     _tl234264234568_
                                                     _e234265234571_
                                                     _hd234266234574_
                                                     _tl234267234576_
                                                     _e234268234579_
                                                     _hd234269234582_
                                                     _tl234270234584_))
                                                (___match243215243216_
                                                 _e234235234491_
                                                 _hd234236234494_
                                                 _tl234237234496_
                                                 _e234247234523_
                                                 _hd234248234526_
                                                 _tl234249234528_
                                                 _e234250234531_
                                                 _hd234251234534_
                                                 _tl234252234536_
                                                 _e234253234539_
                                                 _hd234254234542_
                                                 _tl234255234544_
                                                 _e234256234547_
                                                 _hd234257234550_
                                                 _tl234258234552_
                                                 _e234259234555_
                                                 _hd234260234558_
                                                 _tl234261234560_
                                                 _e234262234563_
                                                 _hd234263234566_
                                                 _tl234264234568_
                                                 _e234265234571_
                                                 _hd234266234574_
                                                 _tl234267234576_
                                                 _e234268234579_
                                                 _hd234269234582_
                                                 _tl234270234584_))))
                                        (___match243215243216_
                                         _e234235234491_
                                         _hd234236234494_
                                         _tl234237234496_
                                         _e234247234523_
                                         _hd234248234526_
                                         _tl234249234528_
                                         _e234250234531_
                                         _hd234251234534_
                                         _tl234252234536_
                                         _e234253234539_
                                         _hd234254234542_
                                         _tl234255234544_
                                         _e234256234547_
                                         _hd234257234550_
                                         _tl234258234552_
                                         _e234259234555_
                                         _hd234260234558_
                                         _tl234261234560_
                                         _e234262234563_
                                         _hd234263234566_
                                         _tl234264234568_
                                         _e234265234571_
                                         _hd234266234574_
                                         _tl234267234576_
                                         _e234268234579_
                                         _hd234269234582_
                                         _tl234270234584_))))
                                (___match243215243216_
                                 _e234235234491_
                                 _hd234236234494_
                                 _tl234237234496_
                                 _e234247234523_
                                 _hd234248234526_
                                 _tl234249234528_
                                 _e234250234531_
                                 _hd234251234534_
                                 _tl234252234536_
                                 _e234253234539_
                                 _hd234254234542_
                                 _tl234255234544_
                                 _e234256234547_
                                 _hd234257234550_
                                 _tl234258234552_
                                 _e234259234555_
                                 _hd234260234558_
                                 _tl234261234560_
                                 _e234262234563_
                                 _hd234263234566_
                                 _tl234264234568_
                                 _e234265234571_
                                 _hd234266234574_
                                 _tl234267234576_
                                 _e234268234579_
                                 _hd234269234582_
                                 _tl234270234584_))))
                        (___match243215243216_
                         _e234235234491_
                         _hd234236234494_
                         _tl234237234496_
                         _e234247234523_
                         _hd234248234526_
                         _tl234249234528_
                         _e234250234531_
                         _hd234251234534_
                         _tl234252234536_
                         _e234253234539_
                         _hd234254234542_
                         _tl234255234544_
                         _e234256234547_
                         _hd234257234550_
                         _tl234258234552_
                         _e234259234555_
                         _hd234260234558_
                         _tl234261234560_
                         _e234262234563_
                         _hd234263234566_
                         _tl234264234568_
                         _e234265234571_
                         _hd234266234574_
                         _tl234267234576_
                         _e234268234579_
                         _hd234269234582_
                         _tl234270234584_))
                    (___match243215243216_
                     _e234235234491_
                     _hd234236234494_
                     _tl234237234496_
                     _e234247234523_
                     _hd234248234526_
                     _tl234249234528_
                     _e234250234531_
                     _hd234251234534_
                     _tl234252234536_
                     _e234253234539_
                     _hd234254234542_
                     _tl234255234544_
                     _e234256234547_
                     _hd234257234550_
                     _tl234258234552_
                     _e234259234555_
                     _hd234260234558_
                     _tl234261234560_
                     _e234262234563_
                     _hd234263234566_
                     _tl234264234568_
                     _e234265234571_
                     _hd234266234574_
                     _tl234267234576_
                     _e234268234579_
                     _hd234269234582_
                     _tl234270234584_))
                (___kont243118243119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243118243119_))
                                            (___kont243118243119_))
                                        (___kont243118243119_))))
                                (___kont243118243119_))))
                        (___kont243118243119_))
                    (___kont243118243119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243118243119_))
                                                (___kont243118243119_))
                                            (___kont243118243119_))))
                                    (___kont243118243119_))))
                            (___kont243118243119_))
                        (___kont243118243119_))
                    (___kont243118243119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243118243119_))))
                                            (___kont243118243119_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234241234504_ _target234238234499_ '())))))
                   (___match243133243134_
                    (lambda (_e234187234751_
                             _hd234188234754_
                             _tl234189234756_
                             ___splice243106243107_
                             _target234190234759_
                             _tl234192234761_)
                      (letrec ((_loop234193234764_
                                (lambda (_hd234191234767_ _arg234197234769_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234191234767_))
                                      (let ((_e234194234772_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234191234767_))))
                                        (let ((_lp-tl234196234777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234194234772_)))
                                              (_lp-hd234195234775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234194234772_))))
                                          (let ((__tmp244496
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd234195234775_
                                                         _arg234197234769_))))
                                            (declare (not safe))
                                            (_loop234193234764_
                                             _lp-tl234196234777_
                                             __tmp244496))))
                                      (let ((_arg234198234780_
                                             (reverse _arg234197234769_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl234189234756_))
                                            (let ((_e234199234783_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl234189234756_))))
                                              (let ((_tl234201234788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e234199234783_)))
                                                    (_hd234200234786_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e234199234783_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd234200234786_))
                                                    (let ((_e234202234791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd234200234786_))))
                                                      (let ((_tl234204234796_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234202234791_)))
                    (_hd234203234794_
                     (let () (declare (not safe)) (##car _e234202234791_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd234203234794_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd234203234794_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234204234796_))
                            (let ((_e234205234799_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234204234796_))))
                              (let ((_tl234207234804_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234205234799_)))
                                    (_hd234206234802_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234205234799_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd234206234802_))
                                    (let ((_e234208234807_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd234206234802_))))
                                      (let ((_tl234210234812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234208234807_)))
                                            (_hd234209234810_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234208234807_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd234209234810_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd234209234810_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl234210234812_))
                                                    (let ((_e234211234815_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl234210234812_))))
                                                      (let ((_tl234213234820_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e234211234815_)))
                    (_hd234212234818_
                     (let () (declare (not safe)) (##car _e234211234815_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl234213234820_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl234207234804_))
                        (let ((___splice243108243109_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl234207234804_
                                  '0))))
                          (let ((_tl234216234825_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243108243109_ '1)))
                                (_target234214234823_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243108243109_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234216234825_))
                                (letrec ((_loop234217234828_
                                          (lambda (_hd234215234831_
                                                   _xarg234221234833_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd234215234831_))
                                                (let ((_e234218234836_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd234215234831_))))
                                                  (let ((_lp-tl234220234841_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234218234836_)))
                                                        (_lp-hd234219234839_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234218234836_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd234219234839_))
                                                        (let ((_e234223234844_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd234219234839_))))
                  (let ((_tl234225234849_
                         (let () (declare (not safe)) (##cdr _e234223234844_)))
                        (_hd234224234847_
                         (let ()
                           (declare (not safe))
                           (##car _e234223234844_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd234224234847_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd234224234847_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234225234849_))
                                (let ((_e234226234852_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234225234849_))))
                                  (let ((_tl234228234857_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234226234852_)))
                                        (_hd234227234855_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234226234852_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234228234857_))
                                        (let ((__tmp244497
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd234227234855_
                                                       _xarg234221234833_))))
                                          (declare (not safe))
                                          (_loop234217234828_
                                           _lp-tl234220234841_
                                           __tmp244497))
                                        (___match243145243146_
                                         _e234187234751_
                                         _hd234188234754_
                                         _tl234189234756_
                                         ___splice243106243107_
                                         _target234190234759_
                                         _tl234192234761_))))
                                (___match243145243146_
                                 _e234187234751_
                                 _hd234188234754_
                                 _tl234189234756_
                                 ___splice243106243107_
                                 _target234190234759_
                                 _tl234192234761_))
                            (___match243145243146_
                             _e234187234751_
                             _hd234188234754_
                             _tl234189234756_
                             ___splice243106243107_
                             _target234190234759_
                             _tl234192234761_))
                        (___match243145243146_
                         _e234187234751_
                         _hd234188234754_
                         _tl234189234756_
                         ___splice243106243107_
                         _target234190234759_
                         _tl234192234761_))))
                (___match243145243146_
                 _e234187234751_
                 _hd234188234754_
                 _tl234189234756_
                 ___splice243106243107_
                 _target234190234759_
                 _tl234192234761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg234222234860_
                                                       (reverse _xarg234221234833_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234201234788_))
                                                      (let ((_L234863_
                                                             _xarg234222234860_)
                                                            (_L234864_
                                                             _hd234212234818_)
                                                            (_L234865_
                                                             _arg234198234780_))
                                                        (if (and (let ((__tmp244498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp244499
                                       (lambda (_g234893234896_
                                                _g234894234898_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234893234896_
                                                 _g234894234898_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp244499 '() _L234865_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp244498))
                         (fx= (length (let ((__tmp244500
                                             (lambda (_g234900234903_
                                                      _g234901234905_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234900234903_
                                                       _g234901234905_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp244500 '() _L234865_)))
                              (length (let ((__tmp244501
                                             (lambda (_g234907234910_
                                                      _g234908234912_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234907234910_
                                                       _g234908234912_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp244501 '() _L234863_))))
                         (let ((__tmp244504
                                (let ((__tmp244505
                                       (lambda (_g234914234917_
                                                _g234915234919_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234914234917_
                                                 _g234915234919_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp244505 '() _L234865_)))
                               (__tmp244502
                                (let ((__tmp244503
                                       (lambda (_g234921234924_
                                                _g234922234926_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234921234924_
                                                 _g234922234926_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp244503 '() _L234863_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp244504
                                    __tmp244502))
                         (let ((__tmp244506
                                (let ((__tmp244509
                                       (lambda (_g234928234930_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g234928234930_
                                            _L234864_))))
                                      (__tmp244507
                                       (let ((__tmp244508
                                              (lambda (_g234932234935_
                                                       _g234933234937_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g234932234935_
                                                        _g234933234937_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp244508 '() _L234865_))))
                                  (declare (not safe))
                                  (find __tmp244509 __tmp244507))))
                           (declare (not safe))
                           (not __tmp244506)))
                    (___kont243104243105_ _L234863_ _L234864_ _L234865_)
                    (___match243145243146_
                     _e234187234751_
                     _hd234188234754_
                     _tl234189234756_
                     ___splice243106243107_
                     _target234190234759_
                     _tl234192234761_)))
              (___match243145243146_
               _e234187234751_
               _hd234188234754_
               _tl234189234756_
               ___splice243106243107_
               _target234190234759_
               _tl234192234761_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop234217234828_
                                     _target234214234823_
                                     '())))
                                (___match243145243146_
                                 _e234187234751_
                                 _hd234188234754_
                                 _tl234189234756_
                                 ___splice243106243107_
                                 _target234190234759_
                                 _tl234192234761_))))
                        (___match243145243146_
                         _e234187234751_
                         _hd234188234754_
                         _tl234189234756_
                         ___splice243106243107_
                         _target234190234759_
                         _tl234192234761_))
                    (___match243145243146_
                     _e234187234751_
                     _hd234188234754_
                     _tl234189234756_
                     ___splice243106243107_
                     _target234190234759_
                     _tl234192234761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243145243146_
                                                     _e234187234751_
                                                     _hd234188234754_
                                                     _tl234189234756_
                                                     ___splice243106243107_
                                                     _target234190234759_
                                                     _tl234192234761_))
                                                (___match243145243146_
                                                 _e234187234751_
                                                 _hd234188234754_
                                                 _tl234189234756_
                                                 ___splice243106243107_
                                                 _target234190234759_
                                                 _tl234192234761_))
                                            (___match243145243146_
                                             _e234187234751_
                                             _hd234188234754_
                                             _tl234189234756_
                                             ___splice243106243107_
                                             _target234190234759_
                                             _tl234192234761_))))
                                    (___match243145243146_
                                     _e234187234751_
                                     _hd234188234754_
                                     _tl234189234756_
                                     ___splice243106243107_
                                     _target234190234759_
                                     _tl234192234761_))))
                            (___match243145243146_
                             _e234187234751_
                             _hd234188234754_
                             _tl234189234756_
                             ___splice243106243107_
                             _target234190234759_
                             _tl234192234761_))
                        (___match243145243146_
                         _e234187234751_
                         _hd234188234754_
                         _tl234189234756_
                         ___splice243106243107_
                         _target234190234759_
                         _tl234192234761_))
                    (___match243145243146_
                     _e234187234751_
                     _hd234188234754_
                     _tl234189234756_
                     ___splice243106243107_
                     _target234190234759_
                     _tl234192234761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243145243146_
                                                     _e234187234751_
                                                     _hd234188234754_
                                                     _tl234189234756_
                                                     ___splice243106243107_
                                                     _target234190234759_
                                                     _tl234192234761_))))
                                            (___match243145243146_
                                             _e234187234751_
                                             _hd234188234754_
                                             _tl234189234756_
                                             ___splice243106243107_
                                             _target234190234759_
                                             _tl234192234761_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234193234764_ _target234190234759_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243102243103_))
                  (let ((_e234187234751_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243102243103_))))
                    (let ((_tl234189234756_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234187234751_)))
                          (_hd234188234754_
                           (let ()
                             (declare (not safe))
                             (##car _e234187234751_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd234188234754_))
                          (let ((___splice243106243107_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd234188234754_
                                    '0))))
                            (let ((_tl234192234761_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243106243107_ '1)))
                                  (_target234190234759_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243106243107_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234192234761_))
                                  (___match243133243134_
                                   _e234187234751_
                                   _hd234188234754_
                                   _tl234189234756_
                                   ___splice243106243107_
                                   _target234190234759_
                                   _tl234192234761_)
                                  (___match243145243146_
                                   _e234187234751_
                                   _hd234188234754_
                                   _tl234189234756_
                                   ___splice243106243107_
                                   _target234190234759_
                                   _tl234192234761_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234189234756_))
                              (let ((_e234302234359_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234189234756_))))
                                (let ((_tl234304234364_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234302234359_)))
                                      (_hd234303234362_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234302234359_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234303234362_))
                                      (let ((_e234305234367_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234303234362_))))
                                        (let ((_tl234307234372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234305234367_)))
                                              (_hd234306234370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234305234367_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd234306234370_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd234306234370_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234307234372_))
                                                      (let ((_e234308234375_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234307234372_))))
                (let ((_tl234310234380_
                       (let () (declare (not safe)) (##cdr _e234308234375_)))
                      (_hd234309234378_
                       (let () (declare (not safe)) (##car _e234308234375_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234309234378_))
                      (let ((_e234311234383_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234309234378_))))
                        (let ((_tl234313234388_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234311234383_)))
                              (_hd234312234386_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234311234383_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234312234386_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234312234386_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234313234388_))
                                      (let ((_e234314234391_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234313234388_))))
                                        (let ((_tl234316234396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234314234391_)))
                                              (_hd234315234394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234314234391_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234316234396_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234310234380_))
                                                  (let ((_e234317234399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234310234380_))))
                                                    (let ((_tl234319234404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234317234399_)))
                                                          (_hd234318234402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234317234399_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234318234402_))
                                                          (let ((_e234320234407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234318234402_))))
                    (let ((_tl234322234412_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234320234407_)))
                          (_hd234321234410_
                           (let ()
                             (declare (not safe))
                             (##car _e234320234407_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234321234410_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234321234410_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234322234412_))
                                  (let ((_e234323234415_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234322234412_))))
                                    (let ((_tl234325234420_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234323234415_)))
                                          (_hd234324234418_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234323234415_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234325234420_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234319234404_))
                                              (let ((_e234326234423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234319234404_))))
                                                (let ((_tl234328234428_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234326234423_)))
                                                      (_hd234327234426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234326234423_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234327234426_))
                                                      (let ((_e234329234431_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234327234426_))))
                (let ((_tl234331234436_
                       (let () (declare (not safe)) (##cdr _e234329234431_)))
                      (_hd234330234434_
                       (let () (declare (not safe)) (##car _e234329234431_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd234330234434_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234330234434_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234331234436_))
                              (let ((_e234332234439_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234331234436_))))
                                (let ((_tl234334234444_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234332234439_)))
                                      (_hd234333234442_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234332234439_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234334234444_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234328234428_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234304234364_))
                                              (___match243243243244_
                                               _e234187234751_
                                               _hd234188234754_
                                               _tl234189234756_
                                               _e234302234359_
                                               _hd234303234362_
                                               _tl234304234364_
                                               _e234305234367_
                                               _hd234306234370_
                                               _tl234307234372_
                                               _e234308234375_
                                               _hd234309234378_
                                               _tl234310234380_
                                               _e234311234383_
                                               _hd234312234386_
                                               _tl234313234388_
                                               _e234314234391_
                                               _hd234315234394_
                                               _tl234316234396_
                                               _e234317234399_
                                               _hd234318234402_
                                               _tl234319234404_
                                               _e234320234407_
                                               _hd234321234410_
                                               _tl234322234412_
                                               _e234323234415_
                                               _hd234324234418_
                                               _tl234325234420_
                                               _e234326234423_
                                               _hd234327234426_
                                               _tl234328234428_
                                               _e234329234431_
                                               _hd234330234434_
                                               _tl234331234436_
                                               _e234332234439_
                                               _hd234333234442_
                                               _tl234334234444_)
                                              (___kont243118243119_))
                                          (___kont243118243119_))
                                      (___kont243118243119_))))
                              (___kont243118243119_))
                          (___kont243118243119_))
                      (___kont243118243119_))))
              (___kont243118243119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont243118243119_))
                                          (___kont243118243119_))))
                                  (___kont243118243119_))
                              (___kont243118243119_))
                          (___kont243118243119_))))
                  (___kont243118243119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243118243119_))
                                              (___kont243118243119_))))
                                      (___kont243118243119_))
                                  (___kont243118243119_))
                              (___kont243118243119_))))
                      (___kont243118243119_))))
              (___kont243118243119_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont243118243119_))
                                              (___kont243118243119_))))
                                      (___kont243118243119_))))
                              (___kont243118243119_)))))
                  (___kont243118243119_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form233645_)
        (let* ((___stx243246243247_ _form233645_)
               (_g233649233773_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243246243247_)))))
          (let ((___kont243248243249_
                 (lambda (_L234143_ _L234144_ _L234145_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L234144_))))
                (___kont243254243255_
                 (lambda (_L233991_ _L233992_ _L233993_ _L233994_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233991_))))
                (___kont243258243259_
                 (lambda (_L233858_ _L233859_ _L233860_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233858_)))))
            (let* ((___match243355243356_
                    (lambda (_e233739233778_
                             _hd233740233781_
                             _tl233741233783_
                             _e233742233786_
                             _hd233743233789_
                             _tl233744233791_
                             _e233745233794_
                             _hd233746233797_
                             _tl233747233799_
                             _e233748233802_
                             _hd233749233805_
                             _tl233750233807_
                             _e233751233810_
                             _hd233752233813_
                             _tl233753233815_
                             _e233754233818_
                             _hd233755233821_
                             _tl233756233823_
                             _e233757233826_
                             _hd233758233829_
                             _tl233759233831_
                             _e233760233834_
                             _hd233761233837_
                             _tl233762233839_
                             _e233763233842_
                             _hd233764233845_
                             _tl233765233847_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233759233831_))
                          (let ((_e233766233850_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233759233831_))))
                            (let ((_tl233768233855_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233766233850_)))
                                  (_hd233767233853_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233766233850_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233768233855_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233744233791_))
                                      (___kont243258243259_
                                       _hd233764233845_
                                       _hd233755233821_
                                       _hd233740233781_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233649233773_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g233649233773_)))))
                          (let () (declare (not safe)) (_g233649233773_)))))
                   (___match243285243286_
                    (lambda (_e233700233895_
                             _hd233701233898_
                             _tl233702233900_
                             ___splice243256243257_
                             _target233703233903_
                             _tl233705233905_)
                      (letrec ((_loop233706233908_
                                (lambda (_hd233704233911_ _arg233710233913_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233704233911_))
                                      (let ((_e233707233916_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233704233911_))))
                                        (let ((_lp-tl233709233921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233707233916_)))
                                              (_lp-hd233708233919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233707233916_))))
                                          (let ((__tmp244510
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233708233919_
                                                         _arg233710233913_))))
                                            (declare (not safe))
                                            (_loop233706233908_
                                             _lp-tl233709233921_
                                             __tmp244510))))
                                      (let ((_arg233711233924_
                                             (reverse _arg233710233913_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233702233900_))
                                            (let ((_e233712233927_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233702233900_))))
                                              (let ((_tl233714233932_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233712233927_)))
                                                    (_hd233713233930_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233712233927_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233713233930_))
                                                    (let ((_e233715233935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233713233930_))))
                                                      (let ((_tl233717233940_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233715233935_)))
                    (_hd233716233938_
                     (let () (declare (not safe)) (##car _e233715233935_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233716233938_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233716233938_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233717233940_))
                            (let ((_e233718233943_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233717233940_))))
                              (let ((_tl233720233948_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233718233943_)))
                                    (_hd233719233946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233718233943_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233719233946_))
                                    (let ((_e233721233951_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233719233946_))))
                                      (let ((_tl233723233956_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233721233951_)))
                                            (_hd233722233954_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233721233951_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233722233954_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233722233954_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233723233956_))
                                                    (let ((_e233724233959_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233723233956_))))
                                                      (let ((_tl233726233964_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233724233959_)))
                    (_hd233725233962_
                     (let () (declare (not safe)) (##car _e233724233959_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233726233964_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233720233948_))
                        (let ((_e233727233967_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233720233948_))))
                          (let ((_tl233729233972_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233727233967_)))
                                (_hd233728233970_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233727233967_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233728233970_))
                                (let ((_e233730233975_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233728233970_))))
                                  (let ((_tl233732233980_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233730233975_)))
                                        (_hd233731233978_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233730233975_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233731233978_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233731233978_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233732233980_))
                                                (let ((_e233733233983_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233732233980_))))
                                                  (let ((_tl233735233988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233733233983_)))
                                                        (_hd233734233986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233733233983_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233735233988_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl233714233932_))
                                                            (___kont243254243255_
                                                             _hd233734233986_
                                                             _hd233725233962_
                                                             _tl233705233905_
                                                             _arg233711233924_)
                                                            (___match243355243356_
                                                             _e233700233895_
                                                             _hd233701233898_
                                                             _tl233702233900_
                                                             _e233712233927_
                                                             _hd233713233930_
                                                             _tl233714233932_
                                                             _e233715233935_
                                                             _hd233716233938_
                                                             _tl233717233940_
                                                             _e233718233943_
                                                             _hd233719233946_
                                                             _tl233720233948_
                                                             _e233721233951_
                                                             _hd233722233954_
                                                             _tl233723233956_
                                                             _e233724233959_
                                                             _hd233725233962_
                                                             _tl233726233964_
                                                             _e233727233967_
                                                             _hd233728233970_
                                                             _tl233729233972_
                                                             _e233730233975_
                                                             _hd233731233978_
                                                             _tl233732233980_
                                                             _e233733233983_
                                                             _hd233734233986_
                                                             _tl233735233988_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g233649233773_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g233649233773_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g233649233773_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g233649233773_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233649233773_)))))
                        (let () (declare (not safe)) (_g233649233773_)))
                    (let () (declare (not safe)) (_g233649233773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g233649233773_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g233649233773_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g233649233773_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g233649233773_)))))
                            (let () (declare (not safe)) (_g233649233773_)))
                        (let () (declare (not safe)) (_g233649233773_)))
                    (let () (declare (not safe)) (_g233649233773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g233649233773_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g233649233773_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop233706233908_ _target233703233903_ '())))))
                   (___match243273243274_
                    (lambda (_e233654234031_
                             _hd233655234034_
                             _tl233656234036_
                             ___splice243250243251_
                             _target233657234039_
                             _tl233659234041_)
                      (letrec ((_loop233660234044_
                                (lambda (_hd233658234047_ _arg233664234049_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233658234047_))
                                      (let ((_e233661234052_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233658234047_))))
                                        (let ((_lp-tl233663234057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233661234052_)))
                                              (_lp-hd233662234055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233661234052_))))
                                          (let ((__tmp244511
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233662234055_
                                                         _arg233664234049_))))
                                            (declare (not safe))
                                            (_loop233660234044_
                                             _lp-tl233663234057_
                                             __tmp244511))))
                                      (let ((_arg233665234060_
                                             (reverse _arg233664234049_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233656234036_))
                                            (let ((_e233666234063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233656234036_))))
                                              (let ((_tl233668234068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233666234063_)))
                                                    (_hd233667234066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233666234063_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233667234066_))
                                                    (let ((_e233669234071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233667234066_))))
                                                      (let ((_tl233671234076_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233669234071_)))
                    (_hd233670234074_
                     (let () (declare (not safe)) (##car _e233669234071_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233670234074_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233670234074_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233671234076_))
                            (let ((_e233672234079_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233671234076_))))
                              (let ((_tl233674234084_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233672234079_)))
                                    (_hd233673234082_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233672234079_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233673234082_))
                                    (let ((_e233675234087_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233673234082_))))
                                      (let ((_tl233677234092_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233675234087_)))
                                            (_hd233676234090_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233675234087_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233676234090_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233676234090_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233677234092_))
                                                    (let ((_e233678234095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233677234092_))))
                                                      (let ((_tl233680234100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233678234095_)))
                    (_hd233679234098_
                     (let () (declare (not safe)) (##car _e233678234095_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233680234100_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl233674234084_))
                        (let ((___splice243252243253_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233674234084_
                                  '0))))
                          (let ((_tl233683234105_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243252243253_ '1)))
                                (_target233681234103_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice243252243253_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233683234105_))
                                (letrec ((_loop233684234108_
                                          (lambda (_hd233682234111_
                                                   _xarg233688234113_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233682234111_))
                                                (let ((_e233685234116_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233682234111_))))
                                                  (let ((_lp-tl233687234121_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233685234116_)))
                                                        (_lp-hd233686234119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233685234116_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd233686234119_))
                                                        (let ((_e233690234124_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd233686234119_))))
                  (let ((_tl233692234129_
                         (let () (declare (not safe)) (##cdr _e233690234124_)))
                        (_hd233691234127_
                         (let ()
                           (declare (not safe))
                           (##car _e233690234124_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233691234127_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233691234127_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233692234129_))
                                (let ((_e233693234132_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233692234129_))))
                                  (let ((_tl233695234137_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233693234132_)))
                                        (_hd233694234135_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233693234132_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233695234137_))
                                        (let ((__tmp244512
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd233694234135_
                                                       _xarg233688234113_))))
                                          (declare (not safe))
                                          (_loop233684234108_
                                           _lp-tl233687234121_
                                           __tmp244512))
                                        (___match243285243286_
                                         _e233654234031_
                                         _hd233655234034_
                                         _tl233656234036_
                                         ___splice243250243251_
                                         _target233657234039_
                                         _tl233659234041_))))
                                (___match243285243286_
                                 _e233654234031_
                                 _hd233655234034_
                                 _tl233656234036_
                                 ___splice243250243251_
                                 _target233657234039_
                                 _tl233659234041_))
                            (___match243285243286_
                             _e233654234031_
                             _hd233655234034_
                             _tl233656234036_
                             ___splice243250243251_
                             _target233657234039_
                             _tl233659234041_))
                        (___match243285243286_
                         _e233654234031_
                         _hd233655234034_
                         _tl233656234036_
                         ___splice243250243251_
                         _target233657234039_
                         _tl233659234041_))))
                (___match243285243286_
                 _e233654234031_
                 _hd233655234034_
                 _tl233656234036_
                 ___splice243250243251_
                 _target233657234039_
                 _tl233659234041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg233689234140_
                                                       (reverse _xarg233688234113_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233668234068_))
                                                      (___kont243248243249_
                                                       _xarg233689234140_
                                                       _hd233679234098_
                                                       _arg233665234060_)
                                                      (___match243285243286_
                                                       _e233654234031_
                                                       _hd233655234034_
                                                       _tl233656234036_
                                                       ___splice243250243251_
                                                       _target233657234039_
                                                       _tl233659234041_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop233684234108_
                                     _target233681234103_
                                     '())))
                                (___match243285243286_
                                 _e233654234031_
                                 _hd233655234034_
                                 _tl233656234036_
                                 ___splice243250243251_
                                 _target233657234039_
                                 _tl233659234041_))))
                        (___match243285243286_
                         _e233654234031_
                         _hd233655234034_
                         _tl233656234036_
                         ___splice243250243251_
                         _target233657234039_
                         _tl233659234041_))
                    (___match243285243286_
                     _e233654234031_
                     _hd233655234034_
                     _tl233656234036_
                     ___splice243250243251_
                     _target233657234039_
                     _tl233659234041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243285243286_
                                                     _e233654234031_
                                                     _hd233655234034_
                                                     _tl233656234036_
                                                     ___splice243250243251_
                                                     _target233657234039_
                                                     _tl233659234041_))
                                                (___match243285243286_
                                                 _e233654234031_
                                                 _hd233655234034_
                                                 _tl233656234036_
                                                 ___splice243250243251_
                                                 _target233657234039_
                                                 _tl233659234041_))
                                            (___match243285243286_
                                             _e233654234031_
                                             _hd233655234034_
                                             _tl233656234036_
                                             ___splice243250243251_
                                             _target233657234039_
                                             _tl233659234041_))))
                                    (___match243285243286_
                                     _e233654234031_
                                     _hd233655234034_
                                     _tl233656234036_
                                     ___splice243250243251_
                                     _target233657234039_
                                     _tl233659234041_))))
                            (___match243285243286_
                             _e233654234031_
                             _hd233655234034_
                             _tl233656234036_
                             ___splice243250243251_
                             _target233657234039_
                             _tl233659234041_))
                        (___match243285243286_
                         _e233654234031_
                         _hd233655234034_
                         _tl233656234036_
                         ___splice243250243251_
                         _target233657234039_
                         _tl233659234041_))
                    (___match243285243286_
                     _e233654234031_
                     _hd233655234034_
                     _tl233656234036_
                     ___splice243250243251_
                     _target233657234039_
                     _tl233659234041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243285243286_
                                                     _e233654234031_
                                                     _hd233655234034_
                                                     _tl233656234036_
                                                     ___splice243250243251_
                                                     _target233657234039_
                                                     _tl233659234041_))))
                                            (___match243285243286_
                                             _e233654234031_
                                             _hd233655234034_
                                             _tl233656234036_
                                             ___splice243250243251_
                                             _target233657234039_
                                             _tl233659234041_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233660234044_ _target233657234039_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx243246243247_))
                  (let ((_e233654234031_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx243246243247_))))
                    (let ((_tl233656234036_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233654234031_)))
                          (_hd233655234034_
                           (let ()
                             (declare (not safe))
                             (##car _e233654234031_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd233655234034_))
                          (let ((___splice243250243251_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd233655234034_
                                    '0))))
                            (let ((_tl233659234041_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice243250243251_ '1)))
                                  (_target233657234039_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice243250243251_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233659234041_))
                                  (___match243273243274_
                                   _e233654234031_
                                   _hd233655234034_
                                   _tl233656234036_
                                   ___splice243250243251_
                                   _target233657234039_
                                   _tl233659234041_)
                                  (___match243285243286_
                                   _e233654234031_
                                   _hd233655234034_
                                   _tl233656234036_
                                   ___splice243250243251_
                                   _target233657234039_
                                   _tl233659234041_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233656234036_))
                              (let ((_e233742233786_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233656234036_))))
                                (let ((_tl233744233791_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233742233786_)))
                                      (_hd233743233789_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233742233786_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233743233789_))
                                      (let ((_e233745233794_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233743233789_))))
                                        (let ((_tl233747233799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233745233794_)))
                                              (_hd233746233797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233745233794_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd233746233797_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd233746233797_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233747233799_))
                                                      (let ((_e233748233802_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233747233799_))))
                (let ((_tl233750233807_
                       (let () (declare (not safe)) (##cdr _e233748233802_)))
                      (_hd233749233805_
                       (let () (declare (not safe)) (##car _e233748233802_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233749233805_))
                      (let ((_e233751233810_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233749233805_))))
                        (let ((_tl233753233815_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233751233810_)))
                              (_hd233752233813_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233751233810_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233752233813_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233752233813_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233753233815_))
                                      (let ((_e233754233818_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233753233815_))))
                                        (let ((_tl233756233823_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233754233818_)))
                                              (_hd233755233821_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233754233818_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233756233823_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233750233807_))
                                                  (let ((_e233757233826_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233750233807_))))
                                                    (let ((_tl233759233831_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233757233826_)))
                                                          (_hd233758233829_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233757233826_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233758233829_))
                                                          (let ((_e233760233834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233758233829_))))
                    (let ((_tl233762233839_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233760233834_)))
                          (_hd233761233837_
                           (let ()
                             (declare (not safe))
                             (##car _e233760233834_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233761233837_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233761233837_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233762233839_))
                                  (let ((_e233763233842_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233762233839_))))
                                    (let ((_tl233765233847_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233763233842_)))
                                          (_hd233764233845_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233763233842_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233765233847_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233759233831_))
                                              (let ((_e233766233850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233759233831_))))
                                                (let ((_tl233768233855_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233766233850_)))
                                                      (_hd233767233853_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233766233850_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233768233855_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233744233791_))
                                                          (___kont243258243259_
                                                           _hd233764233845_
                                                           _hd233755233821_
                                                           _hd233655234034_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233649233773_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233649233773_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233649233773_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g233649233773_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233649233773_)))
                              (let () (declare (not safe)) (_g233649233773_)))
                          (let () (declare (not safe)) (_g233649233773_)))))
                  (let () (declare (not safe)) (_g233649233773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233649233773_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g233649233773_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233649233773_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g233649233773_)))
                              (let ()
                                (declare (not safe))
                                (_g233649233773_)))))
                      (let () (declare (not safe)) (_g233649233773_)))))
              (let () (declare (not safe)) (_g233649233773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233649233773_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g233649233773_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233649233773_)))))
                              (let ()
                                (declare (not safe))
                                (_g233649233773_))))))
                  (let () (declare (not safe)) (_g233649233773_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form233449_)
        (let* ((_g233451233465_
                (lambda (_g233452233462_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233452233462_))))
               (_g233450233642_
                (lambda (_g233452233468_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233452233468_))
                      (let ((_e233455233470_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233452233468_))))
                        (let ((_hd233456233473_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233455233470_)))
                              (_tl233457233475_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233455233470_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233457233475_))
                              (let ((_e233458233478_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233457233475_))))
                                (let ((_hd233459233481_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233458233478_)))
                                      (_tl233460233483_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233458233478_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233460233483_))
                                      ((lambda (_L233486_ _L233487_)
                                         (let* ((___stx243368243369_ _L233487_)
                                                (_g233502233530_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx243368243369_)))))
                                           (let ((___kont243370243371_
                                                  (lambda (_L233621_)
                                                    (length (let ((__tmp244513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g233631233634_ _g233632233636_)
                             (let ()
                               (declare (not safe))
                               (cons _g233631233634_ _g233632233636_)))))
                      (declare (not safe))
                      (foldr1 __tmp244513 '() _L233621_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont243374243375_
                                                  (lambda (_L233572_ _L233573_)
                                                    (let ((__tmp244514
                                                           (length (let ((__tmp244515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g233584233587_ _g233585233589_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g233584233587_
                                            _g233585233589_)))))
                             (declare (not safe))
                             (foldr1 __tmp244515 '() _L233573_)))))
              (declare (not safe))
              (cons __tmp244514 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont243378243379_
                                                  (lambda (_L233535_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match243393243394_
                                                     (lambda (___splice243376243377_
                                                              _target233516233548_
                                                              _tl233518233550_)
                                                       (letrec ((_loop233519233553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd233517233556_ _arg233523233558_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd233517233556_))
                               (let ((_e233520233561_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd233517233556_))))
                                 (let ((_lp-tl233522233566_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e233520233561_)))
                                       (_lp-hd233521233564_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e233520233561_))))
                                   (let ((__tmp244516
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd233521233564_
                                                  _arg233523233558_))))
                                     (declare (not safe))
                                     (_loop233519233553_
                                      _lp-tl233522233566_
                                      __tmp244516))))
                               (let ((_arg233524233569_
                                      (reverse _arg233523233558_)))
                                 (___kont243374243375_
                                  _tl233518233550_
                                  _arg233524233569_))))))
                 (let ()
                   (declare (not safe))
                   (_loop233519233553_ _target233516233548_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match243387243388_
                                                     (lambda (___splice243372243373_
                                                              _target233505233597_
                                                              _tl233507233599_)
                                                       (letrec ((_loop233508233602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd233506233605_ _arg233512233607_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd233506233605_))
                               (let ((_e233509233610_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd233506233605_))))
                                 (let ((_lp-tl233511233615_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e233509233610_)))
                                       (_lp-hd233510233613_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e233509233610_))))
                                   (let ((__tmp244517
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd233510233613_
                                                  _arg233512233607_))))
                                     (declare (not safe))
                                     (_loop233508233602_
                                      _lp-tl233511233615_
                                      __tmp244517))))
                               (let ((_arg233513233618_
                                      (reverse _arg233512233607_)))
                                 (___kont243370243371_ _arg233513233618_))))))
                 (let ()
                   (declare (not safe))
                   (_loop233508233602_ _target233505233597_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx243368243369_))
                                                   (let ((___splice243372243373_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx243368243369_
                                                             '0))))
                                                     (let ((_tl233507233599_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice243372243373_
                                                               '1)))
                                                           (_target233505233597_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice243372243373_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl233507233599_))
                                                           (___match243387243388_
                                                            ___splice243372243373_
                                                            _target233505233597_
                                                            _tl233507233599_)
                                                           (___match243393243394_
                                                            ___splice243372243373_
                                                            _target233505233597_
                                                            _tl233507233599_))))
                                                   (___kont243378243379_
                                                    ___stx243368243369_))))))
                                       _hd233459233481_
                                       _hd233456233473_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233451233465_ _g233452233468_)))))
                              (let ()
                                (declare (not safe))
                                (_g233451233465_ _g233452233468_)))))
                      (let ()
                        (declare (not safe))
                        (_g233451233465_ _g233452233468_))))))
          (declare (not safe))
          (_g233450233642_ _form233449_))))
    (define gxc#lambda-expr?
      (lambda (_expr233402_)
        (let* ((___stx243396243397_ _expr233402_)
               (_g233405233415_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243396243397_)))))
          (let ((___kont243398243399_ (lambda (_L233435_) '#t))
                (___kont243400243401_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243396243397_))
                (let ((_e233408233427_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243396243397_))))
                  (let ((_tl233410233432_
                         (let () (declare (not safe)) (##cdr _e233408233427_)))
                        (_hd233409233430_
                         (let ()
                           (declare (not safe))
                           (##car _e233408233427_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233409233430_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd233409233430_))
                            (___kont243398243399_ _tl233410233432_)
                            (___kont243400243401_))
                        (___kont243400243401_))))
                (___kont243400243401_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr233355_)
        (let* ((___stx243414243415_ _expr233355_)
               (_g233358233368_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243414243415_)))))
          (let ((___kont243416243417_ (lambda (_L233388_) '#t))
                (___kont243418243419_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243414243415_))
                (let ((_e233361233380_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243414243415_))))
                  (let ((_tl233363233385_
                         (let () (declare (not safe)) (##cdr _e233361233380_)))
                        (_hd233362233383_
                         (let ()
                           (declare (not safe))
                           (##car _e233361233380_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233362233383_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd233362233383_))
                            (___kont243416243417_ _tl233363233385_)
                            (___kont243418243419_))
                        (___kont243418243419_))))
                (___kont243418243419_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr233224_)
        (let* ((___stx243432243433_ _expr233224_)
               (_g233227233257_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243432243433_)))))
          (let ((___kont243434243435_
                 (lambda (_L233325_ _L233326_ _L233327_)
                   (if (let () (declare (not safe)) (gx#identifier? _L233327_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L233326_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L233325_))
                           '#f)
                       '#f)))
                (___kont243436243437_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243432243433_))
                (let ((_e233232233269_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243432243433_))))
                  (let ((_tl233234233274_
                         (let () (declare (not safe)) (##cdr _e233232233269_)))
                        (_hd233233233272_
                         (let ()
                           (declare (not safe))
                           (##car _e233232233269_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233233233272_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd233233233272_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233234233274_))
                                (let ((_e233235233277_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233234233274_))))
                                  (let ((_tl233237233282_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233235233277_)))
                                        (_hd233236233280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233235233277_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233236233280_))
                                        (let ((_e233238233285_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233236233280_))))
                                          (let ((_tl233240233290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233238233285_)))
                                                (_hd233239233288_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233238233285_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233239233288_))
                                                (let ((_e233241233293_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233239233288_))))
                                                  (let ((_tl233243233298_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233241233293_)))
                                                        (_hd233242233296_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233241233293_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd233242233296_))
                                                        (let ((_e233244233301_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd233242233296_))))
                  (let ((_tl233246233306_
                         (let () (declare (not safe)) (##cdr _e233244233301_)))
                        (_hd233245233304_
                         (let ()
                           (declare (not safe))
                           (##car _e233244233301_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233246233306_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233243233298_))
                            (let ((_e233247233309_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233243233298_))))
                              (let ((_tl233249233314_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233247233309_)))
                                    (_hd233248233312_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233247233309_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233249233314_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233240233290_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233237233282_))
                                            (let ((_e233250233317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233237233282_))))
                                              (let ((_tl233252233322_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233250233317_)))
                                                    (_hd233251233320_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233250233317_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl233252233322_))
                                                    (___kont243434243435_
                                                     _hd233251233320_
                                                     _hd233248233312_
                                                     _hd233245233304_)
                                                    (___kont243436243437_))))
                                            (___kont243436243437_))
                                        (___kont243436243437_))
                                    (___kont243436243437_))))
                            (___kont243436243437_))
                        (___kont243436243437_))))
                (___kont243436243437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243436243437_))))
                                        (___kont243436243437_))))
                                (___kont243436243437_))
                            (___kont243436243437_))
                        (___kont243436243437_))))
                (___kont243436243437_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr232549_)
        (let* ((___stx243494243495_ _expr232549_)
               (_g232552232710_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243494243495_)))))
          (let ((___kont243496243497_
                 (lambda (_L233098_
                          _L233099_
                          _L233100_
                          _L233101_
                          _L233102_
                          _L233103_
                          _L233104_
                          _L233105_
                          _L233106_
                          _L233107_
                          _L233108_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L233105_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L233101_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L233100_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L233108_
                                      _L233099_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L233107_
                                          _L233104_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233102_
                                              _L233098_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L233106_
                                              _L233103_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont243498243499_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243494243495_))
                (let ((_e232565232722_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243494243495_))))
                  (let ((_tl232567232727_
                         (let () (declare (not safe)) (##cdr _e232565232722_)))
                        (_hd232566232725_
                         (let ()
                           (declare (not safe))
                           (##car _e232565232722_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232566232725_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd232566232725_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232567232727_))
                                (let ((_e232568232730_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232567232727_))))
                                  (let ((_tl232570232735_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232568232730_)))
                                        (_hd232569232733_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232568232730_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd232569232733_))
                                        (let ((_e232571232738_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd232569232733_))))
                                          (let ((_tl232573232743_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232571232738_)))
                                                (_hd232572232741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232571232738_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232572232741_))
                                                (let ((_e232574232746_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232572232741_))))
                                                  (let ((_tl232576232751_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232574232746_)))
                                                        (_hd232575232749_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232574232746_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232575232749_))
                                                        (let ((_e232577232754_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232575232749_))))
                  (let ((_tl232579232759_
                         (let () (declare (not safe)) (##cdr _e232577232754_)))
                        (_hd232578232757_
                         (let ()
                           (declare (not safe))
                           (##car _e232577232754_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl232579232759_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232576232751_))
                            (let ((_e232580232762_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232576232751_))))
                              (let ((_tl232582232767_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232580232762_)))
                                    (_hd232581232765_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232580232762_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232581232765_))
                                    (let ((_e232583232770_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232581232765_))))
                                      (let ((_tl232585232775_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232583232770_)))
                                            (_hd232584232773_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232583232770_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232584232773_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd232584232773_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232585232775_))
                                                    (let ((_e232586232778_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232585232775_))))
                                                      (let ((_tl232588232783_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232586232778_)))
                    (_hd232587232781_
                     (let () (declare (not safe)) (##car _e232586232778_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd232587232781_))
                    (let ((_e232589232786_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd232587232781_))))
                      (let ((_tl232591232791_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232589232786_)))
                            (_hd232590232789_
                             (let ()
                               (declare (not safe))
                               (##car _e232589232786_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd232590232789_))
                            (let ((_e232592232794_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd232590232789_))))
                              (let ((_tl232594232799_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232592232794_)))
                                    (_hd232593232797_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232592232794_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232593232797_))
                                    (let ((_e232595232802_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232593232797_))))
                                      (let ((_tl232597232807_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232595232802_)))
                                            (_hd232596232805_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232595232802_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232597232807_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232594232799_))
                                                (let ((_e232598232810_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232594232799_))))
                                                  (let ((_tl232600232815_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232598232810_)))
                                                        (_hd232599232813_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232598232810_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232600232815_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl232591232791_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl232588232783_))
                        (let ((_e232601232818_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232588232783_))))
                          (let ((_tl232603232823_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232601232818_)))
                                (_hd232602232821_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232601232818_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232602232821_))
                                (let ((_e232604232826_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232602232821_))))
                                  (let ((_tl232606232831_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232604232826_)))
                                        (_hd232605232829_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232604232826_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232605232829_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd232605232829_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232606232831_))
                                                (let ((_e232607232834_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232606232831_))))
                                                  (let ((_tl232609232839_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232607232834_)))
                                                        (_hd232608232837_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232607232834_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232608232837_))
                                                        (let ((_e232610232842_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232608232837_))))
                  (let ((_tl232612232847_
                         (let () (declare (not safe)) (##cdr _e232610232842_)))
                        (_hd232611232845_
                         (let ()
                           (declare (not safe))
                           (##car _e232610232842_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232609232839_))
                        (let ((_e232613232850_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232609232839_))))
                          (let ((_tl232615232855_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232613232850_)))
                                (_hd232614232853_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232613232850_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232614232853_))
                                (let ((_e232616232858_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232614232853_))))
                                  (let ((_tl232618232863_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232616232858_)))
                                        (_hd232617232861_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232616232858_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232617232861_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd232617232861_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232618232863_))
                                                (let ((_e232619232866_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232618232863_))))
                                                  (let ((_tl232621232871_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232619232866_)))
                                                        (_hd232620232869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232619232866_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232620232869_))
                                                        (let ((_e232622232874_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232620232869_))))
                  (let ((_tl232624232879_
                         (let () (declare (not safe)) (##cdr _e232622232874_)))
                        (_hd232623232877_
                         (let ()
                           (declare (not safe))
                           (##car _e232622232874_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232623232877_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd232623232877_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232624232879_))
                                (let ((_e232625232882_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232624232879_))))
                                  (let ((_tl232627232887_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232625232882_)))
                                        (_hd232626232885_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232625232882_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232627232887_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232621232871_))
                                            (let ((_e232628232890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232621232871_))))
                                              (let ((_tl232630232895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232628232890_)))
                                                    (_hd232629232893_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232628232890_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232629232893_))
                                                    (let ((_e232631232898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232629232893_))))
                                                      (let ((_tl232633232903_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232631232898_)))
                    (_hd232632232901_
                     (let () (declare (not safe)) (##car _e232631232898_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232632232901_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd232632232901_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232633232903_))
                            (let ((_e232634232906_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232633232903_))))
                              (let ((_tl232636232911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232634232906_)))
                                    (_hd232635232909_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232634232906_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232636232911_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl232630232895_))
                                        (let ((_e232637232914_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl232630232895_))))
                                          (let ((_tl232639232919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232637232914_)))
                                                (_hd232638232917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232637232914_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232638232917_))
                                                (let ((_e232640232922_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232638232917_))))
                                                  (let ((_tl232642232927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232640232922_)))
                                                        (_hd232641232925_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232640232922_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd232641232925_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd232641232925_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl232642232927_))
                        (let ((_e232643232930_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232642232927_))))
                          (let ((_tl232645232935_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232643232930_)))
                                (_hd232644232933_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232643232930_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl232645232935_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232615232855_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232603232823_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232582232767_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232573232743_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232570232735_))
                                                    (let ((_e232646232938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232570232735_))))
                                                      (let ((_tl232648232943_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232646232938_)))
                    (_hd232647232941_
                     (let () (declare (not safe)) (##car _e232646232938_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd232647232941_))
                    (let ((_e232649232946_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd232647232941_))))
                      (let ((_tl232651232951_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232649232946_)))
                            (_hd232650232949_
                             (let ()
                               (declare (not safe))
                               (##car _e232649232946_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd232650232949_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd232650232949_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl232651232951_))
                                    (let ((_e232652232954_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl232651232951_))))
                                      (let ((_tl232654232959_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232652232954_)))
                                            (_hd232653232957_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232652232954_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232654232959_))
                                            (let ((_e232655232962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232654232959_))))
                                              (let ((_tl232657232967_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232655232962_)))
                                                    (_hd232656232965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232655232962_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232656232965_))
                                                    (let ((_e232658232970_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232656232965_))))
                                                      (let ((_tl232660232975_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232658232970_)))
                    (_hd232659232973_
                     (let () (declare (not safe)) (##car _e232658232970_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232659232973_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232659232973_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232660232975_))
                            (let ((_e232661232978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232660232975_))))
                              (let ((_tl232663232983_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232661232978_)))
                                    (_hd232662232981_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232661232978_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232662232981_))
                                    (let ((_e232664232986_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232662232981_))))
                                      (let ((_tl232666232991_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232664232986_)))
                                            (_hd232665232989_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232664232986_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232665232989_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232665232989_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232666232991_))
                                                    (let ((_e232667232994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232666232991_))))
                                                      (let ((_tl232669232999_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232667232994_)))
                    (_hd232668232997_
                     (let () (declare (not safe)) (##car _e232667232994_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232669232999_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232663232983_))
                        (let ((_e232670233002_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232663232983_))))
                          (let ((_tl232672233007_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232670233002_)))
                                (_hd232671233005_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232670233002_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232671233005_))
                                (let ((_e232673233010_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232671233005_))))
                                  (let ((_tl232675233015_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232673233010_)))
                                        (_hd232674233013_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232673233010_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232674233013_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd232674233013_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232675233015_))
                                                (let ((_e232676233018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232675233015_))))
                                                  (let ((_tl232678233023_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232676233018_)))
                                                        (_hd232677233021_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232676233018_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232678233023_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl232672233007_))
                                                            (let ((_e232679233026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl232672233007_))))
                      (let ((_tl232681233031_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232679233026_)))
                            (_hd232680233029_
                             (let ()
                               (declare (not safe))
                               (##car _e232679233026_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd232680233029_))
                            (let ((_e232682233034_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd232680233029_))))
                              (let ((_tl232684233039_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232682233034_)))
                                    (_hd232683233037_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232682233034_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd232683233037_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd232683233037_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232684233039_))
                                            (let ((_e232685233042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232684233039_))))
                                              (let ((_tl232687233047_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232685233042_)))
                                                    (_hd232686233045_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232685233042_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl232687233047_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl232681233031_))
                                                        (let ((_e232688233050_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl232681233031_))))
                  (let ((_tl232690233055_
                         (let () (declare (not safe)) (##cdr _e232688233050_)))
                        (_hd232689233053_
                         (let ()
                           (declare (not safe))
                           (##car _e232688233050_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd232689233053_))
                        (let ((_e232691233058_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd232689233053_))))
                          (let ((_tl232693233063_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232691233058_)))
                                (_hd232692233061_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232691233058_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd232692233061_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd232692233061_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl232693233063_))
                                        (let ((_e232694233066_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl232693233063_))))
                                          (let ((_tl232696233071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232694233066_)))
                                                (_hd232695233069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232694233066_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232696233071_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232690233055_))
                                                    (let ((_e232697233074_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232690233055_))))
                                                      (let ((_tl232699233079_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232697233074_)))
                    (_hd232698233077_
                     (let () (declare (not safe)) (##car _e232697233074_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd232698233077_))
                    (let ((_e232700233082_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd232698233077_))))
                      (let ((_tl232702233087_
                             (let ()
                               (declare (not safe))
                               (##cdr _e232700233082_)))
                            (_hd232701233085_
                             (let ()
                               (declare (not safe))
                               (##car _e232700233082_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd232701233085_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd232701233085_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl232702233087_))
                                    (let ((_e232703233090_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl232702233087_))))
                                      (let ((_tl232705233095_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232703233090_)))
                                            (_hd232704233093_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232703233090_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232705233095_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl232699233079_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl232657232967_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232648232943_))
                                                        (___kont243496243497_
                                                         _hd232704233093_
                                                         _hd232695233069_
                                                         _hd232677233021_
                                                         _hd232668232997_
                                                         _hd232653232957_
                                                         _hd232644232933_
                                                         _hd232635232909_
                                                         _hd232626232885_
                                                         _hd232611232845_
                                                         _hd232596232805_
                                                         _hd232578232757_)
                                                        (___kont243498243499_))
                                                    (___kont243498243499_))
                                                (___kont243498243499_))
                                            (___kont243498243499_))))
                                    (___kont243498243499_))
                                (___kont243498243499_))
                            (___kont243498243499_))))
                    (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243498243499_))
                                                (___kont243498243499_))))
                                        (___kont243498243499_))
                                    (___kont243498243499_))
                                (___kont243498243499_))))
                        (___kont243498243499_))))
                (___kont243498243499_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243498243499_))))
                                            (___kont243498243499_))
                                        (___kont243498243499_))
                                    (___kont243498243499_))))
                            (___kont243498243499_))))
                    (___kont243498243499_))
                (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243498243499_))
                                            (___kont243498243499_))
                                        (___kont243498243499_))))
                                (___kont243498243499_))))
                        (___kont243498243499_))
                    (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243498243499_))
                                                (___kont243498243499_))
                                            (___kont243498243499_))))
                                    (___kont243498243499_))))
                            (___kont243498243499_))
                        (___kont243498243499_))
                    (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243498243499_))))
                                            (___kont243498243499_))))
                                    (___kont243498243499_))
                                (___kont243498243499_))
                            (___kont243498243499_))))
                    (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243498243499_))
                                                (___kont243498243499_))
                                            (___kont243498243499_))
                                        (___kont243498243499_))
                                    (___kont243498243499_))
                                (___kont243498243499_))))
                        (___kont243498243499_))
                    (___kont243498243499_))
                (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243498243499_))))
                                        (___kont243498243499_))
                                    (___kont243498243499_))))
                            (___kont243498243499_))
                        (___kont243498243499_))
                    (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243498243499_))))
                                            (___kont243498243499_))
                                        (___kont243498243499_))))
                                (___kont243498243499_))
                            (___kont243498243499_))
                        (___kont243498243499_))))
                (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243498243499_))
                                            (___kont243498243499_))
                                        (___kont243498243499_))))
                                (___kont243498243499_))))
                        (___kont243498243499_))))
                (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243498243499_))
                                            (___kont243498243499_))
                                        (___kont243498243499_))))
                                (___kont243498243499_))))
                        (___kont243498243499_))
                    (___kont243498243499_))
                (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243498243499_))
                                            (___kont243498243499_))))
                                    (___kont243498243499_))))
                            (___kont243498243499_))))
                    (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243498243499_))
                                                (___kont243498243499_))
                                            (___kont243498243499_))))
                                    (___kont243498243499_))))
                            (___kont243498243499_))
                        (___kont243498243499_))))
                (___kont243498243499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont243498243499_))))
                                        (___kont243498243499_))))
                                (___kont243498243499_))
                            (___kont243498243499_))
                        (___kont243498243499_))))
                (___kont243498243499_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx232291_ _id232292_ _clauses232293_ _gensym?232294_)
        (let _lp232296_ ((_rest232298_ _clauses232293_)
                         (_ids232299_ '())
                         (_impls232300_ '())
                         (_clauses232301_ '()))
          (let* ((_rest232302232310_ _rest232298_)
                 (_else232304232318_
                  (lambda ()
                    (values (reverse _ids232299_)
                            (reverse _impls232300_)
                            (reverse _clauses232301_))))
                 (_K232306232523_
                  (lambda (_rest232321_ _clause232322_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause232322_))
                        (let ((__tmp244518
                               (let ()
                                 (declare (not safe))
                                 (cons _clause232322_ _clauses232301_))))
                          (declare (not safe))
                          (_lp232296_
                           _rest232321_
                           _ids232299_
                           _impls232300_
                           __tmp244518))
                        (let* ((_g232324232335_
                                (lambda (_g232325232332_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g232325232332_))))
                               (_g232323232520_
                                (lambda (_g232325232338_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g232325232338_))
                                      (let ((_e232328232340_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g232325232338_))))
                                        (let ((_hd232329232343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232328232340_)))
                                              (_tl232330232345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232328232340_))))
                                          ((lambda (_L232348_ _L232349_)
                                             (let* ((_id232366_
                                                     (let ((__tmp244521
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id232292_)))
                                                           (__tmp244520
                                                            (length _clauses232301_))
                                                           (__tmp244519
                                                            (if _gensym?232294_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp244521
                                                        '"__"
                                                        __tmp244520
                                                        __tmp244519)))
                                                    (_id232368_
                                                     (let ((__tmp244522
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx232291_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id232366_
                                                        __tmp244522)))
                                                    (_impl232370_
                                                     (let ((__tmp244523
                                                            (let ((__tmp244525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp244524
                           (let ()
                             (declare (not safe))
                             (cons _L232349_ _L232348_))))
                      (declare (not safe))
                      (cons __tmp244525 __tmp244524))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp244523 _stx232291_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause232517_
                                                     (let* ((___stx243878243879_
                                                             _L232349_)
                                                            (_g232374232402_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx243878243879_)))))
               (let ((___kont243880243881_
                      (lambda (_L232496_)
                        (let ((__tmp244526
                               (let ((__tmp244527
                                      (let ((__tmp244528
                                             (let ((__tmp244529
                                                    (let ((__tmp244535
                                                           (let ((__tmp244536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id232368_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp244536)))
                  (__tmp244530
                   (let ((__tmp244531
                          (lambda (_g232506232509_ _g232507232511_)
                            (let ((__tmp244532
                                   (let ((__tmp244534
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp244533
                                          (let ()
                                            (declare (not safe))
                                            (cons _g232506232509_ '()))))
                                     (declare (not safe))
                                     (cons __tmp244534 __tmp244533))))
                              (declare (not safe))
                              (cons __tmp244532 _g232507232511_)))))
                     (declare (not safe))
                     (foldr1 __tmp244531 '() _L232496_))))
              (declare (not safe))
              (cons __tmp244535 __tmp244530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp244529))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp244528
                                         _stx232291_))))
                                 (declare (not safe))
                                 (cons __tmp244527 '()))))
                          (declare (not safe))
                          (cons _L232349_ __tmp244526))))
                     (___kont243884243885_
                      (lambda (_L232447_ _L232448_)
                        (let ((__tmp244537
                               (let ((__tmp244538
                                      (let ((__tmp244539
                                             (let ((__tmp244540
                                                    (let ((__tmp244554
                                                           (let ((__tmp244555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp244555)))
                  (__tmp244541
                   (let ((__tmp244552
                          (let ((__tmp244553
                                 (let ()
                                   (declare (not safe))
                                   (cons _id232368_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp244553)))
                         (__tmp244542
                          (let ((__tmp244548
                                 (let ((__tmp244549
                                        (let ((__tmp244551
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp244550
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L232447_ '()))))
                                          (declare (not safe))
                                          (cons __tmp244551 __tmp244550))))
                                   (declare (not safe))
                                   (cons __tmp244549 '())))
                                (__tmp244543
                                 (let ((__tmp244544
                                        (lambda (_g232459232462_
                                                 _g232460232464_)
                                          (let ((__tmp244545
                                                 (let ((__tmp244547
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp244546
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g232459232462_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp244547
                                                         __tmp244546))))
                                            (declare (not safe))
                                            (cons __tmp244545
                                                  _g232460232464_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp244544 '() _L232448_))))
                            (declare (not safe))
                            (foldr1 cons __tmp244548 __tmp244543))))
                     (declare (not safe))
                     (cons __tmp244552 __tmp244542))))
              (declare (not safe))
              (cons __tmp244554 __tmp244541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp244540))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp244539
                                         _stx232291_))))
                                 (declare (not safe))
                                 (cons __tmp244538 '()))))
                          (declare (not safe))
                          (cons _L232349_ __tmp244537))))
                     (___kont243888243889_
                      (lambda (_L232407_)
                        (let ((__tmp244556
                               (let ((__tmp244557
                                      (let ((__tmp244558
                                             (let ((__tmp244559
                                                    (let ((__tmp244567
                                                           (let ((__tmp244568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp244568)))
                  (__tmp244560
                   (let ((__tmp244565
                          (let ((__tmp244566
                                 (let ()
                                   (declare (not safe))
                                   (cons _id232368_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp244566)))
                         (__tmp244561
                          (let ((__tmp244562
                                 (let ((__tmp244564
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp244563
                                        (let ()
                                          (declare (not safe))
                                          (cons _L232407_ '()))))
                                   (declare (not safe))
                                   (cons __tmp244564 __tmp244563))))
                            (declare (not safe))
                            (cons __tmp244562 '()))))
                     (declare (not safe))
                     (cons __tmp244565 __tmp244561))))
              (declare (not safe))
              (cons __tmp244567 __tmp244560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp244559))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp244558
                                         _stx232291_))))
                                 (declare (not safe))
                                 (cons __tmp244557 '()))))
                          (declare (not safe))
                          (cons _L232349_ __tmp244556)))))
                 (let* ((___match243903243904_
                         (lambda (___splice243886243887_
                                  _target232388232423_
                                  _tl232390232425_)
                           (letrec ((_loop232391232428_
                                     (lambda (_hd232389232431_
                                              _arg232395232433_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd232389232431_))
                                           (let ((_e232392232436_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd232389232431_))))
                                             (let ((_lp-tl232394232441_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232392232436_)))
                                                   (_lp-hd232393232439_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232392232436_))))
                                               (let ((__tmp244569
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd232393232439_
                                                              _arg232395232433_))))
                                                 (declare (not safe))
                                                 (_loop232391232428_
                                                  _lp-tl232394232441_
                                                  __tmp244569))))
                                           (let ((_arg232396232444_
                                                  (reverse _arg232395232433_)))
                                             (___kont243884243885_
                                              _tl232390232425_
                                              _arg232396232444_))))))
                             (let ()
                               (declare (not safe))
                               (_loop232391232428_
                                _target232388232423_
                                '())))))
                        (___match243897243898_
                         (lambda (___splice243882243883_
                                  _target232377232472_
                                  _tl232379232474_)
                           (letrec ((_loop232380232477_
                                     (lambda (_hd232378232480_
                                              _arg232384232482_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd232378232480_))
                                           (let ((_e232381232485_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd232378232480_))))
                                             (let ((_lp-tl232383232490_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232381232485_)))
                                                   (_lp-hd232382232488_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232381232485_))))
                                               (let ((__tmp244570
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd232382232488_
                                                              _arg232384232482_))))
                                                 (declare (not safe))
                                                 (_loop232380232477_
                                                  _lp-tl232383232490_
                                                  __tmp244570))))
                                           (let ((_arg232385232493_
                                                  (reverse _arg232384232482_)))
                                             (___kont243880243881_
                                              _arg232385232493_))))))
                             (let ()
                               (declare (not safe))
                               (_loop232380232477_
                                _target232377232472_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx243878243879_))
                       (let ((___splice243882243883_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx243878243879_
                                 '0))))
                         (let ((_tl232379232474_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243882243883_ '1)))
                               (_target232377232472_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243882243883_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl232379232474_))
                               (___match243897243898_
                                ___splice243882243883_
                                _target232377232472_
                                _tl232379232474_)
                               (___match243903243904_
                                ___splice243882243883_
                                _target232377232472_
                                _tl232379232474_))))
                       (___kont243888243889_ ___stx243878243879_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp244573
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id232368_
                                                              _ids232299_)))
                                                     (__tmp244572
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl232370_
                                                              _impls232300_)))
                                                     (__tmp244571
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause232517_
                                                              _clauses232301_))))
                                                 (declare (not safe))
                                                 (_lp232296_
                                                  _rest232321_
                                                  __tmp244573
                                                  __tmp244572
                                                  __tmp244571))))
                                           _tl232330232345_
                                           _hd232329232343_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g232324232335_ _g232325232338_))))))
                          (declare (not safe))
                          (_g232323232520_ _clause232322_))))))
            (if (let () (declare (not safe)) (##pair? _rest232302232310_))
                (let ((_hd232307232526_
                       (let ()
                         (declare (not safe))
                         (##car _rest232302232310_)))
                      (_tl232308232528_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest232302232310_))))
                  (let* ((_clause232531_ _hd232307232526_)
                         (_rest232533_ _tl232308232528_))
                    (declare (not safe))
                    (_K232306232523_ _rest232533_ _clause232531_)))
                (let () (declare (not safe)) (_else232304232318_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx232538_ _id232539_ _clauses232540_)
        (let ((_gensym?232542_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx232538_
           _id232539_
           _clauses232540_
           _gensym?232542_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g244575_
        (let ((_g244574_ (let () (declare (not safe)) (##length _g244575_))))
          (cond ((let () (declare (not safe)) (##fx= _g244574_ 3))
                 (apply (lambda (_stx232538_ _id232539_ _clauses232540_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx232538_
                             _id232539_
                             _clauses232540_)))
                        _g244575_))
                ((let () (declare (not safe)) (##fx= _g244574_ 4))
                 (apply (lambda (_stx232544_
                                 _id232545_
                                 _clauses232546_
                                 _gensym?232547_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx232544_
                             _id232545_
                             _clauses232546_
                             _gensym?232547_)))
                        _g244575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g244575_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx231568_)
        (letrec ((_case-lambda-clause-def231570_
                  (lambda (_id232287_ _impl232288_)
                    (let ((__tmp244576
                           (let ((__tmp244577
                                  (let ((__tmp244580
                                         (let ()
                                           (declare (not safe))
                                           (cons _id232287_ '())))
                                        (__tmp244578
                                         (let ((__tmp244579
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl232288_))))
                                           (declare (not safe))
                                           (cons __tmp244579 '()))))
                                    (declare (not safe))
                                    (cons __tmp244580 __tmp244578))))
                             (declare (not safe))
                             (cons '%#define-values __tmp244577))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244576 _stx231568_))))
                 (_opt-lambda-dispatch-name231571_
                  (lambda (_id232283_)
                    (if (uninterned-symbol? _id232283_)
                        (let ((_str232285_ (symbol->string _id232283_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str232285_))
                              '"%"
                              _id232283_))
                        _id232283_)))
                 (_kw-lambda-dispatch-name231572_
                  (lambda (_id232278_ _name232279_)
                    (if (uninterned-symbol? _id232278_)
                        (let ((_str232281_ (symbol->string _id232278_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str232281_))
                              _name232279_
                              _id232278_))
                        _id232278_))))
          (let* ((___stx243926243927_ _stx231568_)
                 (_g231577231636_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243926243927_)))))
            (let ((___kont243928243929_
                   (lambda (_L232187_ _L232188_)
                     (let* ((___stx243906243907_ _L232187_)
                            (_g232205232219_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243906243907_)))))
                       (let ((___kont243908243909_
                              (lambda (_L232263_) _stx231568_))
                             (___kont243910243911_
                              (lambda (_L232232_)
                                (let ((_g244581_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx231568_
                                          _L232188_
                                          _L232232_))))
                                  (begin
                                    (let ((_g244582_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g244581_)
                                                 (##vector-length _g244581_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g244582_ 3)))
                                          (error "Context expects 3 values"
                                                 _g244582_)))
                                    (let ((_ids232242_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g244581_ 0)))
                                          (_impls232243_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g244581_ 1)))
                                          (_clauses232244_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g244581_ 2))))
                                      (let* ((_g244583_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids232242_))
                                             (_defs232247_
                                              (map _case-lambda-clause-def231570_
                                                   _ids232242_
                                                   _impls232243_)))
                                        (let ((__tmp244585
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L232188_)))
                                              (__tmp244584
                                               (map gxc#identifier-symbol
                                                    _ids232242_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp244585
                                           '" => "
                                           __tmp244584))
                                        (let ((__tmp244586
                                               (let ((__tmp244587
                                                      (let ((__tmp244588
                                                             (let ((__tmp244589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp244590
                                   (let ((__tmp244591
                                          (let ((__tmp244596
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L232188_ '())))
                                                (__tmp244592
                                                 (let ((__tmp244593
                                                        (let ((__tmp244595
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses232244_)))
                      (__tmp244594
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp244595 __tmp244594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp244593 '()))))
                                            (declare (not safe))
                                            (cons __tmp244596 __tmp244592))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp244591))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp244590
                               _stx231568_))))
                       (declare (not safe))
                       (cons __tmp244589 '()))))
                (declare (not safe))
                (foldr1 cons __tmp244588 _defs232247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp244587))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp244586
                                           _stx231568_)))))))))
                         (let ((___match243917243918_
                                (lambda (_e232208232255_
                                         _hd232209232258_
                                         _tl232210232260_)
                                  (let ((_L232263_ _tl232210232260_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L232263_))
                                        (___kont243908243909_ _L232263_)
                                        (___kont243910243911_
                                         _tl232210232260_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx243906243907_))
                               (let ((_e232208232255_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx243906243907_))))
                                 (let ((_tl232210232260_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232208232255_)))
                                       (_hd232209232258_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232208232255_))))
                                   (___match243917243918_
                                    _e232208232255_
                                    _hd232209232258_
                                    _tl232210232260_)))
                               (let ()
                                 (declare (not safe))
                                 (_g232205232219_))))))))
                  (___kont243930243931_
                   (lambda (_L232005_ _L232006_)
                     (let* ((_g232022232052_
                             (lambda (_g232023232049_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g232023232049_))))
                            (_g232021232147_
                             (lambda (_g232023232055_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g232023232055_))
                                   (let ((_e232027232057_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g232023232055_))))
                                     (let ((_hd232028232060_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e232027232057_)))
                                           (_tl232029232062_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e232027232057_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl232029232062_))
                                           (let ((_e232030232065_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl232029232062_))))
                                             (let ((_hd232031232068_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e232030232065_)))
                                                   (_tl232032232070_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e232030232065_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd232031232068_))
                                                   (let ((_e232033232073_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd232031232068_))))
                                                     (let ((_hd232034232076_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e232033232073_)))
                                                           (_tl232035232078_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e232033232073_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd232034232076_))
                                                           (let ((_e232036232081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd232034232076_))))
                     (let ((_hd232037232084_
                            (let ()
                              (declare (not safe))
                              (##car _e232036232081_)))
                           (_tl232038232086_
                            (let ()
                              (declare (not safe))
                              (##cdr _e232036232081_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd232037232084_))
                           (let ((_e232039232089_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd232037232084_))))
                             (let ((_hd232040232092_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e232039232089_)))
                                   (_tl232041232094_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e232039232089_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl232041232094_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl232038232086_))
                                       (let ((_e232042232097_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl232038232086_))))
                                         (let ((_hd232043232100_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e232042232097_)))
                                               (_tl232044232102_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e232042232097_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl232044232102_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl232035232078_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl232032232070_))
                                                       (let ((_e232045232105_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl232032232070_))))
                 (let ((_hd232046232108_
                        (let () (declare (not safe)) (##car _e232045232105_)))
                       (_tl232047232110_
                        (let () (declare (not safe)) (##cdr _e232045232105_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl232047232110_))
                       ((lambda (_L232113_ _L232114_ _L232115_)
                          (let* ((_lambda-id232139_
                                  (let ((__tmp244599
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L232006_)))
                                        (__tmp244597
                                         (let ((__tmp244598
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L232115_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name231571_
                                            __tmp244598))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp244599
                                     '"__"
                                     __tmp244597)))
                                 (_lambda-id232141_
                                  (let ((__tmp244600
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx231568_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id232139_
                                     __tmp244600)))
                                 (_g244601_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id232141_)))
                                 (_new-case-lambda-expr232144_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L232113_
                                     _L232115_
                                     _lambda-id232141_))))
                            (let ((__tmp244603
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L232006_)))
                                  (__tmp244602
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id232141_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp244603
                               '" => "
                               __tmp244602))
                            (let ((__tmp244604
                                   (let ((__tmp244605
                                          (let ((__tmp244613
                                                 (let ((__tmp244614
                                                        (let ((__tmp244615
                                                               (let ((__tmp244618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id232141_ '())))
                             (__tmp244616
                              (let ((__tmp244617
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L232114_))))
                                (declare (not safe))
                                (cons __tmp244617 '()))))
                         (declare (not safe))
                         (cons __tmp244618 __tmp244616))))
                  (declare (not safe))
                  (cons '%#define-values __tmp244615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp244614
                                                    _stx231568_)))
                                                (__tmp244606
                                                 (let ((__tmp244607
                                                        (let ((__tmp244608
                                                               (let ((__tmp244609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp244610
                                     (let ((__tmp244612
                                            (let ()
                                              (declare (not safe))
                                              (cons _L232006_ '())))
                                           (__tmp244611
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr232144_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp244612 __tmp244611))))
                                (declare (not safe))
                                (cons '%#define-values __tmp244610))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244609 _stx231568_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp244608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp244607 '()))))
                                            (declare (not safe))
                                            (cons __tmp244613 __tmp244606))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp244605))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp244604
                               _stx231568_))))
                        _hd232046232108_
                        _hd232043232100_
                        _hd232040232092_)
                       (let ()
                         (declare (not safe))
                         (_g232022232052_ _g232023232055_)))))
               (let () (declare (not safe)) (_g232022232052_ _g232023232055_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232022232052_
                                                      _g232023232055_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g232022232052_
                                                  _g232023232055_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g232022232052_ _g232023232055_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g232022232052_ _g232023232055_)))))
                           (let ()
                             (declare (not safe))
                             (_g232022232052_ _g232023232055_)))))
                   (let ()
                     (declare (not safe))
                     (_g232022232052_ _g232023232055_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g232022232052_
                                                      _g232023232055_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g232022232052_
                                              _g232023232055_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g232022232052_ _g232023232055_))))))
                       (declare (not safe))
                       (_g232021232147_ _L232005_))))
                  (___kont243932243933_
                   (lambda (_L231719_ _L231720_)
                     (let* ((_g231736231789_
                             (lambda (_g231737231786_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g231737231786_))))
                            (_g231735231965_
                             (lambda (_g231737231792_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g231737231792_))
                                   (let ((_e231743231794_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g231737231792_))))
                                     (let ((_hd231744231797_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e231743231794_)))
                                           (_tl231745231799_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e231743231794_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl231745231799_))
                                           (let ((_e231746231802_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl231745231799_))))
                                             (let ((_hd231747231805_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231746231802_)))
                                                   (_tl231748231807_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231746231802_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231747231805_))
                                                   (let ((_e231749231810_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231747231805_))))
                                                     (let ((_hd231750231813_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231749231810_)))
                                                           (_tl231751231815_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231749231810_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd231750231813_))
                                                           (let ((_e231752231818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd231750231813_))))
                     (let ((_hd231753231821_
                            (let ()
                              (declare (not safe))
                              (##car _e231752231818_)))
                           (_tl231754231823_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231752231818_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd231753231821_))
                           (let ((_e231755231826_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd231753231821_))))
                             (let ((_hd231756231829_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231755231826_)))
                                   (_tl231757231831_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231755231826_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231757231831_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl231754231823_))
                                       (let ((_e231758231834_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl231754231823_))))
                                         (let ((_hd231759231837_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231758231834_)))
                                               (_tl231760231839_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231758231834_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd231759231837_))
                                               (let ((_e231761231842_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd231759231837_))))
                                                 (let ((_hd231762231845_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231761231842_)))
                                                       (_tl231763231847_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231761231842_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231763231847_))
                                                       (let ((_e231764231850_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231763231847_))))
                 (let ((_hd231765231853_
                        (let () (declare (not safe)) (##car _e231764231850_)))
                       (_tl231766231855_
                        (let () (declare (not safe)) (##cdr _e231764231850_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd231765231853_))
                       (let ((_e231767231858_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd231765231853_))))
                         (let ((_hd231768231861_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231767231858_)))
                               (_tl231769231863_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231767231858_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd231768231861_))
                               (let ((_e231770231866_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd231768231861_))))
                                 (let ((_hd231771231869_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231770231866_)))
                                       (_tl231772231871_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231770231866_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231771231869_))
                                       (let ((_e231773231874_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231771231869_))))
                                         (let ((_hd231774231877_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231773231874_)))
                                               (_tl231775231879_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231773231874_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231775231879_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl231772231871_))
                                                   (let ((_e231776231882_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl231772231871_))))
                                                     (let ((_hd231777231885_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231776231882_)))
                                                           (_tl231778231887_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231776231882_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231778231887_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl231769231863_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl231766231855_))
                           (let ((_e231779231890_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl231766231855_))))
                             (let ((_hd231780231893_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231779231890_)))
                                   (_tl231781231895_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231779231890_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231781231895_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl231760231839_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl231751231815_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl231748231807_))
                                               (let ((_e231782231898_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl231748231807_))))
                                                 (let ((_hd231783231901_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231782231898_)))
                                                       (_tl231784231903_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231782231898_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl231784231903_))
                                                       ((lambda (_L231906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L231907_
                         _L231908_
                         _L231909_
                         _L231910_)
                  (let* ((_get-kws-id231950_
                          (let ((__tmp244621
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L231720_)))
                                (__tmp244619
                                 (let ((__tmp244620
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231910_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name231572_
                                    __tmp244620
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244621 '"__" __tmp244619)))
                         (_get-kws-id231952_
                          (let ((__tmp244622
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx231568_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id231950_
                             __tmp244622)))
                         (_main-id231954_
                          (let ((__tmp244625
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L231720_)))
                                (__tmp244623
                                 (let ((__tmp244624
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231909_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name231572_
                                    __tmp244624
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244625 '"__" __tmp244623)))
                         (_main-id231956_
                          (let ((__tmp244626
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx231568_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id231954_
                             __tmp244626)))
                         (_g244627_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id231952_)))
                         (_g244628_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id231956_)))
                         (_new-kw-dispatch231960_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231906_
                             _L231910_
                             _get-kws-id231952_)))
                         (_new-get-kws231962_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231907_
                             _L231909_
                             _main-id231956_))))
                    (let ((__tmp244631
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L231720_)))
                          (__tmp244630
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id231952_)))
                          (__tmp244629
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id231956_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp244631
                       '" => "
                       __tmp244630
                       '" => "
                       __tmp244629))
                    (let ((__tmp244632
                           (let ((__tmp244633
                                  (let ((__tmp244646
                                         (let ((__tmp244647
                                                (let ((__tmp244648
                                                       (let ((__tmp244649
                                                              (let ((__tmp244651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id231956_ '())))
                            (__tmp244650
                             (let ()
                               (declare (not safe))
                               (cons _L231908_ '()))))
                        (declare (not safe))
                        (cons __tmp244651 __tmp244650))))
                 (declare (not safe))
                 (cons '%#define-values __tmp244649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244648
                                                   _stx231568_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp244647)))
                                        (__tmp244634
                                         (let ((__tmp244641
                                                (let ((__tmp244642
                                                       (let ((__tmp244643
                                                              (let ((__tmp244645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id231952_ '())))
                            (__tmp244644
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws231962_ '()))))
                        (declare (not safe))
                        (cons __tmp244645 __tmp244644))))
                 (declare (not safe))
                 (cons '%#define-values __tmp244643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244642
                                                   _stx231568_)))
                                               (__tmp244635
                                                (let ((__tmp244636
                                                       (let ((__tmp244637
                                                              (let ((__tmp244638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp244640
                                    (let ()
                                      (declare (not safe))
                                      (cons _L231720_ '())))
                                   (__tmp244639
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch231960_ '()))))
                               (declare (not safe))
                               (cons __tmp244640 __tmp244639))))
                        (declare (not safe))
                        (cons '%#define-values __tmp244638))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp244637 _stx231568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp244636 '()))))
                                           (declare (not safe))
                                           (cons __tmp244641 __tmp244635))))
                                    (declare (not safe))
                                    (cons __tmp244646 __tmp244634))))
                             (declare (not safe))
                             (cons '%#begin __tmp244633))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244632 _stx231568_))))
                _hd231783231901_
                _hd231780231893_
                _hd231777231885_
                _hd231774231877_
                _hd231756231829_)
               (let ()
                 (declare (not safe))
                 (_g231736231789_ _g231737231792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231736231789_
                                                  _g231737231792_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g231736231789_
                                              _g231737231792_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g231736231789_ _g231737231792_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g231736231789_ _g231737231792_)))))
                           (let ()
                             (declare (not safe))
                             (_g231736231789_ _g231737231792_)))
                       (let ()
                         (declare (not safe))
                         (_g231736231789_ _g231737231792_)))
                   (let ()
                     (declare (not safe))
                     (_g231736231789_ _g231737231792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231736231789_
                                                      _g231737231792_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231736231789_
                                                  _g231737231792_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g231736231789_ _g231737231792_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g231736231789_ _g231737231792_)))))
                       (let ()
                         (declare (not safe))
                         (_g231736231789_ _g231737231792_)))))
               (let ()
                 (declare (not safe))
                 (_g231736231789_ _g231737231792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231736231789_
                                                  _g231737231792_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g231736231789_ _g231737231792_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g231736231789_ _g231737231792_)))))
                           (let ()
                             (declare (not safe))
                             (_g231736231789_ _g231737231792_)))))
                   (let ()
                     (declare (not safe))
                     (_g231736231789_ _g231737231792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231736231789_
                                                      _g231737231792_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g231736231789_
                                              _g231737231792_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g231736231789_ _g231737231792_))))))
                       (declare (not safe))
                       (_g231735231965_ _L231719_))))
                  (___kont243934243935_
                   (lambda (_L231665_ _L231666_)
                     (let ((__tmp244652
                            (let ((__tmp244653
                                   (let ((__tmp244654
                                          (let ((__tmp244655
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L231665_))))
                                            (declare (not safe))
                                            (cons __tmp244655 '()))))
                                     (declare (not safe))
                                     (cons _L231666_ __tmp244654))))
                              (declare (not safe))
                              (cons '%#define-values __tmp244653))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp244652 _stx231568_)))))
              (let* ((___match244019244020_
                      (lambda (_e231609231687_
                               _hd231610231690_
                               _tl231611231692_
                               _e231612231695_
                               _hd231613231698_
                               _tl231614231700_
                               _e231615231703_
                               _hd231616231706_
                               _tl231617231708_
                               _e231618231711_
                               _hd231619231714_
                               _tl231620231716_)
                        (let ((_L231719_ _hd231619231714_)
                              (_L231720_ _hd231616231706_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231720_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L231719_)))
                              (___kont243932243933_ _L231719_ _L231720_)
                              (___kont243934243935_
                               _hd231619231714_
                               _hd231613231698_)))))
                     (___match243991243992_
                      (lambda (_e231595231973_
                               _hd231596231976_
                               _tl231597231978_
                               _e231598231981_
                               _hd231599231984_
                               _tl231600231986_
                               _e231601231989_
                               _hd231602231992_
                               _tl231603231994_
                               _e231604231997_
                               _hd231605232000_
                               _tl231606232002_)
                        (let ((_L232005_ _hd231605232000_)
                              (_L232006_ _hd231602231992_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232006_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L232005_)))
                              (___kont243930243931_ _L232005_ _L232006_)
                              (___match244019244020_
                               _e231595231973_
                               _hd231596231976_
                               _tl231597231978_
                               _e231598231981_
                               _hd231599231984_
                               _tl231600231986_
                               _e231601231989_
                               _hd231602231992_
                               _tl231603231994_
                               _e231604231997_
                               _hd231605232000_
                               _tl231606232002_)))))
                     (___match243963243964_
                      (lambda (_e231581232155_
                               _hd231582232158_
                               _tl231583232160_
                               _e231584232163_
                               _hd231585232166_
                               _tl231586232168_
                               _e231587232171_
                               _hd231588232174_
                               _tl231589232176_
                               _e231590232179_
                               _hd231591232182_
                               _tl231592232184_)
                        (let ((_L232187_ _hd231591232182_)
                              (_L232188_ _hd231588232174_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L232188_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L232187_)))
                              (___kont243928243929_ _L232187_ _L232188_)
                              (___match243991243992_
                               _e231581232155_
                               _hd231582232158_
                               _tl231583232160_
                               _e231584232163_
                               _hd231585232166_
                               _tl231586232168_
                               _e231587232171_
                               _hd231588232174_
                               _tl231589232176_
                               _e231590232179_
                               _hd231591232182_
                               _tl231592232184_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243926243927_))
                    (let ((_e231581232155_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243926243927_))))
                      (let ((_tl231583232160_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231581232155_)))
                            (_hd231582232158_
                             (let ()
                               (declare (not safe))
                               (##car _e231581232155_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231583232160_))
                            (let ((_e231584232163_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231583232160_))))
                              (let ((_tl231586232168_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231584232163_)))
                                    (_hd231585232166_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231584232163_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231585232166_))
                                    (let ((_e231587232171_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231585232166_))))
                                      (let ((_tl231589232176_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231587232171_)))
                                            (_hd231588232174_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231587232171_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231589232176_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231586232168_))
                                                (let ((_e231590232179_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231586232168_))))
                                                  (let ((_tl231592232184_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231590232179_)))
                                                        (_hd231591232182_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231590232179_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231592232184_))
                                                        (___match243963243964_
                                                         _e231581232155_
                                                         _hd231582232158_
                                                         _tl231583232160_
                                                         _e231584232163_
                                                         _hd231585232166_
                                                         _tl231586232168_
                                                         _e231587232171_
                                                         _hd231588232174_
                                                         _tl231589232176_
                                                         _e231590232179_
                                                         _hd231591232182_
                                                         _tl231592232184_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g231577231636_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231577231636_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231586232168_))
                                                (let ((_e231629231657_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231586232168_))))
                                                  (let ((_tl231631231662_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231629231657_)))
                                                        (_hd231630231660_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231629231657_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231631231662_))
                                                        (___kont243934243935_
                                                         _hd231630231660_
                                                         _hd231585232166_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g231577231636_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231577231636_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231586232168_))
                                        (let ((_e231629231657_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231586232168_))))
                                          (let ((_tl231631231662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231629231657_)))
                                                (_hd231630231660_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231629231657_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231631231662_))
                                                (___kont243934243935_
                                                 _hd231630231660_
                                                 _hd231585232166_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231577231636_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g231577231636_))))))
                            (let () (declare (not safe)) (_g231577231636_)))))
                    (let () (declare (not safe)) (_g231577231636_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx230500_)
        (letrec* ((_bind-e__242322242323_
                   (lambda (_id231552_ _expr231553_ _compile?231554_)
                     (let ((__tmp244658
                            (let ()
                              (declare (not safe))
                              (cons _id231552_ '())))
                           (__tmp244656
                            (let ((__tmp244657
                                   (if _compile?231554_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr231553_))
                                       _expr231553_)))
                              (declare (not safe))
                              (cons __tmp244657 '()))))
                       (declare (not safe))
                       (cons __tmp244658 __tmp244656))))
                  (_bind-e__0__242324242325_
                   (lambda (_id231559_ _expr231560_)
                     (let ((_compile?231562_ '#t))
                       (declare (not safe))
                       (_bind-e__242322242323_
                        _id231559_
                        _expr231560_
                        _compile?231562_))))
                  (_bind-e230502_
                   (lambda _g244660_
                     (let ((_g244659_
                            (let ()
                              (declare (not safe))
                              (##length _g244660_))))
                       (cond ((let () (declare (not safe)) (##fx= _g244659_ 2))
                              (apply (lambda (_id231559_ _expr231560_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__242324242325_
                                          _id231559_
                                          _expr231560_)))
                                     _g244660_))
                             ((let () (declare (not safe)) (##fx= _g244659_ 3))
                              (apply (lambda (_id231564_
                                              _expr231565_
                                              _compile?231566_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__242322242323_
                                          _id231564_
                                          _expr231565_
                                          _compile?231566_)))
                                     _g244660_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g244660_))))))
                  (_compile-bindings230503_
                   (lambda (_bindings231136_)
                     (let _lp231138_ ((_rest231140_ _bindings231136_)
                                      (_lift1231141_ '())
                                      (_lift2231142_ '())
                                      (_bind231143_ '()))
                       (let* ((_rest231144231152_ _rest231140_)
                              (_else231146231160_
                               (lambda ()
                                 (values (reverse _lift1231141_)
                                         (reverse _lift2231142_)
                                         (reverse _bind231143_))))
                              (_K231148231539_
                               (lambda (_rest231163_ _hd231164_)
                                 (let* ((___stx244062244063_ _hd231164_)
                                        (_g231168231204_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244062244063_)))))
                                   (let ((___kont244064244065_
                                          (lambda (_L231446_ _L231447_)
                                            (let* ((___stx244042244043_
                                                    _L231446_)
                                                   (_g231462231476_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244042244043_)))))
                                              (let ((___kont244044244045_
                                                     (lambda (_L231524_)
                                                       (let ((__tmp244661
                                                              (let ((__tmp244662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__242322242323_
                                _L231447_
                                _L231446_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp244662 _bind231143_))))
                 (declare (not safe))
                 (_lp231138_
                  _rest231163_
                  _lift1231141_
                  _lift2231142_
                  __tmp244661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244046244047_
                                                     (lambda (_L231489_)
                                                       (let ((_g244663_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx230500_
                         _L231447_
                         _L231489_
                         '#t))))
                 (begin
                   (let ((_g244664_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244663_)
                                (##vector-length _g244663_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244664_ 3)))
                         (error "Context expects 3 values" _g244664_)))
                   (let ((_ids231499_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244663_ 0)))
                         (_impls231500_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244663_ 1)))
                         (_clauses231501_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244663_ 2))))
                     (let* ((_g244665_
                             (for-each gx#core-bind-runtime! _ids231499_))
                            (_xbind231504_
                             (map _bind-e230502_ _ids231499_ _impls231500_))
                            (_expr*231506_
                             (let ((__tmp244667
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses231501_)))
                                   (__tmp244666
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp244667
                                __tmp244666)))
                            (_bind*231508_
                             (let ()
                               (declare (not safe))
                               (_bind-e__242322242323_
                                _L231447_
                                _expr*231506_
                                '#f))))
                       (let ((__tmp244669
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L231447_)))
                             (__tmp244668
                              (map gxc#identifier-symbol _ids231499_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp244669
                          '" => "
                          __tmp244668))
                       (let ((__tmp244671
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2231142_ _xbind231504_)))
                             (__tmp244670
                              (let ()
                                (declare (not safe))
                                (cons _bind*231508_ _bind231143_))))
                         (declare (not safe))
                         (_lp231138_
                          _rest231163_
                          _lift1231141_
                          __tmp244671
                          __tmp244670)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244053244054_
                                                       (lambda (_e231465231516_
                                                                _hd231466231519_
                                                                _tl231467231521_)
                                                         (let ((_L231524_
                                                                _tl231467231521_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L231524_))
                       (___kont244044244045_ _L231524_)
                       (___kont244046244047_ _tl231467231521_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244042244043_))
                                                      (let ((_e231465231516_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244042244043_))))
                (let ((_tl231467231521_
                       (let () (declare (not safe)) (##cdr _e231465231516_)))
                      (_hd231466231519_
                       (let () (declare (not safe)) (##car _e231465231516_))))
                  (___match244053244054_
                   _e231465231516_
                   _hd231466231519_
                   _tl231467231521_)))
              (let () (declare (not safe)) (_g231462231476_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont244066244067_
                                          (lambda (_L231274_ _L231275_)
                                            (let* ((_g231289231319_
                                                    (lambda (_g231290231316_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g231290231316_))))
                                                   (_g231288231414_
                                                    (lambda (_g231290231322_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g231290231322_))
                                                          (let ((_e231294231324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g231290231322_))))
                    (let ((_hd231295231327_
                           (let ()
                             (declare (not safe))
                             (##car _e231294231324_)))
                          (_tl231296231329_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231294231324_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231296231329_))
                          (let ((_e231297231332_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231296231329_))))
                            (let ((_hd231298231335_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231297231332_)))
                                  (_tl231299231337_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231297231332_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231298231335_))
                                  (let ((_e231300231340_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231298231335_))))
                                    (let ((_hd231301231343_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231300231340_)))
                                          (_tl231302231345_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231300231340_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd231301231343_))
                                          (let ((_e231303231348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd231301231343_))))
                                            (let ((_hd231304231351_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e231303231348_)))
                                                  (_tl231305231353_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e231303231348_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd231304231351_))
                                                  (let ((_e231306231356_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd231304231351_))))
                                                    (let ((_hd231307231359_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231306231356_)))
                                                          (_tl231308231361_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231306231356_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231308231361_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl231305231353_))
                      (let ((_e231309231364_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl231305231353_))))
                        (let ((_hd231310231367_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231309231364_)))
                              (_tl231311231369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231309231364_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl231311231369_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231302231345_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231299231337_))
                                      (let ((_e231312231372_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231299231337_))))
                                        (let ((_hd231313231375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231312231372_)))
                                              (_tl231314231377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231312231372_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231314231377_))
                                              ((lambda (_L231380_
                                                        _L231381_
                                                        _L231382_)
                                                 (let* ((_lambda-id231406_
                                                         (let ((__tmp244673
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L231275_)))
                       (__tmp244672 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp244673 __tmp244672)))
                (_lambda-id231408_
                 (let ((__tmp244674
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx230500_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id231406_ __tmp244674)))
                (_g244675_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id231408_)))
                (_new-case-lambda-expr231411_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L231380_
                    _L231382_
                    _lambda-id231408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp244677
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L231275_)))
                                                         (__tmp244676
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id231408_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp244677
                                                      '" => "
                                                      __tmp244676))
                                                   (let ((__tmp244680
                                                          (let ((__tmp244681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__242322242323_
                            _L231275_
                            _new-case-lambda-expr231411_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp244681 _rest231163_)))
                 (__tmp244678
                  (let ((__tmp244679
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__242324242325_
                            _lambda-id231408_
                            _L231381_))))
                    (declare (not safe))
                    (cons __tmp244679 _lift1231141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp231138_
                                                      __tmp244680
                                                      __tmp244678
                                                      _lift2231142_
                                                      _bind231143_))))
                                               _hd231313231375_
                                               _hd231310231367_
                                               _hd231307231359_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231289231319_
                                                 _g231290231322_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231289231319_ _g231290231322_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g231289231319_ _g231290231322_)))
                              (let ()
                                (declare (not safe))
                                (_g231289231319_ _g231290231322_)))))
                      (let ()
                        (declare (not safe))
                        (_g231289231319_ _g231290231322_)))
                  (let ()
                    (declare (not safe))
                    (_g231289231319_ _g231290231322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g231289231319_
                                                     _g231290231322_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g231289231319_
                                             _g231290231322_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g231289231319_ _g231290231322_)))))
                          (let ()
                            (declare (not safe))
                            (_g231289231319_ _g231290231322_)))))
                  (let ()
                    (declare (not safe))
                    (_g231289231319_ _g231290231322_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g231288231414_ _L231274_))))
                                         (___kont244068244069_
                                          (lambda (_L231225_ _L231226_)
                                            (let ((__tmp244682
                                                   (let ((__tmp244683
                                                          (let ((__tmp244684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244685
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L231225_))))
                           (declare (not safe))
                           (cons __tmp244685 '()))))
                    (declare (not safe))
                    (cons _L231226_ __tmp244684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244683
                                                           _bind231143_))))
                                              (declare (not safe))
                                              (_lp231138_
                                               _rest231163_
                                               _lift1231141_
                                               _lift2231142_
                                               __tmp244682)))))
                                     (let* ((___match244113244114_
                                             (lambda (_e231183231250_
                                                      _hd231184231253_
                                                      _tl231185231255_
                                                      _e231186231258_
                                                      _hd231187231261_
                                                      _tl231188231263_
                                                      _e231189231266_
                                                      _hd231190231269_
                                                      _tl231191231271_)
                                               (let ((_L231274_
                                                      _hd231190231269_)
                                                     (_L231275_
                                                      _hd231187231261_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L231275_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L231274_)))
                                                     (___kont244066244067_
                                                      _L231274_
                                                      _L231275_)
                                                     (___kont244068244069_
                                                      _hd231190231269_
                                                      _hd231184231253_)))))
                                            (___match244091244092_
                                             (lambda (_e231172231422_
                                                      _hd231173231425_
                                                      _tl231174231427_
                                                      _e231175231430_
                                                      _hd231176231433_
                                                      _tl231177231435_
                                                      _e231178231438_
                                                      _hd231179231441_
                                                      _tl231180231443_)
                                               (let ((_L231446_
                                                      _hd231179231441_)
                                                     (_L231447_
                                                      _hd231176231433_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L231447_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L231446_)))
                                                     (___kont244064244065_
                                                      _L231446_
                                                      _L231447_)
                                                     (___match244113244114_
                                                      _e231172231422_
                                                      _hd231173231425_
                                                      _tl231174231427_
                                                      _e231175231430_
                                                      _hd231176231433_
                                                      _tl231177231435_
                                                      _e231178231438_
                                                      _hd231179231441_
                                                      _tl231180231443_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244062244063_))
                                           (let ((_e231172231422_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244062244063_))))
                                             (let ((_tl231174231427_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231172231422_)))
                                                   (_hd231173231425_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231172231422_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231173231425_))
                                                   (let ((_e231175231430_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231173231425_))))
                                                     (let ((_tl231177231435_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231175231430_)))
                                                           (_hd231176231433_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231175231430_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231177231435_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl231174231427_))
                       (let ((_e231178231438_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231174231427_))))
                         (let ((_tl231180231443_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231178231438_)))
                               (_hd231179231441_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231178231438_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231180231443_))
                               (___match244091244092_
                                _e231172231422_
                                _hd231173231425_
                                _tl231174231427_
                                _e231175231430_
                                _hd231176231433_
                                _tl231177231435_
                                _e231178231438_
                                _hd231179231441_
                                _tl231180231443_)
                               (let ()
                                 (declare (not safe))
                                 (_g231168231204_)))))
                       (let () (declare (not safe)) (_g231168231204_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl231174231427_))
                       (let ((_e231197231217_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl231174231427_))))
                         (let ((_tl231199231222_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231197231217_)))
                               (_hd231198231220_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231197231217_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231199231222_))
                               (___kont244068244069_
                                _hd231198231220_
                                _hd231173231425_)
                               (let ()
                                 (declare (not safe))
                                 (_g231168231204_)))))
                       (let () (declare (not safe)) (_g231168231204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231174231427_))
                                                       (let ((_e231197231217_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231174231427_))))
                 (let ((_tl231199231222_
                        (let () (declare (not safe)) (##cdr _e231197231217_)))
                       (_hd231198231220_
                        (let () (declare (not safe)) (##car _e231197231217_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231199231222_))
                       (___kont244068244069_ _hd231198231220_ _hd231173231425_)
                       (let () (declare (not safe)) (_g231168231204_)))))
               (let () (declare (not safe)) (_g231168231204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g231168231204_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest231144231152_))
                             (let ((_hd231149231542_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest231144231152_)))
                                   (_tl231150231544_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest231144231152_))))
                               (let* ((_hd231547_ _hd231149231542_)
                                      (_rest231549_ _tl231150231544_))
                                 (declare (not safe))
                                 (_K231148231539_ _rest231549_ _hd231547_)))
                             (let ()
                               (declare (not safe))
                               (_else231146231160_)))))))
                  (_lift-kw-lambda?230504_
                   (lambda (_bind231060_)
                     (let* ((___stx244130244131_ _bind231060_)
                            (_g231063231080_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx244130244131_)))))
                       (let ((___kont244132244133_
                              (lambda (_L231116_ _L231117_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L231117_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L231116_))
                                    '#f)))
                             (___kont244134244135_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx244130244131_))
                             (let ((_e231067231092_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx244130244131_))))
                               (let ((_tl231069231097_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e231067231092_)))
                                     (_hd231068231095_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e231067231092_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd231068231095_))
                                     (let ((_e231070231100_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd231068231095_))))
                                       (let ((_tl231072231105_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e231070231100_)))
                                             (_hd231071231103_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e231070231100_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl231072231105_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl231069231097_))
                                                 (let ((_e231073231108_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl231069231097_))))
                                                   (let ((_tl231075231113_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e231073231108_)))
                                                         (_hd231074231111_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e231073231108_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl231075231113_))
                                                         (___kont244132244133_
                                                          _hd231074231111_
                                                          _hd231071231103_)
                                                         (___kont244134244135_))))
                                                 (___kont244134244135_))
                                             (___kont244134244135_))))
                                     (___kont244134244135_))))
                             (___kont244134244135_))))))
                  (_lift-kw-lambda-bindings230505_
                   (lambda (_bindings230672_)
                     (let _lp230674_ ((_rest230676_ _bindings230672_)
                                      (_lift1230677_ '())
                                      (_lift2230678_ '())
                                      (_bind230679_ '()))
                       (let* ((_rest230680230688_ _rest230676_)
                              (_else230682230696_
                               (lambda ()
                                 (values (reverse _lift1230677_)
                                         (reverse _lift2230678_)
                                         (reverse _bind230679_))))
                              (_K230684231048_
                               (lambda (_rest230699_ _hd230700_)
                                 (let* ((___stx244160244161_ _hd230700_)
                                        (_g230703230728_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244160244161_)))))
                                   (let ((___kont244162244163_
                                          (lambda (_L230798_ _L230799_)
                                            (let* ((_g230813230866_
                                                    (lambda (_g230814230863_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230814230863_))))
                                                   (_g230812231042_
                                                    (lambda (_g230814230869_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230814230869_))
                                                          (let ((_e230820230871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230814230869_))))
                    (let ((_hd230821230874_
                           (let ()
                             (declare (not safe))
                             (##car _e230820230871_)))
                          (_tl230822230876_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230820230871_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230822230876_))
                          (let ((_e230823230879_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230822230876_))))
                            (let ((_hd230824230882_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230823230879_)))
                                  (_tl230825230884_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230823230879_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230824230882_))
                                  (let ((_e230826230887_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230824230882_))))
                                    (let ((_hd230827230890_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230826230887_)))
                                          (_tl230828230892_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230826230887_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230827230890_))
                                          (let ((_e230829230895_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230827230890_))))
                                            (let ((_hd230830230898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230829230895_)))
                                                  (_tl230831230900_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230829230895_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230830230898_))
                                                  (let ((_e230832230903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230830230898_))))
                                                    (let ((_hd230833230906_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230832230903_)))
                                                          (_tl230834230908_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230832230903_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230834230908_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230831230900_))
                      (let ((_e230835230911_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230831230900_))))
                        (let ((_hd230836230914_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230835230911_)))
                              (_tl230837230916_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230835230911_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230836230914_))
                              (let ((_e230838230919_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230836230914_))))
                                (let ((_hd230839230922_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230838230919_)))
                                      (_tl230840230924_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230838230919_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230840230924_))
                                      (let ((_e230841230927_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230840230924_))))
                                        (let ((_hd230842230930_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230841230927_)))
                                              (_tl230843230932_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230841230927_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230842230930_))
                                              (let ((_e230844230935_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230842230930_))))
                                                (let ((_hd230845230938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230844230935_)))
                                                      (_tl230846230940_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230844230935_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230845230938_))
                                                      (let ((_e230847230943_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230845230938_))))
                (let ((_hd230848230946_
                       (let () (declare (not safe)) (##car _e230847230943_)))
                      (_tl230849230948_
                       (let () (declare (not safe)) (##cdr _e230847230943_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230848230946_))
                      (let ((_e230850230951_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230848230946_))))
                        (let ((_hd230851230954_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230850230951_)))
                              (_tl230852230956_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230850230951_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230852230956_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230849230948_))
                                  (let ((_e230853230959_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230849230948_))))
                                    (let ((_hd230854230962_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230853230959_)))
                                          (_tl230855230964_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230853230959_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230855230964_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230846230940_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230843230932_))
                                                  (let ((_e230856230967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230843230932_))))
                                                    (let ((_hd230857230970_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230856230967_)))
                                                          (_tl230858230972_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230856230967_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230858230972_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230837230916_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230828230892_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230825230884_))
                              (let ((_e230859230975_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230825230884_))))
                                (let ((_hd230860230978_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230859230975_)))
                                      (_tl230861230980_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230859230975_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230861230980_))
                                      ((lambda (_L230983_
                                                _L230984_
                                                _L230985_
                                                _L230986_
                                                _L230987_)
                                         (let* ((_get-kws-id231027_
                                                 (let ((__tmp244687
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230799_)))
                                                       (__tmp244686
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp244687
                                                    __tmp244686)))
                                                (_get-kws-id231029_
                                                 (let ((__tmp244688
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230500_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id231027_
                                                    __tmp244688)))
                                                (_main-id231031_
                                                 (let ((__tmp244690
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230799_)))
                                                       (__tmp244689
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp244690
                                                    __tmp244689)))
                                                (_main-id231033_
                                                 (let ((__tmp244691
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx230500_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id231031_
                                                    __tmp244691)))
                                                (_g244692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id231029_)))
                                                (_g244693_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id231033_)))
                                                (_new-kw-dispatch231037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230983_
                                                    _L230987_
                                                    _get-kws-id231029_)))
                                                (_new-get-kws231039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230984_
                                                    _L230986_
                                                    _main-id231033_))))
                                           (let ((__tmp244696
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230799_)))
                                                 (__tmp244695
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id231029_)))
                                                 (__tmp244694
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id231033_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp244696
                                              '" => "
                                              __tmp244695
                                              '" => "
                                              __tmp244694))
                                           (let ((__tmp244701
                                                  (let ((__tmp244702
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242322242323_
                                                            _main-id231033_
                                                            _L230985_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp244702
                                                          _lift1230677_)))
                                                 (__tmp244699
                                                  (let ((__tmp244700
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242322242323_
                                                            _get-kws-id231029_
                                                            _new-get-kws231039_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp244700
                                                          _lift2230678_)))
                                                 (__tmp244697
                                                  (let ((__tmp244698
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242322242323_
                                                            _L230799_
                                                            _new-kw-dispatch231037_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp244698
                                                          _bind230679_))))
                                             (declare (not safe))
                                             (_lp230674_
                                              _rest230699_
                                              __tmp244701
                                              __tmp244699
                                              __tmp244697))))
                                       _hd230860230978_
                                       _hd230857230970_
                                       _hd230854230962_
                                       _hd230851230954_
                                       _hd230833230906_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230813230866_ _g230814230869_)))))
                              (let ()
                                (declare (not safe))
                                (_g230813230866_ _g230814230869_)))
                          (let ()
                            (declare (not safe))
                            (_g230813230866_ _g230814230869_)))
                      (let ()
                        (declare (not safe))
                        (_g230813230866_ _g230814230869_)))
                  (let ()
                    (declare (not safe))
                    (_g230813230866_ _g230814230869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230813230866_
                                                     _g230814230869_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230813230866_
                                                 _g230814230869_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230813230866_
                                             _g230814230869_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230813230866_ _g230814230869_)))
                              (let ()
                                (declare (not safe))
                                (_g230813230866_ _g230814230869_)))))
                      (let ()
                        (declare (not safe))
                        (_g230813230866_ _g230814230869_)))))
              (let ()
                (declare (not safe))
                (_g230813230866_ _g230814230869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230813230866_
                                                 _g230814230869_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230813230866_ _g230814230869_)))))
                              (let ()
                                (declare (not safe))
                                (_g230813230866_ _g230814230869_)))))
                      (let ()
                        (declare (not safe))
                        (_g230813230866_ _g230814230869_)))
                  (let ()
                    (declare (not safe))
                    (_g230813230866_ _g230814230869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230813230866_
                                                     _g230814230869_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230813230866_
                                             _g230814230869_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230813230866_ _g230814230869_)))))
                          (let ()
                            (declare (not safe))
                            (_g230813230866_ _g230814230869_)))))
                  (let ()
                    (declare (not safe))
                    (_g230813230866_ _g230814230869_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230812231042_ _L230798_))))
                                         (___kont244164244165_
                                          (lambda (_L230749_ _L230750_)
                                            (let ((__tmp244703
                                                   (let ((__tmp244704
                                                          (let ((__tmp244705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L230749_ '()))))
                    (declare (not safe))
                    (cons _L230750_ __tmp244705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244704
                                                           _bind230679_))))
                                              (declare (not safe))
                                              (_lp230674_
                                               _rest230699_
                                               _lift1230677_
                                               _lift2230678_
                                               __tmp244703)))))
                                     (let ((___match244187244188_
                                            (lambda (_e230707230774_
                                                     _hd230708230777_
                                                     _tl230709230779_
                                                     _e230710230782_
                                                     _hd230711230785_
                                                     _tl230712230787_
                                                     _e230713230790_
                                                     _hd230714230793_
                                                     _tl230715230795_)
                                              (let ((_L230798_
                                                     _hd230714230793_)
                                                    (_L230799_
                                                     _hd230711230785_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L230799_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L230798_)))
                                                    (___kont244162244163_
                                                     _L230798_
                                                     _L230799_)
                                                    (___kont244164244165_
                                                     _hd230714230793_
                                                     _hd230708230777_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244160244161_))
                                           (let ((_e230707230774_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244160244161_))))
                                             (let ((_tl230709230779_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230707230774_)))
                                                   (_hd230708230777_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230707230774_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230708230777_))
                                                   (let ((_e230710230782_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230708230777_))))
                                                     (let ((_tl230712230787_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230710230782_)))
                                                           (_hd230711230785_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230710230782_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230712230787_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230709230779_))
                       (let ((_e230713230790_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230709230779_))))
                         (let ((_tl230715230795_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230713230790_)))
                               (_hd230714230793_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230713230790_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230715230795_))
                               (___match244187244188_
                                _e230707230774_
                                _hd230708230777_
                                _tl230709230779_
                                _e230710230782_
                                _hd230711230785_
                                _tl230712230787_
                                _e230713230790_
                                _hd230714230793_
                                _tl230715230795_)
                               (let ()
                                 (declare (not safe))
                                 (_g230703230728_)))))
                       (let () (declare (not safe)) (_g230703230728_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230709230779_))
                       (let ((_e230721230741_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230709230779_))))
                         (let ((_tl230723230746_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230721230741_)))
                               (_hd230722230744_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230721230741_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230723230746_))
                               (___kont244164244165_
                                _hd230722230744_
                                _hd230708230777_)
                               (let ()
                                 (declare (not safe))
                                 (_g230703230728_)))))
                       (let () (declare (not safe)) (_g230703230728_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230709230779_))
                                                       (let ((_e230721230741_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230709230779_))))
                 (let ((_tl230723230746_
                        (let () (declare (not safe)) (##cdr _e230721230741_)))
                       (_hd230722230744_
                        (let () (declare (not safe)) (##car _e230721230741_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230723230746_))
                       (___kont244164244165_ _hd230722230744_ _hd230708230777_)
                       (let () (declare (not safe)) (_g230703230728_)))))
               (let () (declare (not safe)) (_g230703230728_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230703230728_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230680230688_))
                             (let ((_hd230685231051_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230680230688_)))
                                   (_tl230686231053_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230680230688_))))
                               (let* ((_hd231056_ _hd230685231051_)
                                      (_rest231058_ _tl230686231053_))
                                 (declare (not safe))
                                 (_K230684231048_ _rest231058_ _hd231056_)))
                             (let ()
                               (declare (not safe))
                               (_else230682230696_))))))))
          (let* ((___stx244204244205_ _stx230500_)
                 (_g230508230534_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244204244205_)))))
            (let ((___kont244206244207_
                   (lambda (_L230594_ _L230595_)
                     (let ((__tmp244707
                            (lambda ()
                              (if (let ((__tmp244708
                                         (let ((__tmp244709
                                                (lambda (_g230623230626_
                                                         _g230624230628_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g230623230626_
                                                          _g230624230628_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp244709
                                                   '()
                                                   _L230595_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?230504_
                                            __tmp244708))
                                  (let ((_g244710_
                                         (let ((__tmp244712
                                                (let ((__tmp244713
                                                       (lambda (_g230630230633_
                                                                _g230631230635_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g230630230633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g230631230635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp244713
                                                          '()
                                                          _L230595_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings230505_
                                            __tmp244712))))
                                    (begin
                                      (let ((_g244711_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g244710_)
                                                   (##vector-length _g244710_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g244711_ 3)))
                                            (error "Context expects 3 values"
                                                   _g244711_)))
                                      (let ((_lift1230638_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244710_ 0)))
                                            (_lift2230639_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244710_ 1)))
                                            (_hd230640_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244710_ 2))))
                                        (let* ((_expr230642_
                                                (let ((__tmp244714
                                                       (let ((__tmp244715
                                                              (let ((__tmp244716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L230594_ '()))))
                        (declare (not safe))
                        (cons _hd230640_ __tmp244716))))
                 (declare (not safe))
                 (cons '%#let-values __tmp244715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244714
                                                   _stx230500_)))
                                               (_expr230644_
                                                (let ((__tmp244717
                                                       (let ((__tmp244718
                                                              (let ((__tmp244719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr230642_ '()))))
                        (declare (not safe))
                        (cons _lift2230639_ __tmp244719))))
                 (declare (not safe))
                 (cons '%#let-values __tmp244718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244717
                                                   _stx230500_)))
                                               (_expr230646_
                                                (let ((__tmp244720
                                                       (let ((__tmp244721
                                                              (let ((__tmp244722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr230644_ '()))))
                        (declare (not safe))
                        (cons _lift1230638_ __tmp244722))))
                 (declare (not safe))
                 (cons '%#let-values __tmp244721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244720
                                                   _stx230500_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr230646_))))))
                                  (let ((_g244723_
                                         (let ((__tmp244725
                                                (let ((__tmp244726
                                                       (lambda (_g230648230651_
                                                                _g230649230653_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g230648230651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g230649230653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp244726
                                                          '()
                                                          _L230595_))))
                                           (declare (not safe))
                                           (_compile-bindings230503_
                                            __tmp244725))))
                                    (begin
                                      (let ((_g244724_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g244723_)
                                                   (##vector-length _g244723_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g244724_ 3)))
                                            (error "Context expects 3 values"
                                                   _g244724_)))
                                      (let ((_lift1230656_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244723_ 0)))
                                            (_lift2230657_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244723_ 1)))
                                            (_hd230658_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g244723_ 2))))
                                        (let* ((_body230660_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L230594_)))
                                               (_expr230662_
                                                (let ((__tmp244727
                                                       (let ((__tmp244728
                                                              (let ((__tmp244729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body230660_ '()))))
                        (declare (not safe))
                        (cons _hd230658_ __tmp244729))))
                 (declare (not safe))
                 (cons '%#let-values __tmp244728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp244727
                                                   _stx230500_)))
                                               (_expr230664_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2230657_))
                                                    _expr230662_
                                                    (let ((__tmp244730
                                                           (let ((__tmp244731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244732
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr230662_ '()))))
                            (declare (not safe))
                            (cons _lift2230657_ __tmp244732))))
                     (declare (not safe))
                     (cons '%#let-values __tmp244731))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp244730 _stx230500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr230666_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1230656_))
                                                    _expr230664_
                                                    (let ((__tmp244733
                                                           (let ((__tmp244734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244735
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr230664_ '()))))
                            (declare (not safe))
                            (cons _lift1230656_ __tmp244735))))
                     (declare (not safe))
                     (cons '%#let-values __tmp244734))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp244733 _stx230500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr230666_)))))))
                           (__tmp244706
                            (let ((__obj244410
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj244410)
                              __obj244410)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp244707
                        gx#current-expander-context
                        __tmp244706))))
                  (___kont244210244211_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx230500_)))))
              (let ((___match244231244232_
                     (lambda (_e230512230546_
                              _hd230513230549_
                              _tl230514230551_
                              _e230515230554_
                              _hd230516230557_
                              _tl230517230559_
                              ___splice244208244209_
                              _target230518230562_
                              _tl230520230564_)
                       (letrec ((_loop230521230567_
                                 (lambda (_hd230519230570_ _bind230525230572_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd230519230570_))
                                       (let ((_e230522230575_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd230519230570_))))
                                         (let ((_lp-tl230524230580_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e230522230575_)))
                                               (_lp-hd230523230578_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e230522230575_))))
                                           (let ((__tmp244736
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd230523230578_
                                                          _bind230525230572_))))
                                             (declare (not safe))
                                             (_loop230521230567_
                                              _lp-tl230524230580_
                                              __tmp244736))))
                                       (let ((_bind230526230583_
                                              (reverse _bind230525230572_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl230517230559_))
                                             (let ((_e230527230586_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl230517230559_))))
                                               (let ((_tl230529230591_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e230527230586_)))
                                                     (_hd230528230589_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e230527230586_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl230529230591_))
                                                     (let ((_L230594_
                                                            _hd230528230589_)
                                                           (_L230595_
                                                            _bind230526230583_))
                                                       (if (let ((__tmp244737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244738
                                 (lambda (_g230615230618_ _g230616230620_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g230615230618_ _g230616230620_)))))
                            (declare (not safe))
                            (foldr1 __tmp244738 '() _L230595_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp244737))
                   (___kont244206244207_ _L230594_ _L230595_)
                   (___kont244210244211_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont244210244211_))))
                                             (___kont244210244211_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop230521230567_ _target230518230562_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244204244205_))
                    (let ((_e230512230546_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244204244205_))))
                      (let ((_tl230514230551_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230512230546_)))
                            (_hd230513230549_
                             (let ()
                               (declare (not safe))
                               (##car _e230512230546_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230514230551_))
                            (let ((_e230515230554_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230514230551_))))
                              (let ((_tl230517230559_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230515230554_)))
                                    (_hd230516230557_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230515230554_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd230516230557_))
                                    (let ((___splice244208244209_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd230516230557_
                                              '0))))
                                      (let ((_tl230520230564_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244208244209_
                                                '1)))
                                            (_target230518230562_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244208244209_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230520230564_))
                                            (___match244231244232_
                                             _e230512230546_
                                             _hd230513230549_
                                             _tl230514230551_
                                             _e230515230554_
                                             _hd230516230557_
                                             _tl230517230559_
                                             ___splice244208244209_
                                             _target230518230562_
                                             _tl230520230564_)
                                            (___kont244210244211_))))
                                    (___kont244210244211_))))
                            (___kont244210244211_))))
                    (___kont244210244211_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx229644_)
        (letrec* ((_bind-e__242327242328_
                   (lambda (_id230484_ _expr230485_ _compile?230486_)
                     (let ((__tmp244741
                            (let ()
                              (declare (not safe))
                              (cons _id230484_ '())))
                           (__tmp244739
                            (let ((__tmp244740
                                   (if _compile?230486_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr230485_))
                                       _expr230485_)))
                              (declare (not safe))
                              (cons __tmp244740 '()))))
                       (declare (not safe))
                       (cons __tmp244741 __tmp244739))))
                  (_bind-e__0__242329242330_
                   (lambda (_id230491_ _expr230492_)
                     (let ((_compile?230494_ '#t))
                       (declare (not safe))
                       (_bind-e__242327242328_
                        _id230491_
                        _expr230492_
                        _compile?230494_))))
                  (_bind-e229646_
                   (lambda _g244743_
                     (let ((_g244742_
                            (let ()
                              (declare (not safe))
                              (##length _g244743_))))
                       (cond ((let () (declare (not safe)) (##fx= _g244742_ 2))
                              (apply (lambda (_id230491_ _expr230492_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__242329242330_
                                          _id230491_
                                          _expr230492_)))
                                     _g244743_))
                             ((let () (declare (not safe)) (##fx= _g244742_ 3))
                              (apply (lambda (_id230496_
                                              _expr230497_
                                              _compile?230498_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__242327242328_
                                          _id230496_
                                          _expr230497_
                                          _compile?230498_)))
                                     _g244743_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g244743_))))))
                  (_compile-bindings229647_
                   (lambda (_rest229782_)
                     (let _lp229784_ ((_rest229786_ _rest229782_)
                                      (_bind229787_ '()))
                       (let* ((_rest229788229796_ _rest229786_)
                              (_else229790229804_
                               (lambda () (reverse _bind229787_)))
                              (_K229792230471_
                               (lambda (_rest229807_ _hd229808_)
                                 (let* ((___stx244254244255_ _hd229808_)
                                        (_g229813229860_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx244254244255_)))))
                                   (let ((___kont244256244257_
                                          (lambda (_L230378_ _L230379_)
                                            (let* ((___stx244234244235_
                                                    _L230378_)
                                                   (_g230394230408_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx244234244235_)))))
                                              (let ((___kont244236244237_
                                                     (lambda (_L230456_)
                                                       (let ((__tmp244744
                                                              (let ((__tmp244745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__242327242328_
                                _L230379_
                                _L230378_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp244745 _bind229787_))))
                 (declare (not safe))
                 (_lp229784_ _rest229807_ __tmp244744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont244238244239_
                                                     (lambda (_L230421_)
                                                       (let ((_g244746_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx229644_
                         _L230379_
                         _L230421_
                         '#t))))
                 (begin
                   (let ((_g244747_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244746_)
                                (##vector-length _g244746_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244747_ 3)))
                         (error "Context expects 3 values" _g244747_)))
                   (let ((_ids230431_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244746_ 0)))
                         (_impls230432_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244746_ 1)))
                         (_clauses230433_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g244746_ 2))))
                     (let* ((_g244748_
                             (for-each gx#core-bind-runtime! _ids230431_))
                            (_xbind230436_
                             (map _bind-e229646_ _ids230431_ _impls230432_))
                            (_expr*230438_
                             (let ((__tmp244750
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses230433_)))
                                   (__tmp244749
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp244750
                                __tmp244749)))
                            (_bind*230440_
                             (let ()
                               (declare (not safe))
                               (_bind-e__242327242328_
                                _L230379_
                                _expr*230438_
                                '#f))))
                       (let ((__tmp244752
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L230379_)))
                             (__tmp244751
                              (map gxc#identifier-symbol _ids230431_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp244752
                          '" => "
                          __tmp244751))
                       (let ((__tmp244753
                              (let ((__tmp244754
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind229787_
                                               _xbind230436_))))
                                (declare (not safe))
                                (cons _bind*230440_ __tmp244754))))
                         (declare (not safe))
                         (_lp229784_ _rest229807_ __tmp244753)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match244245244246_
                                                       (lambda (_e230397230448_
                                                                _hd230398230451_
                                                                _tl230399230453_)
                                                         (let ((_L230456_
                                                                _tl230399230453_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L230456_))
                       (___kont244236244237_ _L230456_)
                       (___kont244238244239_ _tl230399230453_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx244234244235_))
                                                      (let ((_e230397230448_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx244234244235_))))
                (let ((_tl230399230453_
                       (let () (declare (not safe)) (##cdr _e230397230448_)))
                      (_hd230398230451_
                       (let () (declare (not safe)) (##car _e230397230448_))))
                  (___match244245244246_
                   _e230397230448_
                   _hd230398230451_
                   _tl230399230453_)))
              (let () (declare (not safe)) (_g230394230408_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont244258244259_
                                          (lambda (_L230206_ _L230207_)
                                            (let* ((_g230221230251_
                                                    (lambda (_g230222230248_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230222230248_))))
                                                   (_g230220230346_
                                                    (lambda (_g230222230254_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230222230254_))
                                                          (let ((_e230226230256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230222230254_))))
                    (let ((_hd230227230259_
                           (let ()
                             (declare (not safe))
                             (##car _e230226230256_)))
                          (_tl230228230261_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230226230256_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230228230261_))
                          (let ((_e230229230264_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230228230261_))))
                            (let ((_hd230230230267_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230229230264_)))
                                  (_tl230231230269_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230229230264_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230230230267_))
                                  (let ((_e230232230272_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230230230267_))))
                                    (let ((_hd230233230275_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230232230272_)))
                                          (_tl230234230277_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230232230272_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230233230275_))
                                          (let ((_e230235230280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230233230275_))))
                                            (let ((_hd230236230283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230235230280_)))
                                                  (_tl230237230285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230235230280_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230236230283_))
                                                  (let ((_e230238230288_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230236230283_))))
                                                    (let ((_hd230239230291_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230238230288_)))
                                                          (_tl230240230293_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230238230288_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230240230293_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230237230285_))
                      (let ((_e230241230296_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230237230285_))))
                        (let ((_hd230242230299_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230241230296_)))
                              (_tl230243230301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230241230296_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230243230301_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230234230277_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230231230269_))
                                      (let ((_e230244230304_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230231230269_))))
                                        (let ((_hd230245230307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230244230304_)))
                                              (_tl230246230309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230244230304_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230246230309_))
                                              ((lambda (_L230312_
                                                        _L230313_
                                                        _L230314_)
                                                 (let* ((_lambda-id230338_
                                                         (let ((__tmp244756
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230207_)))
                       (__tmp244755 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp244756 __tmp244755)))
                (_lambda-id230340_
                 (let ((__tmp244757
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx229644_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id230338_ __tmp244757)))
                (_g244758_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id230340_)))
                (_new-case-lambda-expr230343_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L230312_
                    _L230314_
                    _lambda-id230340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp244760
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230207_)))
                                                         (__tmp244759
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id230340_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp244760
                                                      '" => "
                                                      __tmp244759))
                                                   (let ((__tmp244763
                                                          (let ((__tmp244764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__242327242328_
                            _L230207_
                            _new-case-lambda-expr230343_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp244764 _rest229807_)))
                 (__tmp244761
                  (let ((__tmp244762
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__242329242330_
                            _lambda-id230340_
                            _L230313_))))
                    (declare (not safe))
                    (cons __tmp244762 _bind229787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp229784_
                                                      __tmp244763
                                                      __tmp244761))))
                                               _hd230245230307_
                                               _hd230242230299_
                                               _hd230239230291_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230221230251_
                                                 _g230222230254_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230221230251_ _g230222230254_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230221230251_ _g230222230254_)))
                              (let ()
                                (declare (not safe))
                                (_g230221230251_ _g230222230254_)))))
                      (let ()
                        (declare (not safe))
                        (_g230221230251_ _g230222230254_)))
                  (let ()
                    (declare (not safe))
                    (_g230221230251_ _g230222230254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230221230251_
                                                     _g230222230254_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230221230251_
                                             _g230222230254_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230221230251_ _g230222230254_)))))
                          (let ()
                            (declare (not safe))
                            (_g230221230251_ _g230222230254_)))))
                  (let ()
                    (declare (not safe))
                    (_g230221230251_ _g230222230254_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230220230346_ _L230206_))))
                                         (___kont244260244261_
                                          (lambda (_L229930_ _L229931_)
                                            (let* ((_g229945229998_
                                                    (lambda (_g229946229995_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229946229995_))))
                                                   (_g229944230174_
                                                    (lambda (_g229946230001_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229946230001_))
                                                          (let ((_e229952230003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229946230001_))))
                    (let ((_hd229953230006_
                           (let ()
                             (declare (not safe))
                             (##car _e229952230003_)))
                          (_tl229954230008_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229952230003_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229954230008_))
                          (let ((_e229955230011_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229954230008_))))
                            (let ((_hd229956230014_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229955230011_)))
                                  (_tl229957230016_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229955230011_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229956230014_))
                                  (let ((_e229958230019_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229956230014_))))
                                    (let ((_hd229959230022_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229958230019_)))
                                          (_tl229960230024_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229958230019_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229959230022_))
                                          (let ((_e229961230027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229959230022_))))
                                            (let ((_hd229962230030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229961230027_)))
                                                  (_tl229963230032_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229961230027_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229962230030_))
                                                  (let ((_e229964230035_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229962230030_))))
                                                    (let ((_hd229965230038_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229964230035_)))
                                                          (_tl229966230040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229964230035_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229966230040_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229963230032_))
                      (let ((_e229967230043_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229963230032_))))
                        (let ((_hd229968230046_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229967230043_)))
                              (_tl229969230048_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229967230043_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229968230046_))
                              (let ((_e229970230051_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229968230046_))))
                                (let ((_hd229971230054_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229970230051_)))
                                      (_tl229972230056_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229970230051_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229972230056_))
                                      (let ((_e229973230059_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229972230056_))))
                                        (let ((_hd229974230062_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229973230059_)))
                                              (_tl229975230064_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229973230059_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd229974230062_))
                                              (let ((_e229976230067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd229974230062_))))
                                                (let ((_hd229977230070_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229976230067_)))
                                                      (_tl229978230072_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229976230067_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229977230070_))
                                                      (let ((_e229979230075_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd229977230070_))))
                (let ((_hd229980230078_
                       (let () (declare (not safe)) (##car _e229979230075_)))
                      (_tl229981230080_
                       (let () (declare (not safe)) (##cdr _e229979230075_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229980230078_))
                      (let ((_e229982230083_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229980230078_))))
                        (let ((_hd229983230086_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229982230083_)))
                              (_tl229984230088_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229982230083_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229984230088_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229981230080_))
                                  (let ((_e229985230091_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229981230080_))))
                                    (let ((_hd229986230094_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229985230091_)))
                                          (_tl229987230096_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229985230091_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229987230096_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229978230072_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229975230064_))
                                                  (let ((_e229988230099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229975230064_))))
                                                    (let ((_hd229989230102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229988230099_)))
                                                          (_tl229990230104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229988230099_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229990230104_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl229969230048_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229960230024_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229957230016_))
                              (let ((_e229991230107_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229957230016_))))
                                (let ((_hd229992230110_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229991230107_)))
                                      (_tl229993230112_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229991230107_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229993230112_))
                                      ((lambda (_L230115_
                                                _L230116_
                                                _L230117_
                                                _L230118_
                                                _L230119_)
                                         (let* ((_get-kws-id230159_
                                                 (let ((__tmp244766
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229931_)))
                                                       (__tmp244765
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp244766
                                                    __tmp244765)))
                                                (_get-kws-id230161_
                                                 (let ((__tmp244767
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229644_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230159_
                                                    __tmp244767)))
                                                (_main-id230163_
                                                 (let ((__tmp244769
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229931_)))
                                                       (__tmp244768
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp244769
                                                    __tmp244768)))
                                                (_main-id230165_
                                                 (let ((__tmp244770
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229644_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230163_
                                                    __tmp244770)))
                                                (_g244771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230161_)))
                                                (_g244772_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230165_)))
                                                (_new-kw-dispatch230169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230115_
                                                    _L230119_
                                                    _get-kws-id230161_)))
                                                (_new-get-kws230171_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230116_
                                                    _L230118_
                                                    _main-id230165_))))
                                           (let ((__tmp244775
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L229931_)))
                                                 (__tmp244774
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230161_)))
                                                 (__tmp244773
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230165_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp244775
                                              '" => "
                                              __tmp244774
                                              '" => "
                                              __tmp244773))
                                           (let ((__tmp244776
                                                  (let ((__tmp244781
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__242327242328_
                                                            _main-id230165_
                                                            _L230117_
                                                            '#f)))
                                                        (__tmp244777
                                                         (let ((__tmp244780
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__242327242328_
                           _get-kws-id230161_
                           _new-get-kws230171_
                           '#f)))
                       (__tmp244778
                        (let ((__tmp244779
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__242327242328_
                                  _L229931_
                                  _new-kw-dispatch230169_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp244779 _rest229807_))))
                   (declare (not safe))
                   (cons __tmp244780 __tmp244778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244781
                                                          __tmp244777))))
                                             (declare (not safe))
                                             (_lp229784_
                                              __tmp244776
                                              _bind229787_))))
                                       _hd229992230110_
                                       _hd229989230102_
                                       _hd229986230094_
                                       _hd229983230086_
                                       _hd229965230038_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229945229998_ _g229946230001_)))))
                              (let ()
                                (declare (not safe))
                                (_g229945229998_ _g229946230001_)))
                          (let ()
                            (declare (not safe))
                            (_g229945229998_ _g229946230001_)))
                      (let ()
                        (declare (not safe))
                        (_g229945229998_ _g229946230001_)))
                  (let ()
                    (declare (not safe))
                    (_g229945229998_ _g229946230001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229945229998_
                                                     _g229946230001_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g229945229998_
                                                 _g229946230001_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g229945229998_
                                             _g229946230001_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229945229998_ _g229946230001_)))
                              (let ()
                                (declare (not safe))
                                (_g229945229998_ _g229946230001_)))))
                      (let ()
                        (declare (not safe))
                        (_g229945229998_ _g229946230001_)))))
              (let ()
                (declare (not safe))
                (_g229945229998_ _g229946230001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229945229998_
                                                 _g229946230001_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229945229998_ _g229946230001_)))))
                              (let ()
                                (declare (not safe))
                                (_g229945229998_ _g229946230001_)))))
                      (let ()
                        (declare (not safe))
                        (_g229945229998_ _g229946230001_)))
                  (let ()
                    (declare (not safe))
                    (_g229945229998_ _g229946230001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229945229998_
                                                     _g229946230001_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229945229998_
                                             _g229946230001_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229945229998_ _g229946230001_)))))
                          (let ()
                            (declare (not safe))
                            (_g229945229998_ _g229946230001_)))))
                  (let ()
                    (declare (not safe))
                    (_g229945229998_ _g229946230001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229944230174_ _L229930_))))
                                         (___kont244262244263_
                                          (lambda (_L229881_ _L229882_)
                                            (let ((__tmp244782
                                                   (let ((__tmp244783
                                                          (let ((__tmp244784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244785
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L229881_))))
                           (declare (not safe))
                           (cons __tmp244785 '()))))
                    (declare (not safe))
                    (cons _L229882_ __tmp244784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244783
                                                           _bind229787_))))
                                              (declare (not safe))
                                              (_lp229784_
                                               _rest229807_
                                               __tmp244782)))))
                                     (let* ((___match244329244330_
                                             (lambda (_e229839229906_
                                                      _hd229840229909_
                                                      _tl229841229911_
                                                      _e229842229914_
                                                      _hd229843229917_
                                                      _tl229844229919_
                                                      _e229845229922_
                                                      _hd229846229925_
                                                      _tl229847229927_)
                                               (let ((_L229930_
                                                      _hd229846229925_)
                                                     (_L229931_
                                                      _hd229843229917_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229931_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L229930_)))
                                                     (___kont244260244261_
                                                      _L229930_
                                                      _L229931_)
                                                     (___kont244262244263_
                                                      _hd229846229925_
                                                      _hd229840229909_)))))
                                            (___match244307244308_
                                             (lambda (_e229828230182_
                                                      _hd229829230185_
                                                      _tl229830230187_
                                                      _e229831230190_
                                                      _hd229832230193_
                                                      _tl229833230195_
                                                      _e229834230198_
                                                      _hd229835230201_
                                                      _tl229836230203_)
                                               (let ((_L230206_
                                                      _hd229835230201_)
                                                     (_L230207_
                                                      _hd229832230193_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230207_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230206_)))
                                                     (___kont244258244259_
                                                      _L230206_
                                                      _L230207_)
                                                     (___match244329244330_
                                                      _e229828230182_
                                                      _hd229829230185_
                                                      _tl229830230187_
                                                      _e229831230190_
                                                      _hd229832230193_
                                                      _tl229833230195_
                                                      _e229834230198_
                                                      _hd229835230201_
                                                      _tl229836230203_)))))
                                            (___match244285244286_
                                             (lambda (_e229817230354_
                                                      _hd229818230357_
                                                      _tl229819230359_
                                                      _e229820230362_
                                                      _hd229821230365_
                                                      _tl229822230367_
                                                      _e229823230370_
                                                      _hd229824230373_
                                                      _tl229825230375_)
                                               (let ((_L230378_
                                                      _hd229824230373_)
                                                     (_L230379_
                                                      _hd229821230365_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230379_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L230378_)))
                                                     (___kont244256244257_
                                                      _L230378_
                                                      _L230379_)
                                                     (___match244307244308_
                                                      _e229817230354_
                                                      _hd229818230357_
                                                      _tl229819230359_
                                                      _e229820230362_
                                                      _hd229821230365_
                                                      _tl229822230367_
                                                      _e229823230370_
                                                      _hd229824230373_
                                                      _tl229825230375_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx244254244255_))
                                           (let ((_e229817230354_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx244254244255_))))
                                             (let ((_tl229819230359_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229817230354_)))
                                                   (_hd229818230357_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229817230354_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229818230357_))
                                                   (let ((_e229820230362_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229818230357_))))
                                                     (let ((_tl229822230367_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229820230362_)))
                                                           (_hd229821230365_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229820230362_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229822230367_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229819230359_))
                       (let ((_e229823230370_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229819230359_))))
                         (let ((_tl229825230375_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229823230370_)))
                               (_hd229824230373_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229823230370_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229825230375_))
                               (___match244285244286_
                                _e229817230354_
                                _hd229818230357_
                                _tl229819230359_
                                _e229820230362_
                                _hd229821230365_
                                _tl229822230367_
                                _e229823230370_
                                _hd229824230373_
                                _tl229825230375_)
                               (let ()
                                 (declare (not safe))
                                 (_g229813229860_)))))
                       (let () (declare (not safe)) (_g229813229860_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229819230359_))
                       (let ((_e229853229873_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229819230359_))))
                         (let ((_tl229855229878_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229853229873_)))
                               (_hd229854229876_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229853229873_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229855229878_))
                               (___kont244262244263_
                                _hd229854229876_
                                _hd229818230357_)
                               (let ()
                                 (declare (not safe))
                                 (_g229813229860_)))))
                       (let () (declare (not safe)) (_g229813229860_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229819230359_))
                                                       (let ((_e229853229873_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229819230359_))))
                 (let ((_tl229855229878_
                        (let () (declare (not safe)) (##cdr _e229853229873_)))
                       (_hd229854229876_
                        (let () (declare (not safe)) (##car _e229853229873_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229855229878_))
                       (___kont244262244263_ _hd229854229876_ _hd229818230357_)
                       (let () (declare (not safe)) (_g229813229860_)))))
               (let () (declare (not safe)) (_g229813229860_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229813229860_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229788229796_))
                             (let ((_hd229793230474_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229788229796_)))
                                   (_tl229794230476_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229788229796_))))
                               (let* ((_hd230479_ _hd229793230474_)
                                      (_rest230481_ _tl229794230476_))
                                 (declare (not safe))
                                 (_K229792230471_ _rest230481_ _hd230479_)))
                             (let ()
                               (declare (not safe))
                               (_else229790229804_))))))))
          (let* ((___stx244346244347_ _stx229644_)
                 (_g229650229677_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx244346244347_)))))
            (let ((___kont244348244349_
                   (lambda (_L229737_ _L229738_ _L229739_)
                     (let ((__tmp244787
                            (lambda ()
                              (let ((_hd229776_
                                     (let ((__tmp244788
                                            (let ((__tmp244789
                                                   (lambda (_g229768229771_
                                                            _g229769229773_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g229768229771_
                                                             _g229769229773_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp244789
                                                      '()
                                                      _L229738_))))
                                       (declare (not safe))
                                       (_compile-bindings229647_ __tmp244788)))
                                    (_body229777_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L229737_))))
                                (let ((__tmp244790
                                       (let ((__tmp244791
                                              (let ((__tmp244792
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body229777_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd229776_
                                                      __tmp244792))))
                                         (declare (not safe))
                                         (cons _L229739_ __tmp244791))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp244790
                                   _stx229644_)))))
                           (__tmp244786
                            (let ((__obj244411
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj244411)
                              __obj244411)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp244787
                        gx#current-expander-context
                        __tmp244786))))
                  (___kont244352244353_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx229644_)))))
              (let ((___match244373244374_
                     (lambda (_e229655229689_
                              _hd229656229692_
                              _tl229657229694_
                              _e229658229697_
                              _hd229659229700_
                              _tl229660229702_
                              ___splice244350244351_
                              _target229661229705_
                              _tl229663229707_)
                       (letrec ((_loop229664229710_
                                 (lambda (_hd229662229713_ _bind229668229715_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd229662229713_))
                                       (let ((_e229665229718_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd229662229713_))))
                                         (let ((_lp-tl229667229723_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229665229718_)))
                                               (_lp-hd229666229721_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229665229718_))))
                                           (let ((__tmp244793
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd229666229721_
                                                          _bind229668229715_))))
                                             (declare (not safe))
                                             (_loop229664229710_
                                              _lp-tl229667229723_
                                              __tmp244793))))
                                       (let ((_bind229669229726_
                                              (reverse _bind229668229715_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl229660229702_))
                                             (let ((_e229670229729_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl229660229702_))))
                                               (let ((_tl229672229734_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e229670229729_)))
                                                     (_hd229671229732_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e229670229729_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl229672229734_))
                                                     (let ((_L229737_
                                                            _hd229671229732_)
                                                           (_L229738_
                                                            _bind229669229726_)
                                                           (_L229739_
                                                            _hd229656229692_))
                                                       (if (let ((__tmp244794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244795
                                 (lambda (_g229760229763_ _g229761229765_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229760229763_ _g229761229765_)))))
                            (declare (not safe))
                            (foldr1 __tmp244795 '() _L229738_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp244794))
                   (___kont244348244349_ _L229737_ _L229738_ _L229739_)
                   (___kont244352244353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont244352244353_))))
                                             (___kont244352244353_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop229664229710_ _target229661229705_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx244346244347_))
                    (let ((_e229655229689_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx244346244347_))))
                      (let ((_tl229657229694_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229655229689_)))
                            (_hd229656229692_
                             (let ()
                               (declare (not safe))
                               (##car _e229655229689_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229657229694_))
                            (let ((_e229658229697_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229657229694_))))
                              (let ((_tl229660229702_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229658229697_)))
                                    (_hd229659229700_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229658229697_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd229659229700_))
                                    (let ((___splice244350244351_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd229659229700_
                                              '0))))
                                      (let ((_tl229663229707_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244350244351_
                                                '1)))
                                            (_target229661229705_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice244350244351_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229663229707_))
                                            (___match244373244374_
                                             _e229655229689_
                                             _hd229656229692_
                                             _tl229657229694_
                                             _e229658229697_
                                             _hd229659229700_
                                             _tl229660229702_
                                             ___splice244350244351_
                                             _target229661229705_
                                             _tl229663229707_)
                                            (___kont244352244353_))))
                                    (___kont244352244353_))))
                            (___kont244352244353_))))
                    (___kont244352244353_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind229562_)
        (let* ((___stx244376244377_ _bind229562_)
               (_g229565229582_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx244376244377_)))))
          (let ((___kont244378244379_
                 (lambda (_L229618_ _L229619_)
                   (if (let () (declare (not safe)) (gx#identifier? _L229619_))
                       (let ((_$e229635_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L229618_))))
                         (if _$e229635_
                             _$e229635_
                             (let ((_$e229638_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L229618_))))
                               (if _$e229638_
                                   _$e229638_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L229618_))))))
                       '#f)))
                (___kont244380244381_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx244376244377_))
                (let ((_e229569229594_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx244376244377_))))
                  (let ((_tl229571229599_
                         (let () (declare (not safe)) (##cdr _e229569229594_)))
                        (_hd229570229597_
                         (let ()
                           (declare (not safe))
                           (##car _e229569229594_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229570229597_))
                        (let ((_e229572229602_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229570229597_))))
                          (let ((_tl229574229607_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229572229602_)))
                                (_hd229573229605_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229572229602_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229574229607_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229571229599_))
                                    (let ((_e229575229610_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229571229599_))))
                                      (let ((_tl229577229615_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229575229610_)))
                                            (_hd229576229613_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229575229610_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229577229615_))
                                            (___kont244378244379_
                                             _hd229576229613_
                                             _hd229573229605_)
                                            (___kont244380244381_))))
                                    (___kont244380244381_))
                                (___kont244380244381_))))
                        (___kont244380244381_))))
                (___kont244380244381_))))))))
