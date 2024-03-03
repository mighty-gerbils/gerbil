(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1709457370)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126984_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp129077 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126984_ __tmp129077))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126984_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126984_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126984_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126984_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl126984_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126967_ . _args126969_)
        (let ((__tmp129079
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126969_)
                     (gxc#compile-e__0 _stx126967_)
                     (let ((_arg1126974_ (car _args126969_))
                           (_rest126976_ (cdr _args126969_)))
                       (if (null? _rest126976_)
                           (gxc#compile-e__1 _stx126967_ _arg1126974_)
                           (let ((_arg2126979_ (car _rest126976_))
                                 (_rest126981_ (cdr _rest126976_)))
                             (if (null? _rest126981_)
                                 (gxc#compile-e__2
                                  _stx126967_
                                  _arg1126974_
                                  _arg2126979_)
                                 (apply gxc#compile-e
                                        _stx126967_
                                        _arg1126974_
                                        _arg2126979_
                                        _rest126981_))))))))
              (__tmp129078 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp129079
           gxc#current-compile-methods
           __tmp129078))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl126964_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp129080 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126964_ __tmp129080))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126964_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126964_ '%#call gxc#basic-expression-type-call%))
           _tbl126964_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126947_ . _args126949_)
        (let ((__tmp129082
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126949_)
                     (gxc#compile-e__0 _stx126947_)
                     (let ((_arg1126954_ (car _args126949_))
                           (_rest126956_ (cdr _args126949_)))
                       (if (null? _rest126956_)
                           (gxc#compile-e__1 _stx126947_ _arg1126954_)
                           (let ((_arg2126959_ (car _rest126956_))
                                 (_rest126961_ (cdr _rest126956_)))
                             (if (null? _rest126961_)
                                 (gxc#compile-e__2
                                  _stx126947_
                                  _arg1126954_
                                  _arg2126959_)
                                 (apply gxc#compile-e
                                        _stx126947_
                                        _arg1126954_
                                        _arg2126959_
                                        _rest126961_))))))))
              (__tmp129081 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp129082
           gxc#current-compile-methods
           __tmp129081))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126944_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp129083 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126944_ __tmp129083))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126944_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126944_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126944_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126944_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126944_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126944_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126944_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126944_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126944_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126944_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126944_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126944_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126944_ '%#set! gxc#collect-body-setq%))
           _tbl126944_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx126927_ . _args126929_)
        (let ((__tmp129085
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126929_)
                     (gxc#compile-e__0 _stx126927_)
                     (let ((_arg1126934_ (car _args126929_))
                           (_rest126936_ (cdr _args126929_)))
                       (if (null? _rest126936_)
                           (gxc#compile-e__1 _stx126927_ _arg1126934_)
                           (let ((_arg2126939_ (car _rest126936_))
                                 (_rest126941_ (cdr _rest126936_)))
                             (if (null? _rest126941_)
                                 (gxc#compile-e__2
                                  _stx126927_
                                  _arg1126934_
                                  _arg2126939_)
                                 (apply gxc#compile-e
                                        _stx126927_
                                        _arg1126934_
                                        _arg2126939_
                                        _rest126941_))))))))
              (__tmp129084 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp129085
           gxc#current-compile-methods
           __tmp129084))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl126924_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp129086 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126924_ __tmp129086))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126924_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126924_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126924_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126924_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126924_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126924_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126924_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126924_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126924_ '%#ref gxc#basic-expression-type-ref%))
           _tbl126924_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126907_ . _args126909_)
        (let ((__tmp129088
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126909_)
                     (gxc#compile-e__0 _stx126907_)
                     (let ((_arg1126914_ (car _args126909_))
                           (_rest126916_ (cdr _args126909_)))
                       (if (null? _rest126916_)
                           (gxc#compile-e__1 _stx126907_ _arg1126914_)
                           (let ((_arg2126919_ (car _rest126916_))
                                 (_rest126921_ (cdr _rest126916_)))
                             (if (null? _rest126921_)
                                 (gxc#compile-e__2
                                  _stx126907_
                                  _arg1126914_
                                  _arg2126919_)
                                 (apply gxc#compile-e
                                        _stx126907_
                                        _arg1126914_
                                        _arg2126919_
                                        _rest126921_))))))))
              (__tmp129087 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp129088
           gxc#current-compile-methods
           __tmp129087))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl126904_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp129089 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl126904_ __tmp129089))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126904_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126904_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126904_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126904_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl126904_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126887_ . _args126889_)
        (let ((__tmp129091
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126889_)
                     (gxc#compile-e__0 _stx126887_)
                     (let ((_arg1126894_ (car _args126889_))
                           (_rest126896_ (cdr _args126889_)))
                       (if (null? _rest126896_)
                           (gxc#compile-e__1 _stx126887_ _arg1126894_)
                           (let ((_arg2126899_ (car _rest126896_))
                                 (_rest126901_ (cdr _rest126896_)))
                             (if (null? _rest126901_)
                                 (gxc#compile-e__2
                                  _stx126887_
                                  _arg1126894_
                                  _arg2126899_)
                                 (apply gxc#compile-e
                                        _stx126887_
                                        _arg1126894_
                                        _arg2126899_
                                        _rest126901_))))))))
              (__tmp129090 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp129091
           gxc#current-compile-methods
           __tmp129090))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx126790_)
        (let* ((___stx126997126998_ _stx126790_)
               (_g126793126813_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126997126998_)))))
          (let ((___kont126999127000_
                 (lambda (_L126857_ _L126858_)
                   (let ((_sym126876_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126858_))))
                     (if (let ((__tmp129092 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp129092 _sym126876_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126876_))
                         (let ((_type126877126879_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126857_))))
                           (if _type126877126879_
                               (let ((_type126882_ _type126877126879_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126876_
                                  _type126882_))
                               '#f))))))
                (___kont127001127002_ (lambda () '#!void)))
            (let ((___match127030127031_
                   (lambda (_e126799126825_
                            _hd126798126828_
                            _tl126797126830_
                            _e126802126833_
                            _hd126801126836_
                            _tl126800126838_
                            _e126805126841_
                            _hd126804126844_
                            _tl126803126846_
                            _e126808126849_
                            _hd126807126852_
                            _tl126806126854_)
                     (let ((_L126857_ _hd126807126852_)
                           (_L126858_ _hd126804126844_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126858_))
                           (___kont126999127000_ _L126857_ _L126858_)
                           (___kont127001127002_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126997126998_))
                  (let ((_e126799126825_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126997126998_))))
                    (let ((_tl126797126830_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126799126825_)))
                          (_hd126798126828_
                           (let ()
                             (declare (not safe))
                             (##car _e126799126825_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126797126830_))
                          (let ((_e126802126833_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126797126830_))))
                            (let ((_tl126800126838_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126802126833_)))
                                  (_hd126801126836_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126802126833_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126801126836_))
                                  (let ((_e126805126841_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126801126836_))))
                                    (let ((_tl126803126846_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126805126841_)))
                                          (_hd126804126844_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126805126841_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126803126846_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126800126838_))
                                              (let ((_e126808126849_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126800126838_))))
                                                (let ((_tl126806126854_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126808126849_)))
                                                      (_hd126807126852_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126808126849_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126806126854_))
                                                      (___match127030127031_
                                                       _e126799126825_
                                                       _hd126798126828_
                                                       _tl126797126830_
                                                       _e126802126833_
                                                       _hd126801126836_
                                                       _tl126800126838_
                                                       _e126805126841_
                                                       _hd126804126844_
                                                       _tl126803126846_
                                                       _e126808126849_
                                                       _hd126807126852_
                                                       _tl126806126854_)
                                                      (___kont127001127002_))))
                                              (___kont127001127002_))
                                          (___kont127001127002_))))
                                  (___kont127001127002_))))
                          (___kont127001127002_))))
                  (___kont127001127002_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx126646_)
        (let* ((___stx127033127034_ _stx126646_)
               (_g126649126680_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127033127034_)))))
          (let ((___kont127035127036_
                 (lambda (_L126762_ _L126763_)
                   (let ((_sym126779_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126763_))))
                     (if (let ((__tmp129093 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp129093 _sym126779_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126779_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126779_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126779_))
                             (let ((_type126780126782_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126762_))))
                               (if _type126780126782_
                                   (let ((_type126785_ _type126780126782_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126779_
                                      _type126785_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L126762_)))))
                (___kont127037127038_
                 (lambda (_L126709_ _L126710_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L126709_)))))
            (let ((___match127066127067_
                   (lambda (_e126655126730_
                            _hd126654126733_
                            _tl126653126735_
                            _e126658126738_
                            _hd126657126741_
                            _tl126656126743_
                            _e126661126746_
                            _hd126660126749_
                            _tl126659126751_
                            _e126664126754_
                            _hd126663126757_
                            _tl126662126759_)
                     (let ((_L126762_ _hd126663126757_)
                           (_L126763_ _hd126660126749_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126763_))
                           (___kont127035127036_ _L126762_ _L126763_)
                           (___kont127037127038_
                            _hd126663126757_
                            _hd126657126741_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127033127034_))
                  (let ((_e126655126730_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127033127034_))))
                    (let ((_tl126653126735_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126655126730_)))
                          (_hd126654126733_
                           (let ()
                             (declare (not safe))
                             (##car _e126655126730_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126653126735_))
                          (let ((_e126658126738_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126653126735_))))
                            (let ((_tl126656126743_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126658126738_)))
                                  (_hd126657126741_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126658126738_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126657126741_))
                                  (let ((_e126661126746_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126657126741_))))
                                    (let ((_tl126659126751_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126661126746_)))
                                          (_hd126660126749_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126661126746_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126659126751_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126656126743_))
                                              (let ((_e126664126754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126656126743_))))
                                                (let ((_tl126662126759_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126664126754_)))
                                                      (_hd126663126757_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126664126754_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126662126759_))
                                                      (___match127066127067_
                                                       _e126655126730_
                                                       _hd126654126733_
                                                       _tl126653126735_
                                                       _e126658126738_
                                                       _hd126657126741_
                                                       _tl126656126743_
                                                       _e126661126746_
                                                       _hd126660126749_
                                                       _tl126659126751_
                                                       _e126664126754_
                                                       _hd126663126757_
                                                       _tl126662126759_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126649126680_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126649126680_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126656126743_))
                                              (let ((_e126675126701_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126656126743_))))
                                                (let ((_tl126673126706_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126675126701_)))
                                                      (_hd126674126704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126675126701_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126673126706_))
                                                      (___kont127037127038_
                                                       _hd126674126704_
                                                       _hd126657126741_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126649126680_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126649126680_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126656126743_))
                                      (let ((_e126675126701_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126656126743_))))
                                        (let ((_tl126673126706_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126675126701_)))
                                              (_hd126674126704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126675126701_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126673126706_))
                                              (___kont127037127038_
                                               _hd126674126704_
                                               _hd126657126741_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126649126680_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126649126680_))))))
                          (let () (declare (not safe)) (_g126649126680_)))))
                  (let () (declare (not safe)) (_g126649126680_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx126431_)
        (letrec ((_collect-e126433_
                  (lambda (_hd126590_ _expr126591_)
                    (let* ((___stx127089127090_ _hd126590_)
                           (_g126594126604_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx127089127090_)))))
                      (let ((___kont127091127092_
                             (lambda (_L126624_)
                               (let ((_sym126635_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126624_))))
                                 (if (let ((__tmp129094
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp129094 _sym126635_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym126635_))
                                     (let ((_type126636126638_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126591_))))
                                       (if _type126636126638_
                                           (let ((_type126641_
                                                  _type126636126638_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym126635_
                                              _type126641_
                                              '#t))
                                           '#f))))))
                            (___kont127093127094_ (lambda () '#!void)))
                        (let ((___match127102127103_
                               (lambda (_e126599126616_
                                        _hd126598126619_
                                        _tl126597126621_)
                                 (let ((_L126624_ _hd126598126619_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126624_))
                                       (___kont127091127092_ _L126624_)
                                       (___kont127093127094_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx127089127090_))
                              (let ((_e126599126616_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx127089127090_))))
                                (let ((_tl126597126621_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126599126616_)))
                                      (_hd126598126619_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126599126616_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126597126621_))
                                      (___match127102127103_
                                       _e126599126616_
                                       _hd126598126619_
                                       _tl126597126621_)
                                      (___kont127093127094_))))
                              (___kont127093127094_))))))))
          (let* ((_g126435126470_
                  (lambda (_g126436126467_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126436126467_))))
                 (_g126434126587_
                  (lambda (_g126436126473_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126436126473_))
                        (let ((_e126442126475_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126436126473_))))
                          (let ((_hd126441126478_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126442126475_)))
                                (_tl126440126480_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126442126475_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126440126480_))
                                (let ((_e126445126483_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126440126480_))))
                                  (let ((_hd126444126486_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126445126483_)))
                                        (_tl126443126488_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126445126483_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126444126486_))
                                        (let ((_g129095_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126444126486_
                                                  '0))))
                                          (begin
                                            (let ((_g129096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g129095_)
                                                         (##vector-length
                                                          _g129095_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g129096_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g129096_)))
                                            (let ((_target126446126491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129095_
                                                      0)))
                                                  (_tl126448126493_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129095_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126448126493_))
                                                  (letrec ((_loop126449126496_
                                                            (lambda (_hd126447126499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126453126501_
                             _hd126454126503_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126447126499_))
                          (let ((_e126450126506_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126447126499_))))
                            (let ((_lp-hd126451126509_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126450126506_)))
                                  (_lp-tl126452126511_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126450126506_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126451126509_))
                                  (let ((_e126459126514_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126451126509_))))
                                    (let ((_hd126458126517_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126459126514_)))
                                          (_tl126457126519_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126459126514_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126457126519_))
                                          (let ((_e126462126522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126457126519_))))
                                            (let ((_hd126461126525_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126462126522_)))
                                                  (_tl126460126527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126462126522_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126460126527_))
                                                  (let ((__tmp129101
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126461126525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126453126501_)))
                (__tmp129100
                 (let ()
                   (declare (not safe))
                   (cons _hd126458126517_ _hd126454126503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126449126496_
                                                     _lp-tl126452126511_
                                                     __tmp129101
                                                     __tmp129100))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126435126470_
                                                     _g126436126473_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126435126470_
                                             _g126436126473_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126435126470_ _g126436126473_)))))
                          (let ((_expr126455126530_
                                 (reverse _expr126453126501_))
                                (_hd126456126532_ (reverse _hd126454126503_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126443126488_))
                                (let ((_e126465126535_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126443126488_))))
                                  (let ((_hd126464126538_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126465126535_)))
                                        (_tl126463126540_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126465126535_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126463126540_))
                                        ((lambda (_L126543_
                                                  _L126544_
                                                  _L126545_)
                                           (for-each
                                            _collect-e126433_
                                            (let ((__tmp129097
                                                   (lambda (_g126565126568_
                                                            _g126566126570_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126565126568_
                                                             _g126566126570_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129097
                                                      '()
                                                      _L126545_))
                                            (let ((__tmp129098
                                                   (lambda (_g126572126575_
                                                            _g126573126577_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126572126575_
                                                             _g126573126577_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129098
                                                      '()
                                                      _L126544_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp129099
                                                   (lambda (_g126579126582_
                                                            _g126580126584_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126579126582_
                                                             _g126580126584_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129099
                                                      '()
                                                      _L126544_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L126543_)))
                                         _hd126464126538_
                                         _expr126455126530_
                                         _hd126456126532_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126435126470_ _g126436126473_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126435126470_ _g126436126473_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126449126496_
                                                       _target126446126491_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126435126470_
                                                     _g126436126473_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126435126470_ _g126436126473_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126435126470_ _g126436126473_)))))
                        (let ()
                          (declare (not safe))
                          (_g126435126470_ _g126436126473_))))))
            (declare (not safe))
            (_g126434126587_ _stx126431_)))))
    (define gxc#collect-type-call%
      (lambda (_stx125923_)
        (let* ((___stx127105127106_ _stx125923_)
               (_g125927126042_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127105127106_)))))
          (let ((___kont127107127108_
                 (lambda (_L126381_ _L126382_ _L126383_ _L126384_ _L126385_)
                   (let ((__tmp129105
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126384_)))
                         (__tmp129104
                          (let () (declare (not safe)) (gx#stx-e _L126383_)))
                         (__tmp129103
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126382_)))
                         (__tmp129102
                          (let () (declare (not safe)) (gx#stx-e _L126381_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp129105
                      __tmp129104
                      __tmp129103
                      __tmp129102))))
                (___kont127109127110_
                 (lambda (_L126209_ _L126210_ _L126211_ _L126212_)
                   (let ((__tmp129108
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126211_)))
                         (__tmp129107
                          (let () (declare (not safe)) (gx#stx-e _L126210_)))
                         (__tmp129106
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126209_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp129108
                      __tmp129107
                      __tmp129106
                      '#f))))
                (___kont127111127112_
                 (lambda (_L126079_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp129109
                           (lambda (_g126092126095_ _g126093126097_)
                             (let ()
                               (declare (not safe))
                               (cons _g126092126095_ _g126093126097_)))))
                      (declare (not safe))
                      (foldr1 __tmp129109 '() _L126079_))))))
            (let* ((___match127362127363_
                    (lambda (_e126028126047_
                             _hd126027126050_
                             _tl126026126052_
                             ___splice127113127114_
                             _target126029126055_
                             _tl126031126057_)
                      (letrec ((_loop126032126060_
                                (lambda (_hd126030126063_ _expr126036126065_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126030126063_))
                                      (let ((_e126033126068_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126030126063_))))
                                        (let ((_lp-tl126035126073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126033126068_)))
                                              (_lp-hd126034126071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126033126068_))))
                                          (let ((__tmp129110
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd126034126071_
                                                         _expr126036126065_))))
                                            (declare (not safe))
                                            (_loop126032126060_
                                             _lp-tl126035126073_
                                             __tmp129110))))
                                      (let ((_expr126037126076_
                                             (reverse _expr126036126065_)))
                                        (___kont127111127112_
                                         _expr126037126076_))))))
                        (let ()
                          (declare (not safe))
                          (_loop126032126060_ _target126029126055_ '())))))
                   (___match127242127243_
                    (lambda (_e125936126253_
                             _hd125935126256_
                             _tl125934126258_
                             _e125939126261_
                             _hd125938126264_
                             _tl125937126266_
                             _e125942126269_
                             _hd125941126272_
                             _tl125940126274_
                             _e125945126277_
                             _hd125944126280_
                             _tl125943126282_
                             _e125948126285_
                             _hd125947126288_
                             _tl125946126290_
                             _e125951126293_
                             _hd125950126296_
                             _tl125949126298_
                             _e125954126301_
                             _hd125953126304_
                             _tl125952126306_
                             _e125957126309_
                             _hd125956126312_
                             _tl125955126314_
                             _e125960126317_
                             _hd125959126320_
                             _tl125958126322_
                             _e125963126325_
                             _hd125962126328_
                             _tl125961126330_
                             _e125966126333_
                             _hd125965126336_
                             _tl125964126338_
                             _e125969126341_
                             _hd125968126344_
                             _tl125967126346_
                             _e125972126349_
                             _hd125971126352_
                             _tl125970126354_
                             _e125975126357_
                             _hd125974126360_
                             _tl125973126362_
                             _e125978126365_
                             _hd125977126368_
                             _tl125976126370_
                             _e125981126373_
                             _hd125980126376_
                             _tl125979126378_)
                      (let ((_L126381_ _hd125980126376_)
                            (_L126382_ _hd125971126352_)
                            (_L126383_ _hd125962126328_)
                            (_L126384_ _hd125953126304_)
                            (_L126385_ _hd125944126280_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126385_
                               'bind-method!))
                            (___kont127107127108_
                             _L126381_
                             _L126382_
                             _L126383_
                             _L126384_
                             _L126385_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125934126258_))
                                (let ((___splice127113127114_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125934126258_
                                          '0))))
                                  (let ((_tl126031126057_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice127113127114_
                                            '1)))
                                        (_target126029126055_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice127113127114_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126031126057_))
                                        (___match127362127363_
                                         _e125936126253_
                                         _hd125935126256_
                                         _tl125934126258_
                                         ___splice127113127114_
                                         _target126029126055_
                                         _tl126031126057_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125927126042_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125927126042_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127105127106_))
                  (let ((_e125936126253_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127105127106_))))
                    (let ((_tl125934126258_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125936126253_)))
                          (_hd125935126256_
                           (let ()
                             (declare (not safe))
                             (##car _e125936126253_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125934126258_))
                          (let ((_e125939126261_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125934126258_))))
                            (let ((_tl125937126266_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125939126261_)))
                                  (_hd125938126264_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125939126261_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125938126264_))
                                  (let ((_e125942126269_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125938126264_))))
                                    (let ((_tl125940126274_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125942126269_)))
                                          (_hd125941126272_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125942126269_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125941126272_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125941126272_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125940126274_))
                                                  (let ((_e125945126277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125940126274_))))
                                                    (let ((_tl125943126282_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125945126277_)))
                                                          (_hd125944126280_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125945126277_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125943126282_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125937126266_))
                      (let ((_e125948126285_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125937126266_))))
                        (let ((_tl125946126290_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125948126285_)))
                              (_hd125947126288_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125948126285_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125947126288_))
                              (let ((_e125951126293_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125947126288_))))
                                (let ((_tl125949126298_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125951126293_)))
                                      (_hd125950126296_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125951126293_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125950126296_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125950126296_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125949126298_))
                                              (let ((_e125954126301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125949126298_))))
                                                (let ((_tl125952126306_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125954126301_)))
                                                      (_hd125953126304_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125954126301_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125952126306_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125946126290_))
                                                          (let ((_e125957126309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125946126290_))))
                    (let ((_tl125955126314_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125957126309_)))
                          (_hd125956126312_
                           (let ()
                             (declare (not safe))
                             (##car _e125957126309_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125956126312_))
                          (let ((_e125960126317_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125956126312_))))
                            (let ((_tl125958126322_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125960126317_)))
                                  (_hd125959126320_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125960126317_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125959126320_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125959126320_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125958126322_))
                                          (let ((_e125963126325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125958126322_))))
                                            (let ((_tl125961126330_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125963126325_)))
                                                  (_hd125962126328_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125963126325_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125961126330_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125955126314_))
                                                      (let ((_e125966126333_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125955126314_))))
                (let ((_tl125964126338_
                       (let () (declare (not safe)) (##cdr _e125966126333_)))
                      (_hd125965126336_
                       (let () (declare (not safe)) (##car _e125966126333_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125965126336_))
                      (let ((_e125969126341_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125965126336_))))
                        (let ((_tl125967126346_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125969126341_)))
                              (_hd125968126344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125969126341_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125968126344_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125968126344_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125967126346_))
                                      (let ((_e125972126349_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125967126346_))))
                                        (let ((_tl125970126354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125972126349_)))
                                              (_hd125971126352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125972126349_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125970126354_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125964126338_))
                                                  (let ((_e125975126357_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125964126338_))))
                                                    (let ((_tl125973126362_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125975126357_)))
                                                          (_hd125974126360_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125975126357_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125974126360_))
                                                          (let ((_e125978126365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125974126360_))))
                    (let ((_tl125976126370_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125978126365_)))
                          (_hd125977126368_
                           (let ()
                             (declare (not safe))
                             (##car _e125978126365_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125977126368_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125977126368_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125976126370_))
                                  (let ((_e125981126373_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125976126370_))))
                                    (let ((_tl125979126378_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125981126373_)))
                                          (_hd125980126376_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125981126373_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125979126378_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125973126362_))
                                              (___match127242127243_
                                               _e125936126253_
                                               _hd125935126256_
                                               _tl125934126258_
                                               _e125939126261_
                                               _hd125938126264_
                                               _tl125937126266_
                                               _e125942126269_
                                               _hd125941126272_
                                               _tl125940126274_
                                               _e125945126277_
                                               _hd125944126280_
                                               _tl125943126282_
                                               _e125948126285_
                                               _hd125947126288_
                                               _tl125946126290_
                                               _e125951126293_
                                               _hd125950126296_
                                               _tl125949126298_
                                               _e125954126301_
                                               _hd125953126304_
                                               _tl125952126306_
                                               _e125957126309_
                                               _hd125956126312_
                                               _tl125955126314_
                                               _e125960126317_
                                               _hd125959126320_
                                               _tl125958126322_
                                               _e125963126325_
                                               _hd125962126328_
                                               _tl125961126330_
                                               _e125966126333_
                                               _hd125965126336_
                                               _tl125964126338_
                                               _e125969126341_
                                               _hd125968126344_
                                               _tl125967126346_
                                               _e125972126349_
                                               _hd125971126352_
                                               _tl125970126354_
                                               _e125975126357_
                                               _hd125974126360_
                                               _tl125973126362_
                                               _e125978126365_
                                               _hd125977126368_
                                               _tl125976126370_
                                               _e125981126373_
                                               _hd125980126376_
                                               _tl125979126378_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125934126258_))
                                                  (let ((___splice127113127114_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125934126258_
                                                            '0))))
                                                    (let ((_tl126031126057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127113127114_
                                                              '1)))
                                                          (_target126029126055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127113127114_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126031126057_))
                                                          (___match127362127363_
                                                           _e125936126253_
                                                           _hd125935126256_
                                                           _tl125934126258_
                                                           ___splice127113127114_
                                                           _target126029126055_
                                                           _tl126031126057_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125927126042_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125927126042_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125934126258_))
                                              (let ((___splice127113127114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125934126258_
                                                        '0))))
                                                (let ((_tl126031126057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127113127114_
                                                          '1)))
                                                      (_target126029126055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127113127114_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126031126057_))
                                                      (___match127362127363_
                                                       _e125936126253_
                                                       _hd125935126256_
                                                       _tl125934126258_
                                                       ___splice127113127114_
                                                       _target126029126055_
                                                       _tl126031126057_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125927126042_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125927126042_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125934126258_))
                                      (let ((___splice127113127114_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125934126258_
                                                '0))))
                                        (let ((_tl126031126057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127113127114_
                                                  '1)))
                                              (_target126029126055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127113127114_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126031126057_))
                                              (___match127362127363_
                                               _e125936126253_
                                               _hd125935126256_
                                               _tl125934126258_
                                               ___splice127113127114_
                                               _target126029126055_
                                               _tl126031126057_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125927126042_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125927126042_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125934126258_))
                                  (let ((___splice127113127114_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125934126258_
                                            '0))))
                                    (let ((_tl126031126057_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127113127114_
                                              '1)))
                                          (_target126029126055_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127113127114_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126031126057_))
                                          (___match127362127363_
                                           _e125936126253_
                                           _hd125935126256_
                                           _tl125934126258_
                                           ___splice127113127114_
                                           _target126029126055_
                                           _tl126031126057_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125927126042_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125927126042_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125934126258_))
                              (let ((___splice127113127114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125934126258_
                                        '0))))
                                (let ((_tl126031126057_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127113127114_
                                          '1)))
                                      (_target126029126055_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127113127114_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126031126057_))
                                      (___match127362127363_
                                       _e125936126253_
                                       _hd125935126256_
                                       _tl125934126258_
                                       ___splice127113127114_
                                       _target126029126055_
                                       _tl126031126057_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125927126042_)))))
                              (let ()
                                (declare (not safe))
                                (_g125927126042_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125934126258_))
                      (let ((___splice127113127114_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125934126258_ '0))))
                        (let ((_tl126031126057_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127113127114_ '1)))
                              (_target126029126055_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127113127114_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126031126057_))
                              (___match127362127363_
                               _e125936126253_
                               _hd125935126256_
                               _tl125934126258_
                               ___splice127113127114_
                               _target126029126055_
                               _tl126031126057_)
                              (let ()
                                (declare (not safe))
                                (_g125927126042_)))))
                      (let () (declare (not safe)) (_g125927126042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125964126338_))
                                                      (if (let ((__tmp129111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp129111 'bind-method!))
                  (let ((_L126209_ _hd125971126352_)
                        (_L126210_ _hd125962126328_)
                        (_L126211_ _hd125953126304_)
                        (_L126212_ _hd125944126280_))
                    (___kont127109127110_
                     _L126209_
                     _L126210_
                     _L126211_
                     _L126212_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125934126258_))
                      (let ((___splice127113127114_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125934126258_ '0))))
                        (let ((_tl126031126057_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127113127114_ '1)))
                              (_target126029126055_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127113127114_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126031126057_))
                              (___match127362127363_
                               _e125936126253_
                               _hd125935126256_
                               _tl125934126258_
                               ___splice127113127114_
                               _target126029126055_
                               _tl126031126057_)
                              (let ()
                                (declare (not safe))
                                (_g125927126042_)))))
                      (let () (declare (not safe)) (_g125927126042_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125934126258_))
                  (let ((___splice127113127114_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125934126258_ '0))))
                    (let ((_tl126031126057_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127113127114_ '1)))
                          (_target126029126055_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127113127114_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126031126057_))
                          (___match127362127363_
                           _e125936126253_
                           _hd125935126256_
                           _tl125934126258_
                           ___splice127113127114_
                           _target126029126055_
                           _tl126031126057_)
                          (let () (declare (not safe)) (_g125927126042_)))))
                  (let () (declare (not safe)) (_g125927126042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125934126258_))
                                                  (let ((___splice127113127114_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125934126258_
                                                            '0))))
                                                    (let ((_tl126031126057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127113127114_
                                                              '1)))
                                                          (_target126029126055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127113127114_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126031126057_))
                                                          (___match127362127363_
                                                           _e125936126253_
                                                           _hd125935126256_
                                                           _tl125934126258_
                                                           ___splice127113127114_
                                                           _target126029126055_
                                                           _tl126031126057_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125927126042_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125927126042_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125934126258_))
                                          (let ((___splice127113127114_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125934126258_
                                                    '0))))
                                            (let ((_tl126031126057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127113127114_
                                                      '1)))
                                                  (_target126029126055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127113127114_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126031126057_))
                                                  (___match127362127363_
                                                   _e125936126253_
                                                   _hd125935126256_
                                                   _tl125934126258_
                                                   ___splice127113127114_
                                                   _target126029126055_
                                                   _tl126031126057_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125927126042_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125927126042_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125934126258_))
                                      (let ((___splice127113127114_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125934126258_
                                                '0))))
                                        (let ((_tl126031126057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127113127114_
                                                  '1)))
                                              (_target126029126055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127113127114_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126031126057_))
                                              (___match127362127363_
                                               _e125936126253_
                                               _hd125935126256_
                                               _tl125934126258_
                                               ___splice127113127114_
                                               _target126029126055_
                                               _tl126031126057_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125927126042_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125927126042_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125934126258_))
                                  (let ((___splice127113127114_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125934126258_
                                            '0))))
                                    (let ((_tl126031126057_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127113127114_
                                              '1)))
                                          (_target126029126055_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127113127114_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126031126057_))
                                          (___match127362127363_
                                           _e125936126253_
                                           _hd125935126256_
                                           _tl125934126258_
                                           ___splice127113127114_
                                           _target126029126055_
                                           _tl126031126057_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125927126042_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125927126042_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125934126258_))
                          (let ((___splice127113127114_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125934126258_
                                    '0))))
                            (let ((_tl126031126057_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127113127114_ '1)))
                                  (_target126029126055_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127113127114_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126031126057_))
                                  (___match127362127363_
                                   _e125936126253_
                                   _hd125935126256_
                                   _tl125934126258_
                                   ___splice127113127114_
                                   _target126029126055_
                                   _tl126031126057_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125927126042_)))))
                          (let () (declare (not safe)) (_g125927126042_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125934126258_))
                  (let ((___splice127113127114_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125934126258_ '0))))
                    (let ((_tl126031126057_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127113127114_ '1)))
                          (_target126029126055_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127113127114_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126031126057_))
                          (___match127362127363_
                           _e125936126253_
                           _hd125935126256_
                           _tl125934126258_
                           ___splice127113127114_
                           _target126029126055_
                           _tl126031126057_)
                          (let () (declare (not safe)) (_g125927126042_)))))
                  (let () (declare (not safe)) (_g125927126042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125934126258_))
                                                      (let ((___splice127113127114_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125934126258_ '0))))
                (let ((_tl126031126057_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127113127114_ '1)))
                      (_target126029126055_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127113127114_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl126031126057_))
                      (___match127362127363_
                       _e125936126253_
                       _hd125935126256_
                       _tl125934126258_
                       ___splice127113127114_
                       _target126029126055_
                       _tl126031126057_)
                      (let () (declare (not safe)) (_g125927126042_)))))
              (let () (declare (not safe)) (_g125927126042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125934126258_))
                                              (let ((___splice127113127114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125934126258_
                                                        '0))))
                                                (let ((_tl126031126057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127113127114_
                                                          '1)))
                                                      (_target126029126055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127113127114_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126031126057_))
                                                      (___match127362127363_
                                                       _e125936126253_
                                                       _hd125935126256_
                                                       _tl125934126258_
                                                       ___splice127113127114_
                                                       _target126029126055_
                                                       _tl126031126057_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125927126042_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125927126042_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125934126258_))
                                          (let ((___splice127113127114_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125934126258_
                                                    '0))))
                                            (let ((_tl126031126057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127113127114_
                                                      '1)))
                                                  (_target126029126055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127113127114_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126031126057_))
                                                  (___match127362127363_
                                                   _e125936126253_
                                                   _hd125935126256_
                                                   _tl125934126258_
                                                   ___splice127113127114_
                                                   _target126029126055_
                                                   _tl126031126057_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125927126042_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125927126042_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125934126258_))
                                      (let ((___splice127113127114_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125934126258_
                                                '0))))
                                        (let ((_tl126031126057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127113127114_
                                                  '1)))
                                              (_target126029126055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127113127114_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126031126057_))
                                              (___match127362127363_
                                               _e125936126253_
                                               _hd125935126256_
                                               _tl125934126258_
                                               ___splice127113127114_
                                               _target126029126055_
                                               _tl126031126057_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125927126042_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125927126042_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125934126258_))
                              (let ((___splice127113127114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125934126258_
                                        '0))))
                                (let ((_tl126031126057_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127113127114_
                                          '1)))
                                      (_target126029126055_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127113127114_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126031126057_))
                                      (___match127362127363_
                                       _e125936126253_
                                       _hd125935126256_
                                       _tl125934126258_
                                       ___splice127113127114_
                                       _target126029126055_
                                       _tl126031126057_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125927126042_)))))
                              (let ()
                                (declare (not safe))
                                (_g125927126042_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125934126258_))
                      (let ((___splice127113127114_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125934126258_ '0))))
                        (let ((_tl126031126057_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127113127114_ '1)))
                              (_target126029126055_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127113127114_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126031126057_))
                              (___match127362127363_
                               _e125936126253_
                               _hd125935126256_
                               _tl125934126258_
                               ___splice127113127114_
                               _target126029126055_
                               _tl126031126057_)
                              (let ()
                                (declare (not safe))
                                (_g125927126042_)))))
                      (let () (declare (not safe)) (_g125927126042_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125934126258_))
                  (let ((___splice127113127114_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125934126258_ '0))))
                    (let ((_tl126031126057_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127113127114_ '1)))
                          (_target126029126055_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127113127114_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126031126057_))
                          (___match127362127363_
                           _e125936126253_
                           _hd125935126256_
                           _tl125934126258_
                           ___splice127113127114_
                           _target126029126055_
                           _tl126031126057_)
                          (let () (declare (not safe)) (_g125927126042_)))))
                  (let () (declare (not safe)) (_g125927126042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125934126258_))
                                                  (let ((___splice127113127114_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125934126258_
                                                            '0))))
                                                    (let ((_tl126031126057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127113127114_
                                                              '1)))
                                                          (_target126029126055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127113127114_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126031126057_))
                                                          (___match127362127363_
                                                           _e125936126253_
                                                           _hd125935126256_
                                                           _tl125934126258_
                                                           ___splice127113127114_
                                                           _target126029126055_
                                                           _tl126031126057_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125927126042_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125927126042_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125934126258_))
                                              (let ((___splice127113127114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125934126258_
                                                        '0))))
                                                (let ((_tl126031126057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127113127114_
                                                          '1)))
                                                      (_target126029126055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127113127114_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126031126057_))
                                                      (___match127362127363_
                                                       _e125936126253_
                                                       _hd125935126256_
                                                       _tl125934126258_
                                                       ___splice127113127114_
                                                       _target126029126055_
                                                       _tl126031126057_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125927126042_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125927126042_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125934126258_))
                                          (let ((___splice127113127114_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125934126258_
                                                    '0))))
                                            (let ((_tl126031126057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127113127114_
                                                      '1)))
                                                  (_target126029126055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127113127114_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126031126057_))
                                                  (___match127362127363_
                                                   _e125936126253_
                                                   _hd125935126256_
                                                   _tl125934126258_
                                                   ___splice127113127114_
                                                   _target126029126055_
                                                   _tl126031126057_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125927126042_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125927126042_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125934126258_))
                                  (let ((___splice127113127114_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125934126258_
                                            '0))))
                                    (let ((_tl126031126057_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127113127114_
                                              '1)))
                                          (_target126029126055_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127113127114_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126031126057_))
                                          (___match127362127363_
                                           _e125936126253_
                                           _hd125935126256_
                                           _tl125934126258_
                                           ___splice127113127114_
                                           _target126029126055_
                                           _tl126031126057_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125927126042_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125927126042_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125934126258_))
                          (let ((___splice127113127114_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125934126258_
                                    '0))))
                            (let ((_tl126031126057_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127113127114_ '1)))
                                  (_target126029126055_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127113127114_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126031126057_))
                                  (___match127362127363_
                                   _e125936126253_
                                   _hd125935126256_
                                   _tl125934126258_
                                   ___splice127113127114_
                                   _target126029126055_
                                   _tl126031126057_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125927126042_)))))
                          (let () (declare (not safe)) (_g125927126042_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125934126258_))
                      (let ((___splice127113127114_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125934126258_ '0))))
                        (let ((_tl126031126057_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127113127114_ '1)))
                              (_target126029126055_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127113127114_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126031126057_))
                              (___match127362127363_
                               _e125936126253_
                               _hd125935126256_
                               _tl125934126258_
                               ___splice127113127114_
                               _target126029126055_
                               _tl126031126057_)
                              (let ()
                                (declare (not safe))
                                (_g125927126042_)))))
                      (let () (declare (not safe)) (_g125927126042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125934126258_))
                                                      (let ((___splice127113127114_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125934126258_ '0))))
                (let ((_tl126031126057_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127113127114_ '1)))
                      (_target126029126055_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127113127114_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl126031126057_))
                      (___match127362127363_
                       _e125936126253_
                       _hd125935126256_
                       _tl125934126258_
                       ___splice127113127114_
                       _target126029126055_
                       _tl126031126057_)
                      (let () (declare (not safe)) (_g125927126042_)))))
              (let () (declare (not safe)) (_g125927126042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125934126258_))
                                                  (let ((___splice127113127114_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125934126258_
                                                            '0))))
                                                    (let ((_tl126031126057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127113127114_
                                                              '1)))
                                                          (_target126029126055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127113127114_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126031126057_))
                                                          (___match127362127363_
                                                           _e125936126253_
                                                           _hd125935126256_
                                                           _tl125934126258_
                                                           ___splice127113127114_
                                                           _target126029126055_
                                                           _tl126031126057_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125927126042_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125927126042_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125934126258_))
                                              (let ((___splice127113127114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125934126258_
                                                        '0))))
                                                (let ((_tl126031126057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127113127114_
                                                          '1)))
                                                      (_target126029126055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127113127114_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126031126057_))
                                                      (___match127362127363_
                                                       _e125936126253_
                                                       _hd125935126256_
                                                       _tl125934126258_
                                                       ___splice127113127114_
                                                       _target126029126055_
                                                       _tl126031126057_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125927126042_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125927126042_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125934126258_))
                                      (let ((___splice127113127114_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125934126258_
                                                '0))))
                                        (let ((_tl126031126057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127113127114_
                                                  '1)))
                                              (_target126029126055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127113127114_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126031126057_))
                                              (___match127362127363_
                                               _e125936126253_
                                               _hd125935126256_
                                               _tl125934126258_
                                               ___splice127113127114_
                                               _target126029126055_
                                               _tl126031126057_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125927126042_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125927126042_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125934126258_))
                              (let ((___splice127113127114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125934126258_
                                        '0))))
                                (let ((_tl126031126057_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127113127114_
                                          '1)))
                                      (_target126029126055_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127113127114_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126031126057_))
                                      (___match127362127363_
                                       _e125936126253_
                                       _hd125935126256_
                                       _tl125934126258_
                                       ___splice127113127114_
                                       _target126029126055_
                                       _tl126031126057_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125927126042_)))))
                              (let ()
                                (declare (not safe))
                                (_g125927126042_))))))
                  (let () (declare (not safe)) (_g125927126042_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx125863_)
        (let* ((___stx127365127366_ _stx125863_)
               (_g125866125879_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127365127366_)))))
          (let ((___kont127367127368_
                 (lambda (_L125907_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L125907_))))
                (___kont127369127370_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127365127366_))
                (let ((_e125871125891_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127365127366_))))
                  (let ((_tl125869125896_
                         (let () (declare (not safe)) (##cdr _e125871125891_)))
                        (_hd125870125894_
                         (let ()
                           (declare (not safe))
                           (##car _e125871125891_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125869125896_))
                        (let ((_e125874125899_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125869125896_))))
                          (let ((_tl125872125904_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125874125899_)))
                                (_hd125873125902_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125874125899_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125872125904_))
                                (___kont127367127368_ _hd125873125902_)
                                (___kont127369127370_))))
                        (___kont127369127370_))))
                (___kont127369127370_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx125743_)
        (let* ((_g125745125762_
                (lambda (_g125746125759_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125746125759_))))
               (_g125744125860_
                (lambda (_g125746125765_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125746125765_))
                      (let ((_e125751125767_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125746125765_))))
                        (let ((_hd125750125770_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125751125767_)))
                              (_tl125749125772_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125751125767_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125749125772_))
                              (let ((_e125754125775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125749125772_))))
                                (let ((_hd125753125778_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125754125775_)))
                                      (_tl125752125780_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125754125775_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125752125780_))
                                      (let ((_e125757125783_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125752125780_))))
                                        (let ((_hd125756125786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125757125783_)))
                                              (_tl125755125788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125757125783_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125755125788_))
                                              ((lambda (_L125791_ _L125792_)
                                                 (let* ((___stx127387127388_
                                                         _L125792_)
                                                        (_g125808125819_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127387127388_)))))
                                                   (let ((___kont127389127390_
                                                          (lambda (_L125839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125840_)
                    (let ((_$e125852_
                           (let ((__tmp129112
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125840_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp129112))))
                      (if _$e125852_
                          ((lambda (_type-e125855_)
                             (_type-e125855_ _stx125743_ _L125792_))
                           _$e125852_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L125791_))))))
                 (___kont127391127392_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L125791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127398127399_
                                                            (lambda (_e125814125831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125813125834_
                             _tl125812125836_)
                      (let ((_L125839_ _tl125812125836_)
                            (_L125840_ _hd125813125834_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125840_))
                            (___kont127389127390_ _L125839_ _L125840_)
                            (___kont127391127392_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127387127388_))
                   (let ((_e125814125831_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127387127388_))))
                     (let ((_tl125812125836_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125814125831_)))
                           (_hd125813125834_
                            (let ()
                              (declare (not safe))
                              (##car _e125814125831_))))
                       (___match127398127399_
                        _e125814125831_
                        _hd125813125834_
                        _tl125812125836_)))
                   (___kont127391127392_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125756125786_
                                               _hd125753125778_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125745125762_
                                                 _g125746125765_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125745125762_ _g125746125765_)))))
                              (let ()
                                (declare (not safe))
                                (_g125745125762_ _g125746125765_)))))
                      (let ()
                        (declare (not safe))
                        (_g125745125762_ _g125746125765_))))))
          (declare (not safe))
          (_g125744125860_ _stx125743_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125587_ _ann125588_)
        (let* ((_g125590125627_
                (lambda (_g125591125624_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125591125624_))))
               (_g125589125740_
                (lambda (_g125591125630_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125591125630_))
                      (let ((_e125601125632_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125591125630_))))
                        (let ((_hd125600125635_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125601125632_)))
                              (_tl125599125637_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125601125632_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125599125637_))
                              (let ((_e125604125640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125599125637_))))
                                (let ((_hd125603125643_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125604125640_)))
                                      (_tl125602125645_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125604125640_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125602125645_))
                                      (let ((_e125607125648_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125602125645_))))
                                        (let ((_hd125606125651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125607125648_)))
                                              (_tl125605125653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125607125648_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125605125653_))
                                              (let ((_e125610125656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125605125653_))))
                                                (let ((_hd125609125659_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125610125656_)))
                                                      (_tl125608125661_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125610125656_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125608125661_))
                                                      (let ((_e125613125664_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125608125661_))))
                (let ((_hd125612125667_
                       (let () (declare (not safe)) (##car _e125613125664_)))
                      (_tl125611125669_
                       (let () (declare (not safe)) (##cdr _e125613125664_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125611125669_))
                      (let ((_e125616125672_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125611125669_))))
                        (let ((_hd125615125675_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125616125672_)))
                              (_tl125614125677_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125616125672_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125614125677_))
                              (let ((_e125619125680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125614125677_))))
                                (let ((_hd125618125683_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125619125680_)))
                                      (_tl125617125685_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125619125680_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125617125685_))
                                      (let ((_e125622125688_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125617125685_))))
                                        (let ((_hd125621125691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125622125688_)))
                                              (_tl125620125693_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125622125688_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125620125693_))
                                              ((lambda (_L125696_
                                                        _L125697_
                                                        _L125698_
                                                        _L125699_
                                                        _L125700_
                                                        _L125701_
                                                        _L125702_)
                                                 (let ((_type-id125732_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125702_)))
                                                       (_super125733_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125701_)))
                                                       (_slots125734_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125700_)))
                                                       (_ctor-method125735_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125699_)))
                                                       (_struct?125736_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125698_)))
                                                       (_final?125737_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125697_)))
                                                       (_metaclass125738_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125696_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125696_))
                                                            '#f)))
                                                   (let ((__obj129070
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
                                                      __obj129070
                                                      _type-id125732_
                                                      _super125733_
                                                      _slots125734_
                                                      _ctor-method125735_
                                                      _struct?125736_
                                                      _final?125737_
                                                      _metaclass125738_)
                                                     __obj129070)))
                                               _hd125621125691_
                                               _hd125618125683_
                                               _hd125615125675_
                                               _hd125612125667_
                                               _hd125609125659_
                                               _hd125606125651_
                                               _hd125603125643_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125590125627_
                                                 _g125591125630_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125590125627_ _g125591125630_)))))
                              (let ()
                                (declare (not safe))
                                (_g125590125627_ _g125591125630_)))))
                      (let ()
                        (declare (not safe))
                        (_g125590125627_ _g125591125630_)))))
              (let ()
                (declare (not safe))
                (_g125590125627_ _g125591125630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125590125627_
                                                 _g125591125630_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125590125627_ _g125591125630_)))))
                              (let ()
                                (declare (not safe))
                                (_g125590125627_ _g125591125630_)))))
                      (let ()
                        (declare (not safe))
                        (_g125590125627_ _g125591125630_))))))
          (declare (not safe))
          (_g125589125740_ _ann125588_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125535_ _ann125536_)
        (let* ((_g125538125551_
                (lambda (_g125539125548_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125539125548_))))
               (_g125537125584_
                (lambda (_g125539125554_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125539125554_))
                      (let ((_e125543125556_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125539125554_))))
                        (let ((_hd125542125559_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125543125556_)))
                              (_tl125541125561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125543125556_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125541125561_))
                              (let ((_e125546125564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125541125561_))))
                                (let ((_hd125545125567_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125546125564_)))
                                      (_tl125544125569_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125546125564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125544125569_))
                                      ((lambda (_L125572_)
                                         (let ((__tmp129113
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125572_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp129113)))
                                       _hd125545125567_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125538125551_ _g125539125554_)))))
                              (let ()
                                (declare (not safe))
                                (_g125538125551_ _g125539125554_)))))
                      (let ()
                        (declare (not safe))
                        (_g125538125551_ _g125539125554_))))))
          (declare (not safe))
          (_g125537125584_ _ann125536_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125483_ _ann125484_)
        (let* ((_g125486125499_
                (lambda (_g125487125496_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125487125496_))))
               (_g125485125532_
                (lambda (_g125487125502_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125487125502_))
                      (let ((_e125491125504_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125487125502_))))
                        (let ((_hd125490125507_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125491125504_)))
                              (_tl125489125509_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125491125504_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125489125509_))
                              (let ((_e125494125512_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125489125509_))))
                                (let ((_hd125493125515_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125494125512_)))
                                      (_tl125492125517_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125494125512_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125492125517_))
                                      ((lambda (_L125520_)
                                         (let ((__tmp129114
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125520_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp129114)))
                                       _hd125493125515_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125486125499_ _g125487125502_)))))
                              (let ()
                                (declare (not safe))
                                (_g125486125499_ _g125487125502_)))))
                      (let ()
                        (declare (not safe))
                        (_g125486125499_ _g125487125502_))))))
          (declare (not safe))
          (_g125485125532_ _ann125484_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125399_ _ann125400_)
        (let* ((_g125402125423_
                (lambda (_g125403125420_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125403125420_))))
               (_g125401125480_
                (lambda (_g125403125426_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125403125426_))
                      (let ((_e125409125428_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125403125426_))))
                        (let ((_hd125408125431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125409125428_)))
                              (_tl125407125433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125409125428_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125407125433_))
                              (let ((_e125412125436_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125407125433_))))
                                (let ((_hd125411125439_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125412125436_)))
                                      (_tl125410125441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125412125436_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125410125441_))
                                      (let ((_e125415125444_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125410125441_))))
                                        (let ((_hd125414125447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125415125444_)))
                                              (_tl125413125449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125415125444_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125413125449_))
                                              (let ((_e125418125452_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125413125449_))))
                                                (let ((_hd125417125455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125418125452_)))
                                                      (_tl125416125457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125418125452_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125416125457_))
                                                      ((lambda (_L125460_
                                                                _L125461_
                                                                _L125462_)
                                                         (let ((__tmp129117
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125462_)))
                       (__tmp129116
                        (let () (declare (not safe)) (gx#stx-e _L125461_)))
                       (__tmp129115
                        (let () (declare (not safe)) (gx#stx-e _L125460_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp129117
                    __tmp129116
                    __tmp129115)))
               _hd125417125455_
               _hd125414125447_
               _hd125411125439_)
              (let ()
                (declare (not safe))
                (_g125402125423_ _g125403125426_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125402125423_
                                                 _g125403125426_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125402125423_ _g125403125426_)))))
                              (let ()
                                (declare (not safe))
                                (_g125402125423_ _g125403125426_)))))
                      (let ()
                        (declare (not safe))
                        (_g125402125423_ _g125403125426_))))))
          (declare (not safe))
          (_g125401125480_ _ann125400_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125315_ _ann125316_)
        (let* ((_g125318125339_
                (lambda (_g125319125336_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125319125336_))))
               (_g125317125396_
                (lambda (_g125319125342_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125319125342_))
                      (let ((_e125325125344_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125319125342_))))
                        (let ((_hd125324125347_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125325125344_)))
                              (_tl125323125349_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125325125344_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125323125349_))
                              (let ((_e125328125352_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125323125349_))))
                                (let ((_hd125327125355_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125328125352_)))
                                      (_tl125326125357_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125328125352_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125326125357_))
                                      (let ((_e125331125360_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125326125357_))))
                                        (let ((_hd125330125363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125331125360_)))
                                              (_tl125329125365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125331125360_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125329125365_))
                                              (let ((_e125334125368_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125329125365_))))
                                                (let ((_hd125333125371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125334125368_)))
                                                      (_tl125332125373_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125334125368_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125332125373_))
                                                      ((lambda (_L125376_
                                                                _L125377_
                                                                _L125378_)
                                                         (let ((__tmp129120
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125378_)))
                       (__tmp129119
                        (let () (declare (not safe)) (gx#stx-e _L125377_)))
                       (__tmp129118
                        (let () (declare (not safe)) (gx#stx-e _L125376_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp129120
                    __tmp129119
                    __tmp129118)))
               _hd125333125371_
               _hd125330125363_
               _hd125327125355_)
              (let ()
                (declare (not safe))
                (_g125318125339_ _g125319125342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125318125339_
                                                 _g125319125342_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125318125339_ _g125319125342_)))))
                              (let ()
                                (declare (not safe))
                                (_g125318125339_ _g125319125342_)))))
                      (let ()
                        (declare (not safe))
                        (_g125318125339_ _g125319125342_))))))
          (declare (not safe))
          (_g125317125396_ _ann125316_))))
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
      (lambda (_stx124435_)
        (let* ((___stx127401127402_ _stx124435_)
               (_g124441124637_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127401127402_)))))
          (let ((___kont127403127404_
                 (lambda (_L125303_)
                   (let ((__obj129071
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129071
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125303_))
                      '#f)
                     __obj129071)))
                (___kont127405127406_
                 (lambda (_L125230_
                          _L125231_
                          _L125232_
                          _L125233_
                          _L125234_
                          _L125235_)
                   (let* ((_tab125285_
                           (let () (declare (not safe)) (gx#stx-e _L125232_)))
                          (_keys125287_
                           (if _tab125285_
                               (let ((__tmp129121 (vector->list _tab125285_)))
                                 (declare (not safe))
                                 (filter values __tmp129121))
                               '#f)))
                     (let ((__tmp129122
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L125231_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125287_
                        __tmp129122)))))
                (___kont127407127408_
                 (lambda (_L124963_
                          _L124964_
                          _L124965_
                          _L124966_
                          _L124967_
                          _L124968_
                          _L124969_
                          _L124970_
                          _L124971_
                          _L124972_)
                   (let ((__tmp129124
                          (map gx#stx-e
                               (let ((__tmp129125
                                      (lambda (_g125065125068_ _g125066125070_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g125065125068_
                                                _g125066125070_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp129125 '() _L124965_))))
                         (__tmp129123
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124969_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp129124
                      __tmp129123))))
                (___kont127411127412_
                 (lambda (_L124673_)
                   (let ((__obj129072
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129072
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124673_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L124673_)))
                     __obj129072)))
                (___kont127413127414_
                 (lambda (_L124650_)
                   (let ((__obj129073
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129073
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124650_))
                      '#f)
                     __obj129073))))
            (let* ((___match127720127721_
                    (lambda (_e124628124665_ _hd124627124668_ _tl124626124670_)
                      (let ((_L124673_ _tl124626124670_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L124673_))
                            (___kont127411127412_ _L124673_)
                            (___kont127413127414_ _tl124626124670_)))))
                   (___match127714127715_
                    (lambda (_e124522124687_
                             _hd124521124690_
                             _tl124520124692_
                             _e124525124695_
                             _hd124524124698_
                             _tl124523124700_
                             _e124528124703_
                             _hd124527124706_
                             _tl124526124708_
                             _e124531124711_
                             _hd124530124714_
                             _tl124529124716_
                             _e124534124719_
                             _hd124533124722_
                             _tl124532124724_
                             _e124537124727_
                             _hd124536124730_
                             _tl124535124732_
                             _e124540124735_
                             _hd124539124738_
                             _tl124538124740_
                             _e124543124743_
                             _hd124542124746_
                             _tl124541124748_
                             _e124546124751_
                             _hd124545124754_
                             _tl124544124756_
                             _e124549124759_
                             _hd124548124762_
                             _tl124547124764_
                             _e124552124767_
                             _hd124551124770_
                             _tl124550124772_
                             _e124555124775_
                             _hd124554124778_
                             _tl124553124780_
                             _e124558124783_
                             _hd124557124786_
                             _tl124556124788_
                             _e124561124791_
                             _hd124560124794_
                             _tl124559124796_
                             ___splice127409127410_
                             _target124562124799_
                             _tl124564124801_
                             _e124579124804_
                             _hd124578124807_
                             _tl124577124809_
                             _e124582124812_
                             _hd124581124815_
                             _tl124580124817_
                             _e124585124820_
                             _hd124584124823_
                             _tl124583124825_)
                      (letrec ((_loop124565124828_
                                (lambda (_hd124563124831_
                                         _-absent-value124569124833_
                                         _key124570124835_
                                         _-xkwvar124571124837_
                                         _-hash-ref124572124839_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124563124831_))
                                      (let ((_e124566124842_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124563124831_))))
                                        (let ((_lp-tl124568124847_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124566124842_)))
                                              (_lp-hd124567124845_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124566124842_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124567124845_))
                                              (let ((_e124588124850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124567124845_))))
                                                (let ((_tl124586124855_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124588124850_)))
                                                      (_hd124587124853_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124588124850_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124587124853_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124587124853_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124586124855_))
                      (let ((_e124591124858_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124586124855_))))
                        (let ((_tl124589124863_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124591124858_)))
                              (_hd124590124861_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124591124858_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124590124861_))
                              (let ((_e124594124866_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124590124861_))))
                                (let ((_tl124592124871_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124594124866_)))
                                      (_hd124593124869_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124594124866_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124593124869_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124593124869_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124592124871_))
                                              (let ((_e124597124874_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124592124871_))))
                                                (let ((_tl124595124879_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124597124874_)))
                                                      (_hd124596124877_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124597124874_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124595124879_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124589124863_))
                                                          (let ((_e124600124882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124589124863_))))
                    (let ((_tl124598124887_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124600124882_)))
                          (_hd124599124885_
                           (let ()
                             (declare (not safe))
                             (##car _e124600124882_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124599124885_))
                          (let ((_e124603124890_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124599124885_))))
                            (let ((_tl124601124895_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124603124890_)))
                                  (_hd124602124893_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124603124890_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124602124893_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124602124893_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124601124895_))
                                          (let ((_e124606124898_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124601124895_))))
                                            (let ((_tl124604124903_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124606124898_)))
                                                  (_hd124605124901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124606124898_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124604124903_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124598124887_))
                                                      (let ((_e124609124906_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124598124887_))))
                (let ((_tl124607124911_
                       (let () (declare (not safe)) (##cdr _e124609124906_)))
                      (_hd124608124909_
                       (let () (declare (not safe)) (##car _e124609124906_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124608124909_))
                      (let ((_e124612124914_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124608124909_))))
                        (let ((_tl124610124919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124612124914_)))
                              (_hd124611124917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124612124914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124611124917_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124611124917_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124610124919_))
                                      (let ((_e124615124922_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124610124919_))))
                                        (let ((_tl124613124927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124615124922_)))
                                              (_hd124614124925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124615124922_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124613124927_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124607124911_))
                                                  (let ((_e124618124930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124607124911_))))
                                                    (let ((_tl124616124935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124618124930_)))
                                                          (_hd124617124933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124618124930_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124617124933_))
                                                          (let ((_e124621124938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124617124933_))))
                    (let ((_tl124619124943_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124621124938_)))
                          (_hd124620124941_
                           (let ()
                             (declare (not safe))
                             (##car _e124621124938_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124620124941_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124620124941_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124619124943_))
                                  (let ((_e124624124946_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124619124943_))))
                                    (let ((_tl124622124951_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124624124946_)))
                                          (_hd124623124949_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124624124946_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124622124951_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124616124935_))
                                              (let ((__tmp129140
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124623124949_
                                                             _-absent-value124569124833_)))
                                                    (__tmp129139
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124614124925_
                                                             _key124570124835_)))
                                                    (__tmp129138
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124605124901_
                                                             _-xkwvar124571124837_)))
                                                    (__tmp129137
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124596124877_
                                                             _-hash-ref124572124839_))))
                                                (declare (not safe))
                                                (_loop124565124828_
                                                 _lp-tl124568124847_
                                                 __tmp129140
                                                 __tmp129139
                                                 __tmp129138
                                                 __tmp129137))
                                              (___match127720127721_
                                               _e124522124687_
                                               _hd124521124690_
                                               _tl124520124692_))
                                          (___match127720127721_
                                           _e124522124687_
                                           _hd124521124690_
                                           _tl124520124692_))))
                                  (___match127720127721_
                                   _e124522124687_
                                   _hd124521124690_
                                   _tl124520124692_))
                              (___match127720127721_
                               _e124522124687_
                               _hd124521124690_
                               _tl124520124692_))
                          (___match127720127721_
                           _e124522124687_
                           _hd124521124690_
                           _tl124520124692_))))
                  (___match127720127721_
                   _e124522124687_
                   _hd124521124690_
                   _tl124520124692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127720127721_
                                                   _e124522124687_
                                                   _hd124521124690_
                                                   _tl124520124692_))
                                              (___match127720127721_
                                               _e124522124687_
                                               _hd124521124690_
                                               _tl124520124692_))))
                                      (___match127720127721_
                                       _e124522124687_
                                       _hd124521124690_
                                       _tl124520124692_))
                                  (___match127720127721_
                                   _e124522124687_
                                   _hd124521124690_
                                   _tl124520124692_))
                              (___match127720127721_
                               _e124522124687_
                               _hd124521124690_
                               _tl124520124692_))))
                      (___match127720127721_
                       _e124522124687_
                       _hd124521124690_
                       _tl124520124692_))))
              (___match127720127721_
               _e124522124687_
               _hd124521124690_
               _tl124520124692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127720127721_
                                                   _e124522124687_
                                                   _hd124521124690_
                                                   _tl124520124692_))))
                                          (___match127720127721_
                                           _e124522124687_
                                           _hd124521124690_
                                           _tl124520124692_))
                                      (___match127720127721_
                                       _e124522124687_
                                       _hd124521124690_
                                       _tl124520124692_))
                                  (___match127720127721_
                                   _e124522124687_
                                   _hd124521124690_
                                   _tl124520124692_))))
                          (___match127720127721_
                           _e124522124687_
                           _hd124521124690_
                           _tl124520124692_))))
                  (___match127720127721_
                   _e124522124687_
                   _hd124521124690_
                   _tl124520124692_))
              (___match127720127721_
               _e124522124687_
               _hd124521124690_
               _tl124520124692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127720127721_
                                               _e124522124687_
                                               _hd124521124690_
                                               _tl124520124692_))
                                          (___match127720127721_
                                           _e124522124687_
                                           _hd124521124690_
                                           _tl124520124692_))
                                      (___match127720127721_
                                       _e124522124687_
                                       _hd124521124690_
                                       _tl124520124692_))))
                              (___match127720127721_
                               _e124522124687_
                               _hd124521124690_
                               _tl124520124692_))))
                      (___match127720127721_
                       _e124522124687_
                       _hd124521124690_
                       _tl124520124692_))
                  (___match127720127721_
                   _e124522124687_
                   _hd124521124690_
                   _tl124520124692_))
              (___match127720127721_
               _e124522124687_
               _hd124521124690_
               _tl124520124692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127720127721_
                                               _e124522124687_
                                               _hd124521124690_
                                               _tl124520124692_))))
                                      (let ((_-hash-ref124576124960_
                                             (reverse _-hash-ref124572124839_))
                                            (_-xkwvar124575124958_
                                             (reverse _-xkwvar124571124837_))
                                            (_key124574124956_
                                             (reverse _key124570124835_))
                                            (_-absent-value124573124954_
                                             (reverse _-absent-value124569124833_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124529124716_))
                                            (let ((_L124963_ _hd124584124823_)
                                                  (_L124964_
                                                   _-absent-value124573124954_)
                                                  (_L124965_ _key124574124956_)
                                                  (_L124966_
                                                   _-xkwvar124575124958_)
                                                  (_L124967_
                                                   _-hash-ref124576124960_)
                                                  (_L124968_ _hd124560124794_)
                                                  (_L124969_ _hd124551124770_)
                                                  (_L124970_ _hd124542124746_)
                                                  (_L124971_ _tl124526124708_)
                                                  (_L124972_ _hd124527124706_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124972_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124971_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124970_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124972_
                                                          _L124968_))
                                                       (let ((__tmp129135
                                                              (let ((__tmp129136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g125025125028_ _g125026125030_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125025125028_ _g125026125030_)))))
                        (declare (not safe))
                        (foldr1 __tmp129136 '() _L124965_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp129135))
               (let ((__tmp129134
                      (lambda (_g125032125034_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g125032125034_
                           'hash-ref))))
                     (__tmp129132
                      (let ((__tmp129133
                             (lambda (_g125036125039_ _g125037125041_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125036125039_ _g125037125041_)))))
                        (declare (not safe))
                        (foldr1 __tmp129133 '() _L124967_))))
                 (declare (not safe))
                 (andmap1 __tmp129134 __tmp129132))
               (let ((__tmp129131
                      (lambda (_g125043125045_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g125043125045_
                           'absent-value))))
                     (__tmp129129
                      (let ((__tmp129130
                             (lambda (_g125047125050_ _g125048125052_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125047125050_ _g125048125052_)))))
                        (declare (not safe))
                        (foldr1 __tmp129130 '() _L124964_))))
                 (declare (not safe))
                 (andmap1 __tmp129131 __tmp129129))
               (let ((__tmp129128
                      (lambda (_g125054125056_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g125054125056_ _L124972_))))
                     (__tmp129126
                      (let ((__tmp129127
                             (lambda (_g125058125061_ _g125059125063_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125058125061_ _g125059125063_)))))
                        (declare (not safe))
                        (foldr1 __tmp129127 '() _L124966_))))
                 (declare (not safe))
                 (andmap1 __tmp129128 __tmp129126)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127407127408_
                                                   _L124963_
                                                   _L124964_
                                                   _L124965_
                                                   _L124966_
                                                   _L124967_
                                                   _L124968_
                                                   _L124969_
                                                   _L124970_
                                                   _L124971_
                                                   _L124972_)
                                                  (___match127720127721_
                                                   _e124522124687_
                                                   _hd124521124690_
                                                   _tl124520124692_)))
                                            (___match127720127721_
                                             _e124522124687_
                                             _hd124521124690_
                                             _tl124520124692_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124565124828_
                           _target124562124799_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127586127587_
                    (lambda (_e124522124687_
                             _hd124521124690_
                             _tl124520124692_
                             _e124525124695_
                             _hd124524124698_
                             _tl124523124700_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124524124698_))
                          (let ((_e124528124703_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124524124698_))))
                            (let ((_tl124526124708_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124528124703_)))
                                  (_hd124527124706_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124528124703_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124523124700_))
                                  (let ((_e124531124711_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124523124700_))))
                                    (let ((_tl124529124716_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124531124711_)))
                                          (_hd124530124714_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124531124711_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124530124714_))
                                          (let ((_e124534124719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124530124714_))))
                                            (let ((_tl124532124724_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124534124719_)))
                                                  (_hd124533124722_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124534124719_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124533124722_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124533124722_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124532124724_))
                                                          (let ((_e124537124727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124532124724_))))
                    (let ((_tl124535124732_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124537124727_)))
                          (_hd124536124730_
                           (let ()
                             (declare (not safe))
                             (##car _e124537124727_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124536124730_))
                          (let ((_e124540124735_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124536124730_))))
                            (let ((_tl124538124740_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124540124735_)))
                                  (_hd124539124738_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124540124735_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124539124738_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124539124738_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124538124740_))
                                          (let ((_e124543124743_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124538124740_))))
                                            (let ((_tl124541124748_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124543124743_)))
                                                  (_hd124542124746_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124543124743_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124541124748_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124535124732_))
                                                      (let ((_e124546124751_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124535124732_))))
                (let ((_tl124544124756_
                       (let () (declare (not safe)) (##cdr _e124546124751_)))
                      (_hd124545124754_
                       (let () (declare (not safe)) (##car _e124546124751_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124545124754_))
                      (let ((_e124549124759_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124545124754_))))
                        (let ((_tl124547124764_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124549124759_)))
                              (_hd124548124762_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124549124759_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124548124762_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124548124762_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124547124764_))
                                      (let ((_e124552124767_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124547124764_))))
                                        (let ((_tl124550124772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124552124767_)))
                                              (_hd124551124770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124552124767_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124550124772_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124544124756_))
                                                  (let ((_e124555124775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124544124756_))))
                                                    (let ((_tl124553124780_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124555124775_)))
                                                          (_hd124554124778_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124555124775_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124554124778_))
                                                          (let ((_e124558124783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124554124778_))))
                    (let ((_tl124556124788_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124558124783_)))
                          (_hd124557124786_
                           (let ()
                             (declare (not safe))
                             (##car _e124558124783_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124557124786_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124557124786_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124556124788_))
                                  (let ((_e124561124791_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124556124788_))))
                                    (let ((_tl124559124796_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124561124791_)))
                                          (_hd124560124794_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124561124791_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124559124796_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124553124780_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124553124780_))
                                                        '1)
                                                  (let ((___splice127409127410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124553124780_
                                                            '1))))
                                                    (let ((_tl124564124801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127409127410_
                                                              '1)))
                                                          (_target124562124799_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127409127410_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124564124801_))
                                                          (let ((_e124579124804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124564124801_))))
                    (let ((_tl124577124809_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124579124804_)))
                          (_hd124578124807_
                           (let ()
                             (declare (not safe))
                             (##car _e124579124804_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124578124807_))
                          (let ((_e124582124812_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124578124807_))))
                            (let ((_tl124580124817_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124582124812_)))
                                  (_hd124581124815_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124582124812_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124581124815_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124581124815_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124580124817_))
                                          (let ((_e124585124820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124580124817_))))
                                            (let ((_tl124583124825_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124585124820_)))
                                                  (_hd124584124823_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124585124820_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124583124825_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124577124809_))
                                                      (___match127714127715_
                                                       _e124522124687_
                                                       _hd124521124690_
                                                       _tl124520124692_
                                                       _e124525124695_
                                                       _hd124524124698_
                                                       _tl124523124700_
                                                       _e124528124703_
                                                       _hd124527124706_
                                                       _tl124526124708_
                                                       _e124531124711_
                                                       _hd124530124714_
                                                       _tl124529124716_
                                                       _e124534124719_
                                                       _hd124533124722_
                                                       _tl124532124724_
                                                       _e124537124727_
                                                       _hd124536124730_
                                                       _tl124535124732_
                                                       _e124540124735_
                                                       _hd124539124738_
                                                       _tl124538124740_
                                                       _e124543124743_
                                                       _hd124542124746_
                                                       _tl124541124748_
                                                       _e124546124751_
                                                       _hd124545124754_
                                                       _tl124544124756_
                                                       _e124549124759_
                                                       _hd124548124762_
                                                       _tl124547124764_
                                                       _e124552124767_
                                                       _hd124551124770_
                                                       _tl124550124772_
                                                       _e124555124775_
                                                       _hd124554124778_
                                                       _tl124553124780_
                                                       _e124558124783_
                                                       _hd124557124786_
                                                       _tl124556124788_
                                                       _e124561124791_
                                                       _hd124560124794_
                                                       _tl124559124796_
                                                       ___splice127409127410_
                                                       _target124562124799_
                                                       _tl124564124801_
                                                       _e124579124804_
                                                       _hd124578124807_
                                                       _tl124577124809_
                                                       _e124582124812_
                                                       _hd124581124815_
                                                       _tl124580124817_
                                                       _e124585124820_
                                                       _hd124584124823_
                                                       _tl124583124825_)
                                                      (___match127720127721_
                                                       _e124522124687_
                                                       _hd124521124690_
                                                       _tl124520124692_))
                                                  (___match127720127721_
                                                   _e124522124687_
                                                   _hd124521124690_
                                                   _tl124520124692_))))
                                          (___match127720127721_
                                           _e124522124687_
                                           _hd124521124690_
                                           _tl124520124692_))
                                      (___match127720127721_
                                       _e124522124687_
                                       _hd124521124690_
                                       _tl124520124692_))
                                  (___match127720127721_
                                   _e124522124687_
                                   _hd124521124690_
                                   _tl124520124692_))))
                          (___match127720127721_
                           _e124522124687_
                           _hd124521124690_
                           _tl124520124692_))))
                  (___match127720127721_
                   _e124522124687_
                   _hd124521124690_
                   _tl124520124692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127720127721_
                                                   _e124522124687_
                                                   _hd124521124690_
                                                   _tl124520124692_))
                                              (___match127720127721_
                                               _e124522124687_
                                               _hd124521124690_
                                               _tl124520124692_))
                                          (___match127720127721_
                                           _e124522124687_
                                           _hd124521124690_
                                           _tl124520124692_))))
                                  (___match127720127721_
                                   _e124522124687_
                                   _hd124521124690_
                                   _tl124520124692_))
                              (___match127720127721_
                               _e124522124687_
                               _hd124521124690_
                               _tl124520124692_))
                          (___match127720127721_
                           _e124522124687_
                           _hd124521124690_
                           _tl124520124692_))))
                  (___match127720127721_
                   _e124522124687_
                   _hd124521124690_
                   _tl124520124692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127720127721_
                                                   _e124522124687_
                                                   _hd124521124690_
                                                   _tl124520124692_))
                                              (___match127720127721_
                                               _e124522124687_
                                               _hd124521124690_
                                               _tl124520124692_))))
                                      (___match127720127721_
                                       _e124522124687_
                                       _hd124521124690_
                                       _tl124520124692_))
                                  (___match127720127721_
                                   _e124522124687_
                                   _hd124521124690_
                                   _tl124520124692_))
                              (___match127720127721_
                               _e124522124687_
                               _hd124521124690_
                               _tl124520124692_))))
                      (___match127720127721_
                       _e124522124687_
                       _hd124521124690_
                       _tl124520124692_))))
              (___match127720127721_
               _e124522124687_
               _hd124521124690_
               _tl124520124692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127720127721_
                                                   _e124522124687_
                                                   _hd124521124690_
                                                   _tl124520124692_))))
                                          (___match127720127721_
                                           _e124522124687_
                                           _hd124521124690_
                                           _tl124520124692_))
                                      (___match127720127721_
                                       _e124522124687_
                                       _hd124521124690_
                                       _tl124520124692_))
                                  (___match127720127721_
                                   _e124522124687_
                                   _hd124521124690_
                                   _tl124520124692_))))
                          (___match127720127721_
                           _e124522124687_
                           _hd124521124690_
                           _tl124520124692_))))
                  (___match127720127721_
                   _e124522124687_
                   _hd124521124690_
                   _tl124520124692_))
              (___match127720127721_
               _e124522124687_
               _hd124521124690_
               _tl124520124692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127720127721_
                                                   _e124522124687_
                                                   _hd124521124690_
                                                   _tl124520124692_))))
                                          (___match127720127721_
                                           _e124522124687_
                                           _hd124521124690_
                                           _tl124520124692_))))
                                  (___match127720127721_
                                   _e124522124687_
                                   _hd124521124690_
                                   _tl124520124692_))))
                          (___match127720127721_
                           _e124522124687_
                           _hd124521124690_
                           _tl124520124692_))))
                   (___match127574127575_
                    (lambda (_e124455125078_
                             _hd124454125081_
                             _tl124453125083_
                             _e124458125086_
                             _hd124457125089_
                             _tl124456125091_
                             _e124461125094_
                             _hd124460125097_
                             _tl124459125099_
                             _e124464125102_
                             _hd124463125105_
                             _tl124462125107_
                             _e124467125110_
                             _hd124466125113_
                             _tl124465125115_
                             _e124470125118_
                             _hd124469125121_
                             _tl124468125123_
                             _e124473125126_
                             _hd124472125129_
                             _tl124471125131_
                             _e124476125134_
                             _hd124475125137_
                             _tl124474125139_
                             _e124479125142_
                             _hd124478125145_
                             _tl124477125147_
                             _e124482125150_
                             _hd124481125153_
                             _tl124480125155_
                             _e124485125158_
                             _hd124484125161_
                             _tl124483125163_
                             _e124488125166_
                             _hd124487125169_
                             _tl124486125171_
                             _e124491125174_
                             _hd124490125177_
                             _tl124489125179_
                             _e124494125182_
                             _hd124493125185_
                             _tl124492125187_
                             _e124497125190_
                             _hd124496125193_
                             _tl124495125195_
                             _e124500125198_
                             _hd124499125201_
                             _tl124498125203_
                             _e124503125206_
                             _hd124502125209_
                             _tl124501125211_
                             _e124506125214_
                             _hd124505125217_
                             _tl124504125219_
                             _e124509125222_
                             _hd124508125225_
                             _tl124507125227_)
                      (let ((_L125230_ _hd124508125225_)
                            (_L125231_ _hd124499125201_)
                            (_L125232_ _hd124490125177_)
                            (_L125233_ _hd124481125153_)
                            (_L125234_ _hd124472125129_)
                            (_L125235_ _hd124457125089_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125235_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125234_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L125233_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125235_ _L125230_)))
                            (___kont127405127406_
                             _L125230_
                             _L125231_
                             _L125232_
                             _L125233_
                             _L125234_
                             _L125235_)
                            (___match127586127587_
                             _e124455125078_
                             _hd124454125081_
                             _tl124453125083_
                             _e124458125086_
                             _hd124457125089_
                             _tl124456125091_)))))
                   (___match127428127429_
                    (lambda (_e124455125078_ _hd124454125081_ _tl124453125083_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124453125083_))
                          (let ((_e124458125086_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124453125083_))))
                            (let ((_tl124456125091_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124458125086_)))
                                  (_hd124457125089_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124458125086_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124456125091_))
                                  (let ((_e124461125094_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124456125091_))))
                                    (let ((_tl124459125099_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124461125094_)))
                                          (_hd124460125097_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124461125094_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124460125097_))
                                          (let ((_e124464125102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124460125097_))))
                                            (let ((_tl124462125107_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124464125102_)))
                                                  (_hd124463125105_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124464125102_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124463125105_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124463125105_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124462125107_))
                                                          (let ((_e124467125110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124462125107_))))
                    (let ((_tl124465125115_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124467125110_)))
                          (_hd124466125113_
                           (let ()
                             (declare (not safe))
                             (##car _e124467125110_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124466125113_))
                          (let ((_e124470125118_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124466125113_))))
                            (let ((_tl124468125123_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124470125118_)))
                                  (_hd124469125121_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124470125118_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124469125121_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124469125121_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124468125123_))
                                          (let ((_e124473125126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124468125123_))))
                                            (let ((_tl124471125131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124473125126_)))
                                                  (_hd124472125129_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124473125126_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124471125131_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124465125115_))
                                                      (let ((_e124476125134_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124465125115_))))
                (let ((_tl124474125139_
                       (let () (declare (not safe)) (##cdr _e124476125134_)))
                      (_hd124475125137_
                       (let () (declare (not safe)) (##car _e124476125134_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124475125137_))
                      (let ((_e124479125142_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124475125137_))))
                        (let ((_tl124477125147_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124479125142_)))
                              (_hd124478125145_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124479125142_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124478125145_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124478125145_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124477125147_))
                                      (let ((_e124482125150_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124477125147_))))
                                        (let ((_tl124480125155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124482125150_)))
                                              (_hd124481125153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124482125150_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124480125155_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124474125139_))
                                                  (let ((_e124485125158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124474125139_))))
                                                    (let ((_tl124483125163_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124485125158_)))
                                                          (_hd124484125161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124485125158_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124484125161_))
                                                          (let ((_e124488125166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124484125161_))))
                    (let ((_tl124486125171_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124488125166_)))
                          (_hd124487125169_
                           (let ()
                             (declare (not safe))
                             (##car _e124488125166_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124487125169_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124487125169_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124486125171_))
                                  (let ((_e124491125174_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124486125171_))))
                                    (let ((_tl124489125179_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124491125174_)))
                                          (_hd124490125177_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124491125174_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124489125179_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124483125163_))
                                              (let ((_e124494125182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124483125163_))))
                                                (let ((_tl124492125187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124494125182_)))
                                                      (_hd124493125185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124494125182_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124493125185_))
                                                      (let ((_e124497125190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124493125185_))))
                (let ((_tl124495125195_
                       (let () (declare (not safe)) (##cdr _e124497125190_)))
                      (_hd124496125193_
                       (let () (declare (not safe)) (##car _e124497125190_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124496125193_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124496125193_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124495125195_))
                              (let ((_e124500125198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124495125195_))))
                                (let ((_tl124498125203_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124500125198_)))
                                      (_hd124499125201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124500125198_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124498125203_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124492125187_))
                                          (let ((_e124503125206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124492125187_))))
                                            (let ((_tl124501125211_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124503125206_)))
                                                  (_hd124502125209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124503125206_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124502125209_))
                                                  (let ((_e124506125214_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124502125209_))))
                                                    (let ((_tl124504125219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124506125214_)))
                                                          (_hd124505125217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124506125214_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124505125217_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124505125217_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124504125219_))
                          (let ((_e124509125222_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124504125219_))))
                            (let ((_tl124507125227_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124509125222_)))
                                  (_hd124508125225_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124509125222_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124507125227_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124501125211_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124459125099_))
                                          (___match127574127575_
                                           _e124455125078_
                                           _hd124454125081_
                                           _tl124453125083_
                                           _e124458125086_
                                           _hd124457125089_
                                           _tl124456125091_
                                           _e124461125094_
                                           _hd124460125097_
                                           _tl124459125099_
                                           _e124464125102_
                                           _hd124463125105_
                                           _tl124462125107_
                                           _e124467125110_
                                           _hd124466125113_
                                           _tl124465125115_
                                           _e124470125118_
                                           _hd124469125121_
                                           _tl124468125123_
                                           _e124473125126_
                                           _hd124472125129_
                                           _tl124471125131_
                                           _e124476125134_
                                           _hd124475125137_
                                           _tl124474125139_
                                           _e124479125142_
                                           _hd124478125145_
                                           _tl124477125147_
                                           _e124482125150_
                                           _hd124481125153_
                                           _tl124480125155_
                                           _e124485125158_
                                           _hd124484125161_
                                           _tl124483125163_
                                           _e124488125166_
                                           _hd124487125169_
                                           _tl124486125171_
                                           _e124491125174_
                                           _hd124490125177_
                                           _tl124489125179_
                                           _e124494125182_
                                           _hd124493125185_
                                           _tl124492125187_
                                           _e124497125190_
                                           _hd124496125193_
                                           _tl124495125195_
                                           _e124500125198_
                                           _hd124499125201_
                                           _tl124498125203_
                                           _e124503125206_
                                           _hd124502125209_
                                           _tl124501125211_
                                           _e124506125214_
                                           _hd124505125217_
                                           _tl124504125219_
                                           _e124509125222_
                                           _hd124508125225_
                                           _tl124507125227_)
                                          (___match127586127587_
                                           _e124455125078_
                                           _hd124454125081_
                                           _tl124453125083_
                                           _e124458125086_
                                           _hd124457125089_
                                           _tl124456125091_))
                                      (___match127586127587_
                                       _e124455125078_
                                       _hd124454125081_
                                       _tl124453125083_
                                       _e124458125086_
                                       _hd124457125089_
                                       _tl124456125091_))
                                  (___match127586127587_
                                   _e124455125078_
                                   _hd124454125081_
                                   _tl124453125083_
                                   _e124458125086_
                                   _hd124457125089_
                                   _tl124456125091_))))
                          (___match127586127587_
                           _e124455125078_
                           _hd124454125081_
                           _tl124453125083_
                           _e124458125086_
                           _hd124457125089_
                           _tl124456125091_))
                      (___match127586127587_
                       _e124455125078_
                       _hd124454125081_
                       _tl124453125083_
                       _e124458125086_
                       _hd124457125089_
                       _tl124456125091_))
                  (___match127586127587_
                   _e124455125078_
                   _hd124454125081_
                   _tl124453125083_
                   _e124458125086_
                   _hd124457125089_
                   _tl124456125091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127586127587_
                                                   _e124455125078_
                                                   _hd124454125081_
                                                   _tl124453125083_
                                                   _e124458125086_
                                                   _hd124457125089_
                                                   _tl124456125091_))))
                                          (___match127586127587_
                                           _e124455125078_
                                           _hd124454125081_
                                           _tl124453125083_
                                           _e124458125086_
                                           _hd124457125089_
                                           _tl124456125091_))
                                      (___match127586127587_
                                       _e124455125078_
                                       _hd124454125081_
                                       _tl124453125083_
                                       _e124458125086_
                                       _hd124457125089_
                                       _tl124456125091_))))
                              (___match127586127587_
                               _e124455125078_
                               _hd124454125081_
                               _tl124453125083_
                               _e124458125086_
                               _hd124457125089_
                               _tl124456125091_))
                          (___match127586127587_
                           _e124455125078_
                           _hd124454125081_
                           _tl124453125083_
                           _e124458125086_
                           _hd124457125089_
                           _tl124456125091_))
                      (___match127586127587_
                       _e124455125078_
                       _hd124454125081_
                       _tl124453125083_
                       _e124458125086_
                       _hd124457125089_
                       _tl124456125091_))))
              (___match127586127587_
               _e124455125078_
               _hd124454125081_
               _tl124453125083_
               _e124458125086_
               _hd124457125089_
               _tl124456125091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127586127587_
                                               _e124455125078_
                                               _hd124454125081_
                                               _tl124453125083_
                                               _e124458125086_
                                               _hd124457125089_
                                               _tl124456125091_))
                                          (___match127586127587_
                                           _e124455125078_
                                           _hd124454125081_
                                           _tl124453125083_
                                           _e124458125086_
                                           _hd124457125089_
                                           _tl124456125091_))))
                                  (___match127586127587_
                                   _e124455125078_
                                   _hd124454125081_
                                   _tl124453125083_
                                   _e124458125086_
                                   _hd124457125089_
                                   _tl124456125091_))
                              (___match127586127587_
                               _e124455125078_
                               _hd124454125081_
                               _tl124453125083_
                               _e124458125086_
                               _hd124457125089_
                               _tl124456125091_))
                          (___match127586127587_
                           _e124455125078_
                           _hd124454125081_
                           _tl124453125083_
                           _e124458125086_
                           _hd124457125089_
                           _tl124456125091_))))
                  (___match127586127587_
                   _e124455125078_
                   _hd124454125081_
                   _tl124453125083_
                   _e124458125086_
                   _hd124457125089_
                   _tl124456125091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127586127587_
                                                   _e124455125078_
                                                   _hd124454125081_
                                                   _tl124453125083_
                                                   _e124458125086_
                                                   _hd124457125089_
                                                   _tl124456125091_))
                                              (___match127586127587_
                                               _e124455125078_
                                               _hd124454125081_
                                               _tl124453125083_
                                               _e124458125086_
                                               _hd124457125089_
                                               _tl124456125091_))))
                                      (___match127586127587_
                                       _e124455125078_
                                       _hd124454125081_
                                       _tl124453125083_
                                       _e124458125086_
                                       _hd124457125089_
                                       _tl124456125091_))
                                  (___match127586127587_
                                   _e124455125078_
                                   _hd124454125081_
                                   _tl124453125083_
                                   _e124458125086_
                                   _hd124457125089_
                                   _tl124456125091_))
                              (___match127586127587_
                               _e124455125078_
                               _hd124454125081_
                               _tl124453125083_
                               _e124458125086_
                               _hd124457125089_
                               _tl124456125091_))))
                      (___match127586127587_
                       _e124455125078_
                       _hd124454125081_
                       _tl124453125083_
                       _e124458125086_
                       _hd124457125089_
                       _tl124456125091_))))
              (___match127586127587_
               _e124455125078_
               _hd124454125081_
               _tl124453125083_
               _e124458125086_
               _hd124457125089_
               _tl124456125091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127586127587_
                                                   _e124455125078_
                                                   _hd124454125081_
                                                   _tl124453125083_
                                                   _e124458125086_
                                                   _hd124457125089_
                                                   _tl124456125091_))))
                                          (___match127586127587_
                                           _e124455125078_
                                           _hd124454125081_
                                           _tl124453125083_
                                           _e124458125086_
                                           _hd124457125089_
                                           _tl124456125091_))
                                      (___match127586127587_
                                       _e124455125078_
                                       _hd124454125081_
                                       _tl124453125083_
                                       _e124458125086_
                                       _hd124457125089_
                                       _tl124456125091_))
                                  (___match127586127587_
                                   _e124455125078_
                                   _hd124454125081_
                                   _tl124453125083_
                                   _e124458125086_
                                   _hd124457125089_
                                   _tl124456125091_))))
                          (___match127586127587_
                           _e124455125078_
                           _hd124454125081_
                           _tl124453125083_
                           _e124458125086_
                           _hd124457125089_
                           _tl124456125091_))))
                  (___match127586127587_
                   _e124455125078_
                   _hd124454125081_
                   _tl124453125083_
                   _e124458125086_
                   _hd124457125089_
                   _tl124456125091_))
              (___match127586127587_
               _e124455125078_
               _hd124454125081_
               _tl124453125083_
               _e124458125086_
               _hd124457125089_
               _tl124456125091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127586127587_
                                                   _e124455125078_
                                                   _hd124454125081_
                                                   _tl124453125083_
                                                   _e124458125086_
                                                   _hd124457125089_
                                                   _tl124456125091_))))
                                          (___match127586127587_
                                           _e124455125078_
                                           _hd124454125081_
                                           _tl124453125083_
                                           _e124458125086_
                                           _hd124457125089_
                                           _tl124456125091_))))
                                  (___match127586127587_
                                   _e124455125078_
                                   _hd124454125081_
                                   _tl124453125083_
                                   _e124458125086_
                                   _hd124457125089_
                                   _tl124456125091_))))
                          (___match127720127721_
                           _e124455125078_
                           _hd124454125081_
                           _tl124453125083_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127401127402_))
                  (let ((_e124446125295_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127401127402_))))
                    (let ((_tl124444125300_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124446125295_)))
                          (_hd124445125298_
                           (let ()
                             (declare (not safe))
                             (##car _e124446125295_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125303_ _tl124444125300_))
                            (___kont127403127404_ _L125303_))
                          (___match127428127429_
                           _e124446125295_
                           _hd124445125298_
                           _tl124444125300_))))
                  (let () (declare (not safe)) (_g124441124637_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx124390_)
        (letrec ((_clause-e124392_
                  (lambda (_form124433_)
                    (let ((__obj129074
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
                       __obj129074
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124433_))
                       (if (let ((__tmp129141
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp129141))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124433_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124433_))
                               '#f)
                           '#f))
                      __obj129074))))
          (let* ((_g124394124404_
                  (lambda (_g124395124401_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124395124401_))))
                 (_g124393124430_
                  (lambda (_g124395124407_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124395124407_))
                        (let ((_e124399124409_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124395124407_))))
                          (let ((_hd124398124412_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124399124409_)))
                                (_tl124397124414_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124399124409_))))
                            ((lambda (_L124417_)
                               (let ((_clauses124428_
                                      (map _clause-e124392_ _L124417_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124428_)))
                             _tl124397124414_)))
                        (let ()
                          (declare (not safe))
                          (_g124394124404_ _g124395124407_))))))
            (declare (not safe))
            (_g124393124430_ _stx124390_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx124322_)
        (let* ((_g124324124341_
                (lambda (_g124325124338_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124325124338_))))
               (_g124323124387_
                (lambda (_g124325124344_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124325124344_))
                      (let ((_e124330124346_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124325124344_))))
                        (let ((_hd124329124349_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124330124346_)))
                              (_tl124328124351_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124330124346_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124328124351_))
                              (let ((_e124333124354_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124328124351_))))
                                (let ((_hd124332124357_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124333124354_)))
                                      (_tl124331124359_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124333124354_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124331124359_))
                                      (let ((_e124336124362_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124331124359_))))
                                        (let ((_hd124335124365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124336124362_)))
                                              (_tl124334124367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124336124362_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124334124367_))
                                              ((lambda (_L124370_ _L124371_)
                                                 (let ((__tmp129142
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L124370_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp129142
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124335124365_
                                               _hd124332124357_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124324124341_
                                                 _g124325124344_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124324124341_ _g124325124344_)))))
                              (let ()
                                (declare (not safe))
                                (_g124324124341_ _g124325124344_)))))
                      (let ()
                        (declare (not safe))
                        (_g124324124341_ _g124325124344_))))))
          (declare (not safe))
          (_g124323124387_ _stx124322_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx124227_)
        (let* ((___stx127729127730_ _stx124227_)
               (_g124230124250_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127729127730_)))))
          (let ((___kont127731127732_
                 (lambda (_L124294_ _L124295_)
                   (let ((_type-e124312124314_
                          (let ((__tmp129143
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124295_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp129143))))
                     (if _type-e124312124314_
                         (let ((_type-e124317_ _type-e124312124314_))
                           (_type-e124317_ _stx124227_ _L124294_))
                         '#f))))
                (___kont127733127734_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127729127730_))
                (let ((_e124236124262_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127729127730_))))
                  (let ((_tl124234124267_
                         (let () (declare (not safe)) (##cdr _e124236124262_)))
                        (_hd124235124265_
                         (let ()
                           (declare (not safe))
                           (##car _e124236124262_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124234124267_))
                        (let ((_e124239124270_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124234124267_))))
                          (let ((_tl124237124275_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124239124270_)))
                                (_hd124238124273_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124239124270_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124238124273_))
                                (let ((_e124242124278_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124238124273_))))
                                  (let ((_tl124240124283_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124242124278_)))
                                        (_hd124241124281_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124242124278_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124241124281_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124241124281_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124240124283_))
                                                (let ((_e124245124286_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124240124283_))))
                                                  (let ((_tl124243124291_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124245124286_)))
                                                        (_hd124244124289_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124245124286_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124243124291_))
                                                        (___kont127731127732_
                                                         _tl124237124275_
                                                         _hd124244124289_)
                                                        (___kont127733127734_))))
                                                (___kont127733127734_))
                                            (___kont127733127734_))
                                        (___kont127733127734_))))
                                (___kont127733127734_))))
                        (___kont127733127734_))))
                (___kont127733127734_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx124176_)
        (let* ((_g124178124191_
                (lambda (_g124179124188_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124179124188_))))
               (_g124177124224_
                (lambda (_g124179124194_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124179124194_))
                      (let ((_e124183124196_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124179124194_))))
                        (let ((_hd124182124199_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124183124196_)))
                              (_tl124181124201_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124183124196_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124181124201_))
                              (let ((_e124186124204_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124181124201_))))
                                (let ((_hd124185124207_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124186124204_)))
                                      (_tl124184124209_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124186124204_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124184124209_))
                                      ((lambda (_L124212_)
                                         (let ((__tmp129144
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124212_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp129144)))
                                       _hd124185124207_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124178124191_ _g124179124194_)))))
                              (let ()
                                (declare (not safe))
                                (_g124178124191_ _g124179124194_)))))
                      (let ()
                        (declare (not safe))
                        (_g124178124191_ _g124179124194_))))))
          (declare (not safe))
          (_g124177124224_ _stx124176_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123410_)
        (let* ((___stx127767127768_ _form123410_)
               (_g123415123572_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127767127768_)))))
          (let ((___kont127769127770_
                 (lambda (_L124096_ _L124097_ _L124098_) '#t))
                (___kont127775127776_
                 (lambda (_L123884_
                          _L123885_
                          _L123886_
                          _L123887_
                          _L123888_
                          _L123889_)
                   '#t))
                (___kont127781127782_
                 (lambda (_L123680_ _L123681_ _L123682_ _L123683_) '#t))
                (___kont127783127784_ (lambda () '#f)))
            (let* ((___match127908127909_
                    (lambda (_e123534123584_
                             _hd123533123587_
                             _tl123532123589_
                             _e123537123592_
                             _hd123536123595_
                             _tl123535123597_
                             _e123540123600_
                             _hd123539123603_
                             _tl123538123605_
                             _e123543123608_
                             _hd123542123611_
                             _tl123541123613_
                             _e123546123616_
                             _hd123545123619_
                             _tl123544123621_
                             _e123549123624_
                             _hd123548123627_
                             _tl123547123629_
                             _e123552123632_
                             _hd123551123635_
                             _tl123550123637_
                             _e123555123640_
                             _hd123554123643_
                             _tl123553123645_
                             _e123558123648_
                             _hd123557123651_
                             _tl123556123653_
                             _e123561123656_
                             _hd123560123659_
                             _tl123559123661_
                             _e123564123664_
                             _hd123563123667_
                             _tl123562123669_
                             _e123567123672_
                             _hd123566123675_
                             _tl123565123677_)
                      (let ((_L123680_ _hd123566123675_)
                            (_L123681_ _hd123557123651_)
                            (_L123682_ _hd123548123627_)
                            (_L123683_ _hd123533123587_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123683_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123682_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123683_ _L123680_))
                                 (let ((__tmp129145
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123681_
                                           _L123683_))))
                                   (declare (not safe))
                                   (not __tmp129145)))
                            (___kont127781127782_
                             _L123680_
                             _L123681_
                             _L123682_
                             _L123683_)
                            (___kont127783127784_)))))
                   (___match127880127881_
                    (lambda (_e123534123584_
                             _hd123533123587_
                             _tl123532123589_
                             _e123537123592_
                             _hd123536123595_
                             _tl123535123597_
                             _e123540123600_
                             _hd123539123603_
                             _tl123538123605_
                             _e123543123608_
                             _hd123542123611_
                             _tl123541123613_
                             _e123546123616_
                             _hd123545123619_
                             _tl123544123621_
                             _e123549123624_
                             _hd123548123627_
                             _tl123547123629_
                             _e123552123632_
                             _hd123551123635_
                             _tl123550123637_
                             _e123555123640_
                             _hd123554123643_
                             _tl123553123645_
                             _e123558123648_
                             _hd123557123651_
                             _tl123556123653_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123550123637_))
                          (let ((_e123561123656_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123550123637_))))
                            (let ((_tl123559123661_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123561123656_)))
                                  (_hd123560123659_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123561123656_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123560123659_))
                                  (let ((_e123564123664_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123560123659_))))
                                    (let ((_tl123562123669_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123564123664_)))
                                          (_hd123563123667_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123564123664_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123563123667_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123563123667_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123562123669_))
                                                  (let ((_e123567123672_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123562123669_))))
                                                    (let ((_tl123565123677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123567123672_)))
                                                          (_hd123566123675_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123567123672_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123565123677_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123559123661_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123535123597_))
                          (___match127908127909_
                           _e123534123584_
                           _hd123533123587_
                           _tl123532123589_
                           _e123537123592_
                           _hd123536123595_
                           _tl123535123597_
                           _e123540123600_
                           _hd123539123603_
                           _tl123538123605_
                           _e123543123608_
                           _hd123542123611_
                           _tl123541123613_
                           _e123546123616_
                           _hd123545123619_
                           _tl123544123621_
                           _e123549123624_
                           _hd123548123627_
                           _tl123547123629_
                           _e123552123632_
                           _hd123551123635_
                           _tl123550123637_
                           _e123555123640_
                           _hd123554123643_
                           _tl123553123645_
                           _e123558123648_
                           _hd123557123651_
                           _tl123556123653_
                           _e123561123656_
                           _hd123560123659_
                           _tl123559123661_
                           _e123564123664_
                           _hd123563123667_
                           _tl123562123669_
                           _e123567123672_
                           _hd123566123675_
                           _tl123565123677_)
                          (___kont127783127784_))
                      (___kont127783127784_))
                  (___kont127783127784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127783127784_))
                                              (___kont127783127784_))
                                          (___kont127783127784_))))
                                  (___kont127783127784_))))
                          (___kont127783127784_))))
                   (___match127810127811_
                    (lambda (_e123470123724_
                             _hd123469123727_
                             _tl123468123729_
                             ___splice127777127778_
                             _target123471123732_
                             _tl123473123734_)
                      (letrec ((_loop123474123737_
                                (lambda (_hd123472123740_ _arg123478123742_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123472123740_))
                                      (let ((_e123475123745_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123472123740_))))
                                        (let ((_lp-tl123477123750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123475123745_)))
                                              (_lp-hd123476123748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123475123745_))))
                                          (let ((__tmp129160
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123476123748_
                                                         _arg123478123742_))))
                                            (declare (not safe))
                                            (_loop123474123737_
                                             _lp-tl123477123750_
                                             __tmp129160))))
                                      (let ((_arg123479123753_
                                             (reverse _arg123478123742_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123468123729_))
                                            (let ((_e123482123756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123468123729_))))
                                              (let ((_tl123480123761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123482123756_)))
                                                    (_hd123481123759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123482123756_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123481123759_))
                                                    (let ((_e123485123764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123481123759_))))
                                                      (let ((_tl123483123769_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123485123764_)))
                    (_hd123484123767_
                     (let () (declare (not safe)) (##car _e123485123764_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123484123767_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123484123767_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123483123769_))
                            (let ((_e123488123772_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123483123769_))))
                              (let ((_tl123486123777_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123488123772_)))
                                    (_hd123487123775_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123488123772_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123487123775_))
                                    (let ((_e123491123780_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123487123775_))))
                                      (let ((_tl123489123785_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123491123780_)))
                                            (_hd123490123783_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123491123780_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123490123783_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123490123783_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123489123785_))
                                                    (let ((_e123494123788_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123489123785_))))
                                                      (let ((_tl123492123793_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123494123788_)))
                    (_hd123493123791_
                     (let () (declare (not safe)) (##car _e123494123788_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123492123793_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123486123777_))
                        (let ((_e123497123796_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123486123777_))))
                          (let ((_tl123495123801_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123497123796_)))
                                (_hd123496123799_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123497123796_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123496123799_))
                                (let ((_e123500123804_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123496123799_))))
                                  (let ((_tl123498123809_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123500123804_)))
                                        (_hd123499123807_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123500123804_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123499123807_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123499123807_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123498123809_))
                                                (let ((_e123503123812_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123498123809_))))
                                                  (let ((_tl123501123817_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123503123812_)))
                                                        (_hd123502123815_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123503123812_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123501123817_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123495123801_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123495123801_))
                              '1)
                        (let ((___splice127779127780_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123495123801_
                                  '1))))
                          (let ((_tl123506123822_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127779127780_ '1)))
                                (_target123504123820_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127779127780_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123506123822_))
                                (let ((_e123515123825_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123506123822_))))
                                  (let ((_tl123513123830_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123515123825_)))
                                        (_hd123514123828_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123515123825_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123514123828_))
                                        (let ((_e123518123833_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123514123828_))))
                                          (let ((_tl123516123838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123518123833_)))
                                                (_hd123517123836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123518123833_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123517123836_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123517123836_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123516123838_))
                                                        (let ((_e123521123841_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123516123838_))))
                  (let ((_tl123519123846_
                         (let () (declare (not safe)) (##cdr _e123521123841_)))
                        (_hd123520123844_
                         (let ()
                           (declare (not safe))
                           (##car _e123521123841_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123519123846_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123513123830_))
                            (letrec ((_loop123507123849_
                                      (lambda (_hd123505123852_
                                               _xarg123511123854_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123505123852_))
                                            (let ((_e123508123857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123505123852_))))
                                              (let ((_lp-tl123510123862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123508123857_)))
                                                    (_lp-hd123509123860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123508123857_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123509123860_))
                                                    (let ((_e123524123865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123509123860_))))
                                                      (let ((_tl123522123870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123524123865_)))
                    (_hd123523123868_
                     (let () (declare (not safe)) (##car _e123524123865_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123523123868_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123523123868_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123522123870_))
                            (let ((_e123527123873_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123522123870_))))
                              (let ((_tl123525123878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123527123873_)))
                                    (_hd123526123876_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123527123873_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123525123878_))
                                    (let ((__tmp129159
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123526123876_
                                                   _xarg123511123854_))))
                                      (declare (not safe))
                                      (_loop123507123849_
                                       _lp-tl123510123862_
                                       __tmp129159))
                                    (___match127880127881_
                                     _e123470123724_
                                     _hd123469123727_
                                     _tl123468123729_
                                     _e123482123756_
                                     _hd123481123759_
                                     _tl123480123761_
                                     _e123485123764_
                                     _hd123484123767_
                                     _tl123483123769_
                                     _e123488123772_
                                     _hd123487123775_
                                     _tl123486123777_
                                     _e123491123780_
                                     _hd123490123783_
                                     _tl123489123785_
                                     _e123494123788_
                                     _hd123493123791_
                                     _tl123492123793_
                                     _e123497123796_
                                     _hd123496123799_
                                     _tl123495123801_
                                     _e123500123804_
                                     _hd123499123807_
                                     _tl123498123809_
                                     _e123503123812_
                                     _hd123502123815_
                                     _tl123501123817_))))
                            (___match127880127881_
                             _e123470123724_
                             _hd123469123727_
                             _tl123468123729_
                             _e123482123756_
                             _hd123481123759_
                             _tl123480123761_
                             _e123485123764_
                             _hd123484123767_
                             _tl123483123769_
                             _e123488123772_
                             _hd123487123775_
                             _tl123486123777_
                             _e123491123780_
                             _hd123490123783_
                             _tl123489123785_
                             _e123494123788_
                             _hd123493123791_
                             _tl123492123793_
                             _e123497123796_
                             _hd123496123799_
                             _tl123495123801_
                             _e123500123804_
                             _hd123499123807_
                             _tl123498123809_
                             _e123503123812_
                             _hd123502123815_
                             _tl123501123817_))
                        (___match127880127881_
                         _e123470123724_
                         _hd123469123727_
                         _tl123468123729_
                         _e123482123756_
                         _hd123481123759_
                         _tl123480123761_
                         _e123485123764_
                         _hd123484123767_
                         _tl123483123769_
                         _e123488123772_
                         _hd123487123775_
                         _tl123486123777_
                         _e123491123780_
                         _hd123490123783_
                         _tl123489123785_
                         _e123494123788_
                         _hd123493123791_
                         _tl123492123793_
                         _e123497123796_
                         _hd123496123799_
                         _tl123495123801_
                         _e123500123804_
                         _hd123499123807_
                         _tl123498123809_
                         _e123503123812_
                         _hd123502123815_
                         _tl123501123817_))
                    (___match127880127881_
                     _e123470123724_
                     _hd123469123727_
                     _tl123468123729_
                     _e123482123756_
                     _hd123481123759_
                     _tl123480123761_
                     _e123485123764_
                     _hd123484123767_
                     _tl123483123769_
                     _e123488123772_
                     _hd123487123775_
                     _tl123486123777_
                     _e123491123780_
                     _hd123490123783_
                     _tl123489123785_
                     _e123494123788_
                     _hd123493123791_
                     _tl123492123793_
                     _e123497123796_
                     _hd123496123799_
                     _tl123495123801_
                     _e123500123804_
                     _hd123499123807_
                     _tl123498123809_
                     _e123503123812_
                     _hd123502123815_
                     _tl123501123817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127880127881_
                                                     _e123470123724_
                                                     _hd123469123727_
                                                     _tl123468123729_
                                                     _e123482123756_
                                                     _hd123481123759_
                                                     _tl123480123761_
                                                     _e123485123764_
                                                     _hd123484123767_
                                                     _tl123483123769_
                                                     _e123488123772_
                                                     _hd123487123775_
                                                     _tl123486123777_
                                                     _e123491123780_
                                                     _hd123490123783_
                                                     _tl123489123785_
                                                     _e123494123788_
                                                     _hd123493123791_
                                                     _tl123492123793_
                                                     _e123497123796_
                                                     _hd123496123799_
                                                     _tl123495123801_
                                                     _e123500123804_
                                                     _hd123499123807_
                                                     _tl123498123809_
                                                     _e123503123812_
                                                     _hd123502123815_
                                                     _tl123501123817_))))
                                            (let ((_xarg123512123881_
                                                   (reverse _xarg123511123854_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123480123761_))
                                                  (let ((_L123884_
                                                         _hd123520123844_)
                                                        (_L123885_
                                                         _xarg123512123881_)
                                                        (_L123886_
                                                         _hd123502123815_)
                                                        (_L123887_
                                                         _hd123493123791_)
                                                        (_L123888_
                                                         _tl123473123734_)
                                                        (_L123889_
                                                         _arg123479123753_))
                                                    (if (and (let ((__tmp129157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129158
                                   (lambda (_g123932123935_ _g123933123937_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123932123935_
                                             _g123933123937_)))))
                              (declare (not safe))
                              (foldr1 __tmp129158 '() _L123889_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp129157))
                     (let () (declare (not safe)) (gx#identifier? _L123888_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123887_ 'apply))
                     (fx= (length (let ((__tmp129155
                                         (lambda (_g123939123942_
                                                  _g123940123944_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123939123942_
                                                   _g123940123944_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129155 '() _L123889_)))
                          (length (let ((__tmp129156
                                         (lambda (_g123946123949_
                                                  _g123947123951_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123946123949_
                                                   _g123947123951_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129156 '() _L123885_))))
                     (let ((__tmp129153
                            (let ((__tmp129154
                                   (lambda (_g123953123956_ _g123954123958_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123953123956_
                                             _g123954123958_)))))
                              (declare (not safe))
                              (foldr1 __tmp129154 '() _L123889_)))
                           (__tmp129151
                            (let ((__tmp129152
                                   (lambda (_g123960123963_ _g123961123965_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123960123963_
                                             _g123961123965_)))))
                              (declare (not safe))
                              (foldr1 __tmp129152 '() _L123885_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp129153 __tmp129151))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123888_ _L123884_))
                     (let ((__tmp129146
                            (let ((__tmp129150
                                   (lambda (_g123967123969_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123967123969_
                                        _L123886_))))
                                  (__tmp129147
                                   (let ((__tmp129149
                                          (lambda (_g123971123974_
                                                   _g123972123976_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123971123974_
                                                    _g123972123976_))))
                                         (__tmp129148
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123888_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp129149
                                             __tmp129148
                                             _L123889_))))
                              (declare (not safe))
                              (find __tmp129150 __tmp129147))))
                       (declare (not safe))
                       (not __tmp129146)))
                (___kont127775127776_
                 _L123884_
                 _L123885_
                 _L123886_
                 _L123887_
                 _L123888_
                 _L123889_)
                (___match127880127881_
                 _e123470123724_
                 _hd123469123727_
                 _tl123468123729_
                 _e123482123756_
                 _hd123481123759_
                 _tl123480123761_
                 _e123485123764_
                 _hd123484123767_
                 _tl123483123769_
                 _e123488123772_
                 _hd123487123775_
                 _tl123486123777_
                 _e123491123780_
                 _hd123490123783_
                 _tl123489123785_
                 _e123494123788_
                 _hd123493123791_
                 _tl123492123793_
                 _e123497123796_
                 _hd123496123799_
                 _tl123495123801_
                 _e123500123804_
                 _hd123499123807_
                 _tl123498123809_
                 _e123503123812_
                 _hd123502123815_
                 _tl123501123817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127880127881_
                                                   _e123470123724_
                                                   _hd123469123727_
                                                   _tl123468123729_
                                                   _e123482123756_
                                                   _hd123481123759_
                                                   _tl123480123761_
                                                   _e123485123764_
                                                   _hd123484123767_
                                                   _tl123483123769_
                                                   _e123488123772_
                                                   _hd123487123775_
                                                   _tl123486123777_
                                                   _e123491123780_
                                                   _hd123490123783_
                                                   _tl123489123785_
                                                   _e123494123788_
                                                   _hd123493123791_
                                                   _tl123492123793_
                                                   _e123497123796_
                                                   _hd123496123799_
                                                   _tl123495123801_
                                                   _e123500123804_
                                                   _hd123499123807_
                                                   _tl123498123809_
                                                   _e123503123812_
                                                   _hd123502123815_
                                                   _tl123501123817_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123507123849_ _target123504123820_ '())))
                            (___match127880127881_
                             _e123470123724_
                             _hd123469123727_
                             _tl123468123729_
                             _e123482123756_
                             _hd123481123759_
                             _tl123480123761_
                             _e123485123764_
                             _hd123484123767_
                             _tl123483123769_
                             _e123488123772_
                             _hd123487123775_
                             _tl123486123777_
                             _e123491123780_
                             _hd123490123783_
                             _tl123489123785_
                             _e123494123788_
                             _hd123493123791_
                             _tl123492123793_
                             _e123497123796_
                             _hd123496123799_
                             _tl123495123801_
                             _e123500123804_
                             _hd123499123807_
                             _tl123498123809_
                             _e123503123812_
                             _hd123502123815_
                             _tl123501123817_))
                        (___match127880127881_
                         _e123470123724_
                         _hd123469123727_
                         _tl123468123729_
                         _e123482123756_
                         _hd123481123759_
                         _tl123480123761_
                         _e123485123764_
                         _hd123484123767_
                         _tl123483123769_
                         _e123488123772_
                         _hd123487123775_
                         _tl123486123777_
                         _e123491123780_
                         _hd123490123783_
                         _tl123489123785_
                         _e123494123788_
                         _hd123493123791_
                         _tl123492123793_
                         _e123497123796_
                         _hd123496123799_
                         _tl123495123801_
                         _e123500123804_
                         _hd123499123807_
                         _tl123498123809_
                         _e123503123812_
                         _hd123502123815_
                         _tl123501123817_))))
                (___match127880127881_
                 _e123470123724_
                 _hd123469123727_
                 _tl123468123729_
                 _e123482123756_
                 _hd123481123759_
                 _tl123480123761_
                 _e123485123764_
                 _hd123484123767_
                 _tl123483123769_
                 _e123488123772_
                 _hd123487123775_
                 _tl123486123777_
                 _e123491123780_
                 _hd123490123783_
                 _tl123489123785_
                 _e123494123788_
                 _hd123493123791_
                 _tl123492123793_
                 _e123497123796_
                 _hd123496123799_
                 _tl123495123801_
                 _e123500123804_
                 _hd123499123807_
                 _tl123498123809_
                 _e123503123812_
                 _hd123502123815_
                 _tl123501123817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127880127881_
                                                     _e123470123724_
                                                     _hd123469123727_
                                                     _tl123468123729_
                                                     _e123482123756_
                                                     _hd123481123759_
                                                     _tl123480123761_
                                                     _e123485123764_
                                                     _hd123484123767_
                                                     _tl123483123769_
                                                     _e123488123772_
                                                     _hd123487123775_
                                                     _tl123486123777_
                                                     _e123491123780_
                                                     _hd123490123783_
                                                     _tl123489123785_
                                                     _e123494123788_
                                                     _hd123493123791_
                                                     _tl123492123793_
                                                     _e123497123796_
                                                     _hd123496123799_
                                                     _tl123495123801_
                                                     _e123500123804_
                                                     _hd123499123807_
                                                     _tl123498123809_
                                                     _e123503123812_
                                                     _hd123502123815_
                                                     _tl123501123817_))
                                                (___match127880127881_
                                                 _e123470123724_
                                                 _hd123469123727_
                                                 _tl123468123729_
                                                 _e123482123756_
                                                 _hd123481123759_
                                                 _tl123480123761_
                                                 _e123485123764_
                                                 _hd123484123767_
                                                 _tl123483123769_
                                                 _e123488123772_
                                                 _hd123487123775_
                                                 _tl123486123777_
                                                 _e123491123780_
                                                 _hd123490123783_
                                                 _tl123489123785_
                                                 _e123494123788_
                                                 _hd123493123791_
                                                 _tl123492123793_
                                                 _e123497123796_
                                                 _hd123496123799_
                                                 _tl123495123801_
                                                 _e123500123804_
                                                 _hd123499123807_
                                                 _tl123498123809_
                                                 _e123503123812_
                                                 _hd123502123815_
                                                 _tl123501123817_))))
                                        (___match127880127881_
                                         _e123470123724_
                                         _hd123469123727_
                                         _tl123468123729_
                                         _e123482123756_
                                         _hd123481123759_
                                         _tl123480123761_
                                         _e123485123764_
                                         _hd123484123767_
                                         _tl123483123769_
                                         _e123488123772_
                                         _hd123487123775_
                                         _tl123486123777_
                                         _e123491123780_
                                         _hd123490123783_
                                         _tl123489123785_
                                         _e123494123788_
                                         _hd123493123791_
                                         _tl123492123793_
                                         _e123497123796_
                                         _hd123496123799_
                                         _tl123495123801_
                                         _e123500123804_
                                         _hd123499123807_
                                         _tl123498123809_
                                         _e123503123812_
                                         _hd123502123815_
                                         _tl123501123817_))))
                                (___match127880127881_
                                 _e123470123724_
                                 _hd123469123727_
                                 _tl123468123729_
                                 _e123482123756_
                                 _hd123481123759_
                                 _tl123480123761_
                                 _e123485123764_
                                 _hd123484123767_
                                 _tl123483123769_
                                 _e123488123772_
                                 _hd123487123775_
                                 _tl123486123777_
                                 _e123491123780_
                                 _hd123490123783_
                                 _tl123489123785_
                                 _e123494123788_
                                 _hd123493123791_
                                 _tl123492123793_
                                 _e123497123796_
                                 _hd123496123799_
                                 _tl123495123801_
                                 _e123500123804_
                                 _hd123499123807_
                                 _tl123498123809_
                                 _e123503123812_
                                 _hd123502123815_
                                 _tl123501123817_))))
                        (___match127880127881_
                         _e123470123724_
                         _hd123469123727_
                         _tl123468123729_
                         _e123482123756_
                         _hd123481123759_
                         _tl123480123761_
                         _e123485123764_
                         _hd123484123767_
                         _tl123483123769_
                         _e123488123772_
                         _hd123487123775_
                         _tl123486123777_
                         _e123491123780_
                         _hd123490123783_
                         _tl123489123785_
                         _e123494123788_
                         _hd123493123791_
                         _tl123492123793_
                         _e123497123796_
                         _hd123496123799_
                         _tl123495123801_
                         _e123500123804_
                         _hd123499123807_
                         _tl123498123809_
                         _e123503123812_
                         _hd123502123815_
                         _tl123501123817_))
                    (___match127880127881_
                     _e123470123724_
                     _hd123469123727_
                     _tl123468123729_
                     _e123482123756_
                     _hd123481123759_
                     _tl123480123761_
                     _e123485123764_
                     _hd123484123767_
                     _tl123483123769_
                     _e123488123772_
                     _hd123487123775_
                     _tl123486123777_
                     _e123491123780_
                     _hd123490123783_
                     _tl123489123785_
                     _e123494123788_
                     _hd123493123791_
                     _tl123492123793_
                     _e123497123796_
                     _hd123496123799_
                     _tl123495123801_
                     _e123500123804_
                     _hd123499123807_
                     _tl123498123809_
                     _e123503123812_
                     _hd123502123815_
                     _tl123501123817_))
                (___kont127783127784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127783127784_))
                                            (___kont127783127784_))
                                        (___kont127783127784_))))
                                (___kont127783127784_))))
                        (___kont127783127784_))
                    (___kont127783127784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127783127784_))
                                                (___kont127783127784_))
                                            (___kont127783127784_))))
                                    (___kont127783127784_))))
                            (___kont127783127784_))
                        (___kont127783127784_))
                    (___kont127783127784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127783127784_))))
                                            (___kont127783127784_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123474123737_ _target123471123732_ '())))))
                   (___match127798127799_
                    (lambda (_e123422123984_
                             _hd123421123987_
                             _tl123420123989_
                             ___splice127771127772_
                             _target123423123992_
                             _tl123425123994_)
                      (letrec ((_loop123426123997_
                                (lambda (_hd123424124000_ _arg123430124002_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123424124000_))
                                      (let ((_e123427124005_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123424124000_))))
                                        (let ((_lp-tl123429124010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123427124005_)))
                                              (_lp-hd123428124008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123427124005_))))
                                          (let ((__tmp129174
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123428124008_
                                                         _arg123430124002_))))
                                            (declare (not safe))
                                            (_loop123426123997_
                                             _lp-tl123429124010_
                                             __tmp129174))))
                                      (let ((_arg123431124013_
                                             (reverse _arg123430124002_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123420123989_))
                                            (let ((_e123434124016_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123420123989_))))
                                              (let ((_tl123432124021_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123434124016_)))
                                                    (_hd123433124019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123434124016_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123433124019_))
                                                    (let ((_e123437124024_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123433124019_))))
                                                      (let ((_tl123435124029_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123437124024_)))
                    (_hd123436124027_
                     (let () (declare (not safe)) (##car _e123437124024_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123436124027_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123436124027_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123435124029_))
                            (let ((_e123440124032_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123435124029_))))
                              (let ((_tl123438124037_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123440124032_)))
                                    (_hd123439124035_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123440124032_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123439124035_))
                                    (let ((_e123443124040_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123439124035_))))
                                      (let ((_tl123441124045_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123443124040_)))
                                            (_hd123442124043_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123443124040_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123442124043_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123442124043_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123441124045_))
                                                    (let ((_e123446124048_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123441124045_))))
                                                      (let ((_tl123444124053_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123446124048_)))
                    (_hd123445124051_
                     (let () (declare (not safe)) (##car _e123446124048_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123444124053_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123438124037_))
                        (let ((___splice127773127774_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123438124037_
                                  '0))))
                          (let ((_tl123449124058_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127773127774_ '1)))
                                (_target123447124056_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127773127774_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123449124058_))
                                (letrec ((_loop123450124061_
                                          (lambda (_hd123448124064_
                                                   _xarg123454124066_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123448124064_))
                                                (let ((_e123451124069_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123448124064_))))
                                                  (let ((_lp-tl123453124074_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123451124069_)))
                                                        (_lp-hd123452124072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123451124069_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123452124072_))
                                                        (let ((_e123458124077_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123452124072_))))
                  (let ((_tl123456124082_
                         (let () (declare (not safe)) (##cdr _e123458124077_)))
                        (_hd123457124080_
                         (let ()
                           (declare (not safe))
                           (##car _e123458124077_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123457124080_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123457124080_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123456124082_))
                                (let ((_e123461124085_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123456124082_))))
                                  (let ((_tl123459124090_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123461124085_)))
                                        (_hd123460124088_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123461124085_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123459124090_))
                                        (let ((__tmp129173
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123460124088_
                                                       _xarg123454124066_))))
                                          (declare (not safe))
                                          (_loop123450124061_
                                           _lp-tl123453124074_
                                           __tmp129173))
                                        (___match127810127811_
                                         _e123422123984_
                                         _hd123421123987_
                                         _tl123420123989_
                                         ___splice127771127772_
                                         _target123423123992_
                                         _tl123425123994_))))
                                (___match127810127811_
                                 _e123422123984_
                                 _hd123421123987_
                                 _tl123420123989_
                                 ___splice127771127772_
                                 _target123423123992_
                                 _tl123425123994_))
                            (___match127810127811_
                             _e123422123984_
                             _hd123421123987_
                             _tl123420123989_
                             ___splice127771127772_
                             _target123423123992_
                             _tl123425123994_))
                        (___match127810127811_
                         _e123422123984_
                         _hd123421123987_
                         _tl123420123989_
                         ___splice127771127772_
                         _target123423123992_
                         _tl123425123994_))))
                (___match127810127811_
                 _e123422123984_
                 _hd123421123987_
                 _tl123420123989_
                 ___splice127771127772_
                 _target123423123992_
                 _tl123425123994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123455124093_
                                                       (reverse _xarg123454124066_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123432124021_))
                                                      (let ((_L124096_
                                                             _xarg123455124093_)
                                                            (_L124097_
                                                             _hd123445124051_)
                                                            (_L124098_
                                                             _arg123431124013_))
                                                        (if (and (let ((__tmp129171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp129172
                                       (lambda (_g124126124129_
                                                _g124127124131_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124126124129_
                                                 _g124127124131_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129172 '() _L124098_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp129171))
                         (fx= (length (let ((__tmp129169
                                             (lambda (_g124133124136_
                                                      _g124134124138_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124133124136_
                                                       _g124134124138_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129169 '() _L124098_)))
                              (length (let ((__tmp129170
                                             (lambda (_g124140124143_
                                                      _g124141124145_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124140124143_
                                                       _g124141124145_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129170 '() _L124096_))))
                         (let ((__tmp129167
                                (let ((__tmp129168
                                       (lambda (_g124147124150_
                                                _g124148124152_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124147124150_
                                                 _g124148124152_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129168 '() _L124098_)))
                               (__tmp129165
                                (let ((__tmp129166
                                       (lambda (_g124154124157_
                                                _g124155124159_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124154124157_
                                                 _g124155124159_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129166 '() _L124096_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp129167
                                    __tmp129165))
                         (let ((__tmp129161
                                (let ((__tmp129164
                                       (lambda (_g124161124163_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g124161124163_
                                            _L124097_))))
                                      (__tmp129162
                                       (let ((__tmp129163
                                              (lambda (_g124165124168_
                                                       _g124166124170_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g124165124168_
                                                        _g124166124170_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp129163 '() _L124098_))))
                                  (declare (not safe))
                                  (find __tmp129164 __tmp129162))))
                           (declare (not safe))
                           (not __tmp129161)))
                    (___kont127769127770_ _L124096_ _L124097_ _L124098_)
                    (___match127810127811_
                     _e123422123984_
                     _hd123421123987_
                     _tl123420123989_
                     ___splice127771127772_
                     _target123423123992_
                     _tl123425123994_)))
              (___match127810127811_
               _e123422123984_
               _hd123421123987_
               _tl123420123989_
               ___splice127771127772_
               _target123423123992_
               _tl123425123994_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123450124061_
                                     _target123447124056_
                                     '())))
                                (___match127810127811_
                                 _e123422123984_
                                 _hd123421123987_
                                 _tl123420123989_
                                 ___splice127771127772_
                                 _target123423123992_
                                 _tl123425123994_))))
                        (___match127810127811_
                         _e123422123984_
                         _hd123421123987_
                         _tl123420123989_
                         ___splice127771127772_
                         _target123423123992_
                         _tl123425123994_))
                    (___match127810127811_
                     _e123422123984_
                     _hd123421123987_
                     _tl123420123989_
                     ___splice127771127772_
                     _target123423123992_
                     _tl123425123994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127810127811_
                                                     _e123422123984_
                                                     _hd123421123987_
                                                     _tl123420123989_
                                                     ___splice127771127772_
                                                     _target123423123992_
                                                     _tl123425123994_))
                                                (___match127810127811_
                                                 _e123422123984_
                                                 _hd123421123987_
                                                 _tl123420123989_
                                                 ___splice127771127772_
                                                 _target123423123992_
                                                 _tl123425123994_))
                                            (___match127810127811_
                                             _e123422123984_
                                             _hd123421123987_
                                             _tl123420123989_
                                             ___splice127771127772_
                                             _target123423123992_
                                             _tl123425123994_))))
                                    (___match127810127811_
                                     _e123422123984_
                                     _hd123421123987_
                                     _tl123420123989_
                                     ___splice127771127772_
                                     _target123423123992_
                                     _tl123425123994_))))
                            (___match127810127811_
                             _e123422123984_
                             _hd123421123987_
                             _tl123420123989_
                             ___splice127771127772_
                             _target123423123992_
                             _tl123425123994_))
                        (___match127810127811_
                         _e123422123984_
                         _hd123421123987_
                         _tl123420123989_
                         ___splice127771127772_
                         _target123423123992_
                         _tl123425123994_))
                    (___match127810127811_
                     _e123422123984_
                     _hd123421123987_
                     _tl123420123989_
                     ___splice127771127772_
                     _target123423123992_
                     _tl123425123994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127810127811_
                                                     _e123422123984_
                                                     _hd123421123987_
                                                     _tl123420123989_
                                                     ___splice127771127772_
                                                     _target123423123992_
                                                     _tl123425123994_))))
                                            (___match127810127811_
                                             _e123422123984_
                                             _hd123421123987_
                                             _tl123420123989_
                                             ___splice127771127772_
                                             _target123423123992_
                                             _tl123425123994_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123426123997_ _target123423123992_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127767127768_))
                  (let ((_e123422123984_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127767127768_))))
                    (let ((_tl123420123989_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123422123984_)))
                          (_hd123421123987_
                           (let ()
                             (declare (not safe))
                             (##car _e123422123984_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123421123987_))
                          (let ((___splice127771127772_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123421123987_
                                    '0))))
                            (let ((_tl123425123994_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127771127772_ '1)))
                                  (_target123423123992_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127771127772_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123425123994_))
                                  (___match127798127799_
                                   _e123422123984_
                                   _hd123421123987_
                                   _tl123420123989_
                                   ___splice127771127772_
                                   _target123423123992_
                                   _tl123425123994_)
                                  (___match127810127811_
                                   _e123422123984_
                                   _hd123421123987_
                                   _tl123420123989_
                                   ___splice127771127772_
                                   _target123423123992_
                                   _tl123425123994_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123420123989_))
                              (let ((_e123537123592_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123420123989_))))
                                (let ((_tl123535123597_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123537123592_)))
                                      (_hd123536123595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123537123592_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123536123595_))
                                      (let ((_e123540123600_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123536123595_))))
                                        (let ((_tl123538123605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123540123600_)))
                                              (_hd123539123603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123540123600_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123539123603_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123539123603_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123538123605_))
                                                      (let ((_e123543123608_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123538123605_))))
                (let ((_tl123541123613_
                       (let () (declare (not safe)) (##cdr _e123543123608_)))
                      (_hd123542123611_
                       (let () (declare (not safe)) (##car _e123543123608_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123542123611_))
                      (let ((_e123546123616_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123542123611_))))
                        (let ((_tl123544123621_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123546123616_)))
                              (_hd123545123619_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123546123616_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123545123619_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123545123619_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123544123621_))
                                      (let ((_e123549123624_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123544123621_))))
                                        (let ((_tl123547123629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123549123624_)))
                                              (_hd123548123627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123549123624_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123547123629_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123541123613_))
                                                  (let ((_e123552123632_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123541123613_))))
                                                    (let ((_tl123550123637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123552123632_)))
                                                          (_hd123551123635_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123552123632_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123551123635_))
                                                          (let ((_e123555123640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123551123635_))))
                    (let ((_tl123553123645_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123555123640_)))
                          (_hd123554123643_
                           (let ()
                             (declare (not safe))
                             (##car _e123555123640_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123554123643_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123554123643_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123553123645_))
                                  (let ((_e123558123648_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123553123645_))))
                                    (let ((_tl123556123653_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123558123648_)))
                                          (_hd123557123651_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123558123648_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123556123653_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123550123637_))
                                              (let ((_e123561123656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123550123637_))))
                                                (let ((_tl123559123661_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123561123656_)))
                                                      (_hd123560123659_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123561123656_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123560123659_))
                                                      (let ((_e123564123664_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123560123659_))))
                (let ((_tl123562123669_
                       (let () (declare (not safe)) (##cdr _e123564123664_)))
                      (_hd123563123667_
                       (let () (declare (not safe)) (##car _e123564123664_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123563123667_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123563123667_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123562123669_))
                              (let ((_e123567123672_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123562123669_))))
                                (let ((_tl123565123677_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123567123672_)))
                                      (_hd123566123675_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123567123672_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123565123677_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123559123661_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123535123597_))
                                              (___match127908127909_
                                               _e123422123984_
                                               _hd123421123987_
                                               _tl123420123989_
                                               _e123537123592_
                                               _hd123536123595_
                                               _tl123535123597_
                                               _e123540123600_
                                               _hd123539123603_
                                               _tl123538123605_
                                               _e123543123608_
                                               _hd123542123611_
                                               _tl123541123613_
                                               _e123546123616_
                                               _hd123545123619_
                                               _tl123544123621_
                                               _e123549123624_
                                               _hd123548123627_
                                               _tl123547123629_
                                               _e123552123632_
                                               _hd123551123635_
                                               _tl123550123637_
                                               _e123555123640_
                                               _hd123554123643_
                                               _tl123553123645_
                                               _e123558123648_
                                               _hd123557123651_
                                               _tl123556123653_
                                               _e123561123656_
                                               _hd123560123659_
                                               _tl123559123661_
                                               _e123564123664_
                                               _hd123563123667_
                                               _tl123562123669_
                                               _e123567123672_
                                               _hd123566123675_
                                               _tl123565123677_)
                                              (___kont127783127784_))
                                          (___kont127783127784_))
                                      (___kont127783127784_))))
                              (___kont127783127784_))
                          (___kont127783127784_))
                      (___kont127783127784_))))
              (___kont127783127784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127783127784_))
                                          (___kont127783127784_))))
                                  (___kont127783127784_))
                              (___kont127783127784_))
                          (___kont127783127784_))))
                  (___kont127783127784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127783127784_))
                                              (___kont127783127784_))))
                                      (___kont127783127784_))
                                  (___kont127783127784_))
                              (___kont127783127784_))))
                      (___kont127783127784_))))
              (___kont127783127784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127783127784_))
                                              (___kont127783127784_))))
                                      (___kont127783127784_))))
                              (___kont127783127784_)))))
                  (___kont127783127784_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122878_)
        (let* ((___stx127911127912_ _form122878_)
               (_g122882123006_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127911127912_)))))
          (let ((___kont127913127914_
                 (lambda (_L123376_ _L123377_ _L123378_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123377_))))
                (___kont127919127920_
                 (lambda (_L123224_ _L123225_ _L123226_ _L123227_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123224_))))
                (___kont127923127924_
                 (lambda (_L123091_ _L123092_ _L123093_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123091_)))))
            (let* ((___match128020128021_
                    (lambda (_e122974123011_
                             _hd122973123014_
                             _tl122972123016_
                             _e122977123019_
                             _hd122976123022_
                             _tl122975123024_
                             _e122980123027_
                             _hd122979123030_
                             _tl122978123032_
                             _e122983123035_
                             _hd122982123038_
                             _tl122981123040_
                             _e122986123043_
                             _hd122985123046_
                             _tl122984123048_
                             _e122989123051_
                             _hd122988123054_
                             _tl122987123056_
                             _e122992123059_
                             _hd122991123062_
                             _tl122990123064_
                             _e122995123067_
                             _hd122994123070_
                             _tl122993123072_
                             _e122998123075_
                             _hd122997123078_
                             _tl122996123080_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122990123064_))
                          (let ((_e123001123083_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122990123064_))))
                            (let ((_tl122999123088_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123001123083_)))
                                  (_hd123000123086_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123001123083_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122999123088_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122975123024_))
                                      (___kont127923127924_
                                       _hd122997123078_
                                       _hd122988123054_
                                       _hd122973123014_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122882123006_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122882123006_)))))
                          (let () (declare (not safe)) (_g122882123006_)))))
                   (___match127950127951_
                    (lambda (_e122935123128_
                             _hd122934123131_
                             _tl122933123133_
                             ___splice127921127922_
                             _target122936123136_
                             _tl122938123138_)
                      (letrec ((_loop122939123141_
                                (lambda (_hd122937123144_ _arg122943123146_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122937123144_))
                                      (let ((_e122940123149_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122937123144_))))
                                        (let ((_lp-tl122942123154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122940123149_)))
                                              (_lp-hd122941123152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122940123149_))))
                                          (let ((__tmp129175
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122941123152_
                                                         _arg122943123146_))))
                                            (declare (not safe))
                                            (_loop122939123141_
                                             _lp-tl122942123154_
                                             __tmp129175))))
                                      (let ((_arg122944123157_
                                             (reverse _arg122943123146_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122933123133_))
                                            (let ((_e122947123160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122933123133_))))
                                              (let ((_tl122945123165_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122947123160_)))
                                                    (_hd122946123163_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122947123160_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122946123163_))
                                                    (let ((_e122950123168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122946123163_))))
                                                      (let ((_tl122948123173_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122950123168_)))
                    (_hd122949123171_
                     (let () (declare (not safe)) (##car _e122950123168_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122949123171_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122949123171_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122948123173_))
                            (let ((_e122953123176_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122948123173_))))
                              (let ((_tl122951123181_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122953123176_)))
                                    (_hd122952123179_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122953123176_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122952123179_))
                                    (let ((_e122956123184_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122952123179_))))
                                      (let ((_tl122954123189_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122956123184_)))
                                            (_hd122955123187_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122956123184_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122955123187_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122955123187_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122954123189_))
                                                    (let ((_e122959123192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122954123189_))))
                                                      (let ((_tl122957123197_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122959123192_)))
                    (_hd122958123195_
                     (let () (declare (not safe)) (##car _e122959123192_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122957123197_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122951123181_))
                        (let ((_e122962123200_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122951123181_))))
                          (let ((_tl122960123205_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122962123200_)))
                                (_hd122961123203_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122962123200_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122961123203_))
                                (let ((_e122965123208_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122961123203_))))
                                  (let ((_tl122963123213_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122965123208_)))
                                        (_hd122964123211_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122965123208_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122964123211_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122964123211_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122963123213_))
                                                (let ((_e122968123216_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122963123213_))))
                                                  (let ((_tl122966123221_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122968123216_)))
                                                        (_hd122967123219_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122968123216_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122966123221_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122945123165_))
                                                            (___kont127919127920_
                                                             _hd122967123219_
                                                             _hd122958123195_
                                                             _tl122938123138_
                                                             _arg122944123157_)
                                                            (___match128020128021_
                                                             _e122935123128_
                                                             _hd122934123131_
                                                             _tl122933123133_
                                                             _e122947123160_
                                                             _hd122946123163_
                                                             _tl122945123165_
                                                             _e122950123168_
                                                             _hd122949123171_
                                                             _tl122948123173_
                                                             _e122953123176_
                                                             _hd122952123179_
                                                             _tl122951123181_
                                                             _e122956123184_
                                                             _hd122955123187_
                                                             _tl122954123189_
                                                             _e122959123192_
                                                             _hd122958123195_
                                                             _tl122957123197_
                                                             _e122962123200_
                                                             _hd122961123203_
                                                             _tl122960123205_
                                                             _e122965123208_
                                                             _hd122964123211_
                                                             _tl122963123213_
                                                             _e122968123216_
                                                             _hd122967123219_
                                                             _tl122966123221_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122882123006_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122882123006_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122882123006_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122882123006_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122882123006_)))))
                        (let () (declare (not safe)) (_g122882123006_)))
                    (let () (declare (not safe)) (_g122882123006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122882123006_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122882123006_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122882123006_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122882123006_)))))
                            (let () (declare (not safe)) (_g122882123006_)))
                        (let () (declare (not safe)) (_g122882123006_)))
                    (let () (declare (not safe)) (_g122882123006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122882123006_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122882123006_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122939123141_ _target122936123136_ '())))))
                   (___match127938127939_
                    (lambda (_e122889123264_
                             _hd122888123267_
                             _tl122887123269_
                             ___splice127915127916_
                             _target122890123272_
                             _tl122892123274_)
                      (letrec ((_loop122893123277_
                                (lambda (_hd122891123280_ _arg122897123282_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122891123280_))
                                      (let ((_e122894123285_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122891123280_))))
                                        (let ((_lp-tl122896123290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122894123285_)))
                                              (_lp-hd122895123288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122894123285_))))
                                          (let ((__tmp129177
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122895123288_
                                                         _arg122897123282_))))
                                            (declare (not safe))
                                            (_loop122893123277_
                                             _lp-tl122896123290_
                                             __tmp129177))))
                                      (let ((_arg122898123293_
                                             (reverse _arg122897123282_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122887123269_))
                                            (let ((_e122901123296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122887123269_))))
                                              (let ((_tl122899123301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122901123296_)))
                                                    (_hd122900123299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122901123296_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122900123299_))
                                                    (let ((_e122904123304_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122900123299_))))
                                                      (let ((_tl122902123309_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122904123304_)))
                    (_hd122903123307_
                     (let () (declare (not safe)) (##car _e122904123304_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122903123307_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122903123307_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122902123309_))
                            (let ((_e122907123312_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122902123309_))))
                              (let ((_tl122905123317_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122907123312_)))
                                    (_hd122906123315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122907123312_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122906123315_))
                                    (let ((_e122910123320_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122906123315_))))
                                      (let ((_tl122908123325_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122910123320_)))
                                            (_hd122909123323_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122910123320_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122909123323_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122909123323_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122908123325_))
                                                    (let ((_e122913123328_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122908123325_))))
                                                      (let ((_tl122911123333_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122913123328_)))
                    (_hd122912123331_
                     (let () (declare (not safe)) (##car _e122913123328_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122911123333_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122905123317_))
                        (let ((___splice127917127918_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122905123317_
                                  '0))))
                          (let ((_tl122916123338_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127917127918_ '1)))
                                (_target122914123336_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127917127918_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122916123338_))
                                (letrec ((_loop122917123341_
                                          (lambda (_hd122915123344_
                                                   _xarg122921123346_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122915123344_))
                                                (let ((_e122918123349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122915123344_))))
                                                  (let ((_lp-tl122920123354_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122918123349_)))
                                                        (_lp-hd122919123352_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122918123349_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122919123352_))
                                                        (let ((_e122925123357_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122919123352_))))
                  (let ((_tl122923123362_
                         (let () (declare (not safe)) (##cdr _e122925123357_)))
                        (_hd122924123360_
                         (let ()
                           (declare (not safe))
                           (##car _e122925123357_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122924123360_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122924123360_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122923123362_))
                                (let ((_e122928123365_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122923123362_))))
                                  (let ((_tl122926123370_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122928123365_)))
                                        (_hd122927123368_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122928123365_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122926123370_))
                                        (let ((__tmp129176
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122927123368_
                                                       _xarg122921123346_))))
                                          (declare (not safe))
                                          (_loop122917123341_
                                           _lp-tl122920123354_
                                           __tmp129176))
                                        (___match127950127951_
                                         _e122889123264_
                                         _hd122888123267_
                                         _tl122887123269_
                                         ___splice127915127916_
                                         _target122890123272_
                                         _tl122892123274_))))
                                (___match127950127951_
                                 _e122889123264_
                                 _hd122888123267_
                                 _tl122887123269_
                                 ___splice127915127916_
                                 _target122890123272_
                                 _tl122892123274_))
                            (___match127950127951_
                             _e122889123264_
                             _hd122888123267_
                             _tl122887123269_
                             ___splice127915127916_
                             _target122890123272_
                             _tl122892123274_))
                        (___match127950127951_
                         _e122889123264_
                         _hd122888123267_
                         _tl122887123269_
                         ___splice127915127916_
                         _target122890123272_
                         _tl122892123274_))))
                (___match127950127951_
                 _e122889123264_
                 _hd122888123267_
                 _tl122887123269_
                 ___splice127915127916_
                 _target122890123272_
                 _tl122892123274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122922123373_
                                                       (reverse _xarg122921123346_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122899123301_))
                                                      (___kont127913127914_
                                                       _xarg122922123373_
                                                       _hd122912123331_
                                                       _arg122898123293_)
                                                      (___match127950127951_
                                                       _e122889123264_
                                                       _hd122888123267_
                                                       _tl122887123269_
                                                       ___splice127915127916_
                                                       _target122890123272_
                                                       _tl122892123274_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122917123341_
                                     _target122914123336_
                                     '())))
                                (___match127950127951_
                                 _e122889123264_
                                 _hd122888123267_
                                 _tl122887123269_
                                 ___splice127915127916_
                                 _target122890123272_
                                 _tl122892123274_))))
                        (___match127950127951_
                         _e122889123264_
                         _hd122888123267_
                         _tl122887123269_
                         ___splice127915127916_
                         _target122890123272_
                         _tl122892123274_))
                    (___match127950127951_
                     _e122889123264_
                     _hd122888123267_
                     _tl122887123269_
                     ___splice127915127916_
                     _target122890123272_
                     _tl122892123274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127950127951_
                                                     _e122889123264_
                                                     _hd122888123267_
                                                     _tl122887123269_
                                                     ___splice127915127916_
                                                     _target122890123272_
                                                     _tl122892123274_))
                                                (___match127950127951_
                                                 _e122889123264_
                                                 _hd122888123267_
                                                 _tl122887123269_
                                                 ___splice127915127916_
                                                 _target122890123272_
                                                 _tl122892123274_))
                                            (___match127950127951_
                                             _e122889123264_
                                             _hd122888123267_
                                             _tl122887123269_
                                             ___splice127915127916_
                                             _target122890123272_
                                             _tl122892123274_))))
                                    (___match127950127951_
                                     _e122889123264_
                                     _hd122888123267_
                                     _tl122887123269_
                                     ___splice127915127916_
                                     _target122890123272_
                                     _tl122892123274_))))
                            (___match127950127951_
                             _e122889123264_
                             _hd122888123267_
                             _tl122887123269_
                             ___splice127915127916_
                             _target122890123272_
                             _tl122892123274_))
                        (___match127950127951_
                         _e122889123264_
                         _hd122888123267_
                         _tl122887123269_
                         ___splice127915127916_
                         _target122890123272_
                         _tl122892123274_))
                    (___match127950127951_
                     _e122889123264_
                     _hd122888123267_
                     _tl122887123269_
                     ___splice127915127916_
                     _target122890123272_
                     _tl122892123274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127950127951_
                                                     _e122889123264_
                                                     _hd122888123267_
                                                     _tl122887123269_
                                                     ___splice127915127916_
                                                     _target122890123272_
                                                     _tl122892123274_))))
                                            (___match127950127951_
                                             _e122889123264_
                                             _hd122888123267_
                                             _tl122887123269_
                                             ___splice127915127916_
                                             _target122890123272_
                                             _tl122892123274_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122893123277_ _target122890123272_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127911127912_))
                  (let ((_e122889123264_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127911127912_))))
                    (let ((_tl122887123269_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122889123264_)))
                          (_hd122888123267_
                           (let ()
                             (declare (not safe))
                             (##car _e122889123264_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122888123267_))
                          (let ((___splice127915127916_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122888123267_
                                    '0))))
                            (let ((_tl122892123274_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127915127916_ '1)))
                                  (_target122890123272_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127915127916_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122892123274_))
                                  (___match127938127939_
                                   _e122889123264_
                                   _hd122888123267_
                                   _tl122887123269_
                                   ___splice127915127916_
                                   _target122890123272_
                                   _tl122892123274_)
                                  (___match127950127951_
                                   _e122889123264_
                                   _hd122888123267_
                                   _tl122887123269_
                                   ___splice127915127916_
                                   _target122890123272_
                                   _tl122892123274_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122887123269_))
                              (let ((_e122977123019_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122887123269_))))
                                (let ((_tl122975123024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122977123019_)))
                                      (_hd122976123022_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122977123019_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122976123022_))
                                      (let ((_e122980123027_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122976123022_))))
                                        (let ((_tl122978123032_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122980123027_)))
                                              (_hd122979123030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122980123027_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122979123030_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122979123030_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122978123032_))
                                                      (let ((_e122983123035_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122978123032_))))
                (let ((_tl122981123040_
                       (let () (declare (not safe)) (##cdr _e122983123035_)))
                      (_hd122982123038_
                       (let () (declare (not safe)) (##car _e122983123035_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122982123038_))
                      (let ((_e122986123043_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122982123038_))))
                        (let ((_tl122984123048_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122986123043_)))
                              (_hd122985123046_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122986123043_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122985123046_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122985123046_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122984123048_))
                                      (let ((_e122989123051_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122984123048_))))
                                        (let ((_tl122987123056_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122989123051_)))
                                              (_hd122988123054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122989123051_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122987123056_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122981123040_))
                                                  (let ((_e122992123059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122981123040_))))
                                                    (let ((_tl122990123064_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122992123059_)))
                                                          (_hd122991123062_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122992123059_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122991123062_))
                                                          (let ((_e122995123067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122991123062_))))
                    (let ((_tl122993123072_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122995123067_)))
                          (_hd122994123070_
                           (let ()
                             (declare (not safe))
                             (##car _e122995123067_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122994123070_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122994123070_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122993123072_))
                                  (let ((_e122998123075_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122993123072_))))
                                    (let ((_tl122996123080_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122998123075_)))
                                          (_hd122997123078_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122998123075_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122996123080_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122990123064_))
                                              (let ((_e123001123083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122990123064_))))
                                                (let ((_tl122999123088_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123001123083_)))
                                                      (_hd123000123086_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123001123083_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122999123088_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122975123024_))
                                                          (___kont127923127924_
                                                           _hd122997123078_
                                                           _hd122988123054_
                                                           _hd122888123267_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122882123006_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122882123006_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122882123006_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122882123006_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122882123006_)))
                              (let () (declare (not safe)) (_g122882123006_)))
                          (let () (declare (not safe)) (_g122882123006_)))))
                  (let () (declare (not safe)) (_g122882123006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122882123006_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122882123006_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122882123006_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122882123006_)))
                              (let ()
                                (declare (not safe))
                                (_g122882123006_)))))
                      (let () (declare (not safe)) (_g122882123006_)))))
              (let () (declare (not safe)) (_g122882123006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122882123006_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122882123006_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122882123006_)))))
                              (let ()
                                (declare (not safe))
                                (_g122882123006_))))))
                  (let () (declare (not safe)) (_g122882123006_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122682_)
        (let* ((_g122684122698_
                (lambda (_g122685122695_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122685122695_))))
               (_g122683122875_
                (lambda (_g122685122701_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122685122701_))
                      (let ((_e122690122703_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122685122701_))))
                        (let ((_hd122689122706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122690122703_)))
                              (_tl122688122708_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122690122703_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122688122708_))
                              (let ((_e122693122711_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122688122708_))))
                                (let ((_hd122692122714_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122693122711_)))
                                      (_tl122691122716_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122693122711_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122691122716_))
                                      ((lambda (_L122719_ _L122720_)
                                         (let* ((___stx128033128034_ _L122720_)
                                                (_g122735122763_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx128033128034_)))))
                                           (let ((___kont128035128036_
                                                  (lambda (_L122854_)
                                                    (length (let ((__tmp129178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122864122867_ _g122865122869_)
                             (let ()
                               (declare (not safe))
                               (cons _g122864122867_ _g122865122869_)))))
                      (declare (not safe))
                      (foldr1 __tmp129178 '() _L122854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont128039128040_
                                                  (lambda (_L122805_ _L122806_)
                                                    (let ((__tmp129179
                                                           (length (let ((__tmp129180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122817122820_ _g122818122822_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122817122820_
                                            _g122818122822_)))))
                             (declare (not safe))
                             (foldr1 __tmp129180 '() _L122806_)))))
              (declare (not safe))
              (cons __tmp129179 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont128043128044_
                                                  (lambda (_L122768_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match128058128059_
                                                     (lambda (___splice128041128042_
                                                              _target122749122781_
                                                              _tl122751122783_)
                                                       (letrec ((_loop122752122786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122750122789_ _arg122756122791_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122750122789_))
                               (let ((_e122753122794_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122750122789_))))
                                 (let ((_lp-tl122755122799_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122753122794_)))
                                       (_lp-hd122754122797_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122753122794_))))
                                   (let ((__tmp129181
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122754122797_
                                                  _arg122756122791_))))
                                     (declare (not safe))
                                     (_loop122752122786_
                                      _lp-tl122755122799_
                                      __tmp129181))))
                               (let ((_arg122757122802_
                                      (reverse _arg122756122791_)))
                                 (___kont128039128040_
                                  _tl122751122783_
                                  _arg122757122802_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122752122786_ _target122749122781_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128052128053_
                                                     (lambda (___splice128037128038_
                                                              _target122738122830_
                                                              _tl122740122832_)
                                                       (letrec ((_loop122741122835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122739122838_ _arg122745122840_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122739122838_))
                               (let ((_e122742122843_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122739122838_))))
                                 (let ((_lp-tl122744122848_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122742122843_)))
                                       (_lp-hd122743122846_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122742122843_))))
                                   (let ((__tmp129182
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122743122846_
                                                  _arg122745122840_))))
                                     (declare (not safe))
                                     (_loop122741122835_
                                      _lp-tl122744122848_
                                      __tmp129182))))
                               (let ((_arg122746122851_
                                      (reverse _arg122745122840_)))
                                 (___kont128035128036_ _arg122746122851_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122741122835_ _target122738122830_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx128033128034_))
                                                   (let ((___splice128037128038_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx128033128034_
                                                             '0))))
                                                     (let ((_tl122740122832_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice128037128038_
                                                               '1)))
                                                           (_target122738122830_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice128037128038_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122740122832_))
                                                           (___match128052128053_
                                                            ___splice128037128038_
                                                            _target122738122830_
                                                            _tl122740122832_)
                                                           (___match128058128059_
                                                            ___splice128037128038_
                                                            _target122738122830_
                                                            _tl122740122832_))))
                                                   (___kont128043128044_
                                                    ___stx128033128034_))))))
                                       _hd122692122714_
                                       _hd122689122706_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122684122698_ _g122685122701_)))))
                              (let ()
                                (declare (not safe))
                                (_g122684122698_ _g122685122701_)))))
                      (let ()
                        (declare (not safe))
                        (_g122684122698_ _g122685122701_))))))
          (declare (not safe))
          (_g122683122875_ _form122682_))))
    (define gxc#lambda-expr?
      (lambda (_expr122635_)
        (let* ((___stx128061128062_ _expr122635_)
               (_g122638122648_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128061128062_)))))
          (let ((___kont128063128064_ (lambda (_L122668_) '#t))
                (___kont128065128066_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128061128062_))
                (let ((_e122643122660_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128061128062_))))
                  (let ((_tl122641122665_
                         (let () (declare (not safe)) (##cdr _e122643122660_)))
                        (_hd122642122663_
                         (let ()
                           (declare (not safe))
                           (##car _e122643122660_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122642122663_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122642122663_))
                            (___kont128063128064_ _tl122641122665_)
                            (___kont128065128066_))
                        (___kont128065128066_))))
                (___kont128065128066_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122588_)
        (let* ((___stx128079128080_ _expr122588_)
               (_g122591122601_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128079128080_)))))
          (let ((___kont128081128082_ (lambda (_L122621_) '#t))
                (___kont128083128084_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128079128080_))
                (let ((_e122596122613_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128079128080_))))
                  (let ((_tl122594122618_
                         (let () (declare (not safe)) (##cdr _e122596122613_)))
                        (_hd122595122616_
                         (let ()
                           (declare (not safe))
                           (##car _e122596122613_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122595122616_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122595122616_))
                            (___kont128081128082_ _tl122594122618_)
                            (___kont128083128084_))
                        (___kont128083128084_))))
                (___kont128083128084_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122457_)
        (let* ((___stx128097128098_ _expr122457_)
               (_g122460122490_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128097128098_)))))
          (let ((___kont128099128100_
                 (lambda (_L122558_ _L122559_ _L122560_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122560_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122559_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122558_))
                           '#f)
                       '#f)))
                (___kont128101128102_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128097128098_))
                (let ((_e122467122502_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128097128098_))))
                  (let ((_tl122465122507_
                         (let () (declare (not safe)) (##cdr _e122467122502_)))
                        (_hd122466122505_
                         (let ()
                           (declare (not safe))
                           (##car _e122467122502_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122466122505_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122466122505_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122465122507_))
                                (let ((_e122470122510_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122465122507_))))
                                  (let ((_tl122468122515_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122470122510_)))
                                        (_hd122469122513_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122470122510_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122469122513_))
                                        (let ((_e122473122518_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122469122513_))))
                                          (let ((_tl122471122523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122473122518_)))
                                                (_hd122472122521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122473122518_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122472122521_))
                                                (let ((_e122476122526_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122472122521_))))
                                                  (let ((_tl122474122531_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122476122526_)))
                                                        (_hd122475122529_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122476122526_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122475122529_))
                                                        (let ((_e122479122534_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122475122529_))))
                  (let ((_tl122477122539_
                         (let () (declare (not safe)) (##cdr _e122479122534_)))
                        (_hd122478122537_
                         (let ()
                           (declare (not safe))
                           (##car _e122479122534_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122477122539_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122474122531_))
                            (let ((_e122482122542_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122474122531_))))
                              (let ((_tl122480122547_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122482122542_)))
                                    (_hd122481122545_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122482122542_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122480122547_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122471122523_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122468122515_))
                                            (let ((_e122485122550_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122468122515_))))
                                              (let ((_tl122483122555_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122485122550_)))
                                                    (_hd122484122553_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122485122550_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122483122555_))
                                                    (___kont128099128100_
                                                     _hd122484122553_
                                                     _hd122481122545_
                                                     _hd122478122537_)
                                                    (___kont128101128102_))))
                                            (___kont128101128102_))
                                        (___kont128101128102_))
                                    (___kont128101128102_))))
                            (___kont128101128102_))
                        (___kont128101128102_))))
                (___kont128101128102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128101128102_))))
                                        (___kont128101128102_))))
                                (___kont128101128102_))
                            (___kont128101128102_))
                        (___kont128101128102_))))
                (___kont128101128102_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121782_)
        (let* ((___stx128159128160_ _expr121782_)
               (_g121785121943_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128159128160_)))))
          (let ((___kont128161128162_
                 (lambda (_L122331_
                          _L122332_
                          _L122333_
                          _L122334_
                          _L122335_
                          _L122336_
                          _L122337_
                          _L122338_
                          _L122339_
                          _L122340_
                          _L122341_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122338_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122334_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122333_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122341_
                                      _L122332_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122340_
                                          _L122337_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122335_
                                              _L122331_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122339_
                                              _L122336_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont128163128164_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128159128160_))
                (let ((_e121800121955_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128159128160_))))
                  (let ((_tl121798121960_
                         (let () (declare (not safe)) (##cdr _e121800121955_)))
                        (_hd121799121958_
                         (let ()
                           (declare (not safe))
                           (##car _e121800121955_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121799121958_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121799121958_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121798121960_))
                                (let ((_e121803121963_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121798121960_))))
                                  (let ((_tl121801121968_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121803121963_)))
                                        (_hd121802121966_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121803121963_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121802121966_))
                                        (let ((_e121806121971_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121802121966_))))
                                          (let ((_tl121804121976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121806121971_)))
                                                (_hd121805121974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121806121971_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121805121974_))
                                                (let ((_e121809121979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121805121974_))))
                                                  (let ((_tl121807121984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121809121979_)))
                                                        (_hd121808121982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121809121979_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121808121982_))
                                                        (let ((_e121812121987_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121808121982_))))
                  (let ((_tl121810121992_
                         (let () (declare (not safe)) (##cdr _e121812121987_)))
                        (_hd121811121990_
                         (let ()
                           (declare (not safe))
                           (##car _e121812121987_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121810121992_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121807121984_))
                            (let ((_e121815121995_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121807121984_))))
                              (let ((_tl121813122000_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121815121995_)))
                                    (_hd121814121998_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121815121995_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121814121998_))
                                    (let ((_e121818122003_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121814121998_))))
                                      (let ((_tl121816122008_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121818122003_)))
                                            (_hd121817122006_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121818122003_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121817122006_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121817122006_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121816122008_))
                                                    (let ((_e121821122011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121816122008_))))
                                                      (let ((_tl121819122016_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121821122011_)))
                    (_hd121820122014_
                     (let () (declare (not safe)) (##car _e121821122011_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121820122014_))
                    (let ((_e121824122019_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121820122014_))))
                      (let ((_tl121822122024_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121824122019_)))
                            (_hd121823122022_
                             (let ()
                               (declare (not safe))
                               (##car _e121824122019_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121823122022_))
                            (let ((_e121827122027_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121823122022_))))
                              (let ((_tl121825122032_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121827122027_)))
                                    (_hd121826122030_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121827122027_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121826122030_))
                                    (let ((_e121830122035_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121826122030_))))
                                      (let ((_tl121828122040_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121830122035_)))
                                            (_hd121829122038_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121830122035_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121828122040_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121825122032_))
                                                (let ((_e121833122043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121825122032_))))
                                                  (let ((_tl121831122048_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121833122043_)))
                                                        (_hd121832122046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121833122043_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121831122048_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121822122024_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121819122016_))
                        (let ((_e121836122051_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121819122016_))))
                          (let ((_tl121834122056_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121836122051_)))
                                (_hd121835122054_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121836122051_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121835122054_))
                                (let ((_e121839122059_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121835122054_))))
                                  (let ((_tl121837122064_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121839122059_)))
                                        (_hd121838122062_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121839122059_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121838122062_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121838122062_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121837122064_))
                                                (let ((_e121842122067_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121837122064_))))
                                                  (let ((_tl121840122072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121842122067_)))
                                                        (_hd121841122070_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121842122067_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121841122070_))
                                                        (let ((_e121845122075_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121841122070_))))
                  (let ((_tl121843122080_
                         (let () (declare (not safe)) (##cdr _e121845122075_)))
                        (_hd121844122078_
                         (let ()
                           (declare (not safe))
                           (##car _e121845122075_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121840122072_))
                        (let ((_e121848122083_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121840122072_))))
                          (let ((_tl121846122088_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121848122083_)))
                                (_hd121847122086_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121848122083_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121847122086_))
                                (let ((_e121851122091_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121847122086_))))
                                  (let ((_tl121849122096_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121851122091_)))
                                        (_hd121850122094_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121851122091_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121850122094_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121850122094_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121849122096_))
                                                (let ((_e121854122099_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121849122096_))))
                                                  (let ((_tl121852122104_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121854122099_)))
                                                        (_hd121853122102_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121854122099_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121853122102_))
                                                        (let ((_e121857122107_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121853122102_))))
                  (let ((_tl121855122112_
                         (let () (declare (not safe)) (##cdr _e121857122107_)))
                        (_hd121856122110_
                         (let ()
                           (declare (not safe))
                           (##car _e121857122107_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121856122110_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121856122110_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121855122112_))
                                (let ((_e121860122115_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121855122112_))))
                                  (let ((_tl121858122120_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121860122115_)))
                                        (_hd121859122118_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121860122115_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121858122120_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121852122104_))
                                            (let ((_e121863122123_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121852122104_))))
                                              (let ((_tl121861122128_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121863122123_)))
                                                    (_hd121862122126_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121863122123_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121862122126_))
                                                    (let ((_e121866122131_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121862122126_))))
                                                      (let ((_tl121864122136_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121866122131_)))
                    (_hd121865122134_
                     (let () (declare (not safe)) (##car _e121866122131_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121865122134_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121865122134_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121864122136_))
                            (let ((_e121869122139_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121864122136_))))
                              (let ((_tl121867122144_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121869122139_)))
                                    (_hd121868122142_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121869122139_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121867122144_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121861122128_))
                                        (let ((_e121872122147_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121861122128_))))
                                          (let ((_tl121870122152_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121872122147_)))
                                                (_hd121871122150_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121872122147_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121871122150_))
                                                (let ((_e121875122155_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121871122150_))))
                                                  (let ((_tl121873122160_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121875122155_)))
                                                        (_hd121874122158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121875122155_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121874122158_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121874122158_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121873122160_))
                        (let ((_e121878122163_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121873122160_))))
                          (let ((_tl121876122168_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121878122163_)))
                                (_hd121877122166_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121878122163_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121876122168_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121846122088_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121834122056_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121813122000_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121804121976_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121801121968_))
                                                    (let ((_e121881122171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121801121968_))))
                                                      (let ((_tl121879122176_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121881122171_)))
                    (_hd121880122174_
                     (let () (declare (not safe)) (##car _e121881122171_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121880122174_))
                    (let ((_e121884122179_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121880122174_))))
                      (let ((_tl121882122184_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121884122179_)))
                            (_hd121883122182_
                             (let ()
                               (declare (not safe))
                               (##car _e121884122179_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121883122182_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121883122182_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121882122184_))
                                    (let ((_e121887122187_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121882122184_))))
                                      (let ((_tl121885122192_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121887122187_)))
                                            (_hd121886122190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121887122187_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121885122192_))
                                            (let ((_e121890122195_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121885122192_))))
                                              (let ((_tl121888122200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121890122195_)))
                                                    (_hd121889122198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121890122195_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121889122198_))
                                                    (let ((_e121893122203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121889122198_))))
                                                      (let ((_tl121891122208_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121893122203_)))
                    (_hd121892122206_
                     (let () (declare (not safe)) (##car _e121893122203_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121892122206_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121892122206_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121891122208_))
                            (let ((_e121896122211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121891122208_))))
                              (let ((_tl121894122216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121896122211_)))
                                    (_hd121895122214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121896122211_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121895122214_))
                                    (let ((_e121899122219_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121895122214_))))
                                      (let ((_tl121897122224_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121899122219_)))
                                            (_hd121898122222_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121899122219_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121898122222_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121898122222_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121897122224_))
                                                    (let ((_e121902122227_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121897122224_))))
                                                      (let ((_tl121900122232_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121902122227_)))
                    (_hd121901122230_
                     (let () (declare (not safe)) (##car _e121902122227_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121900122232_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121894122216_))
                        (let ((_e121905122235_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121894122216_))))
                          (let ((_tl121903122240_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121905122235_)))
                                (_hd121904122238_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121905122235_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121904122238_))
                                (let ((_e121908122243_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121904122238_))))
                                  (let ((_tl121906122248_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121908122243_)))
                                        (_hd121907122246_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121908122243_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121907122246_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121907122246_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121906122248_))
                                                (let ((_e121911122251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121906122248_))))
                                                  (let ((_tl121909122256_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121911122251_)))
                                                        (_hd121910122254_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121911122251_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121909122256_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121903122240_))
                                                            (let ((_e121914122259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121903122240_))))
                      (let ((_tl121912122264_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121914122259_)))
                            (_hd121913122262_
                             (let ()
                               (declare (not safe))
                               (##car _e121914122259_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121913122262_))
                            (let ((_e121917122267_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121913122262_))))
                              (let ((_tl121915122272_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121917122267_)))
                                    (_hd121916122270_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121917122267_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121916122270_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121916122270_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121915122272_))
                                            (let ((_e121920122275_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121915122272_))))
                                              (let ((_tl121918122280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121920122275_)))
                                                    (_hd121919122278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121920122275_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121918122280_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121912122264_))
                                                        (let ((_e121923122283_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121912122264_))))
                  (let ((_tl121921122288_
                         (let () (declare (not safe)) (##cdr _e121923122283_)))
                        (_hd121922122286_
                         (let ()
                           (declare (not safe))
                           (##car _e121923122283_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121922122286_))
                        (let ((_e121926122291_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121922122286_))))
                          (let ((_tl121924122296_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121926122291_)))
                                (_hd121925122294_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121926122291_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121925122294_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121925122294_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121924122296_))
                                        (let ((_e121929122299_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121924122296_))))
                                          (let ((_tl121927122304_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121929122299_)))
                                                (_hd121928122302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121929122299_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121927122304_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121921122288_))
                                                    (let ((_e121932122307_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121921122288_))))
                                                      (let ((_tl121930122312_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121932122307_)))
                    (_hd121931122310_
                     (let () (declare (not safe)) (##car _e121932122307_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121931122310_))
                    (let ((_e121935122315_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121931122310_))))
                      (let ((_tl121933122320_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121935122315_)))
                            (_hd121934122318_
                             (let ()
                               (declare (not safe))
                               (##car _e121935122315_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121934122318_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121934122318_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121933122320_))
                                    (let ((_e121938122323_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121933122320_))))
                                      (let ((_tl121936122328_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121938122323_)))
                                            (_hd121937122326_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121938122323_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121936122328_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121930122312_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121888122200_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121879122176_))
                                                        (___kont128161128162_
                                                         _hd121937122326_
                                                         _hd121928122302_
                                                         _hd121910122254_
                                                         _hd121901122230_
                                                         _hd121886122190_
                                                         _hd121877122166_
                                                         _hd121868122142_
                                                         _hd121859122118_
                                                         _hd121844122078_
                                                         _hd121829122038_
                                                         _hd121811121990_)
                                                        (___kont128163128164_))
                                                    (___kont128163128164_))
                                                (___kont128163128164_))
                                            (___kont128163128164_))))
                                    (___kont128163128164_))
                                (___kont128163128164_))
                            (___kont128163128164_))))
                    (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128163128164_))
                                                (___kont128163128164_))))
                                        (___kont128163128164_))
                                    (___kont128163128164_))
                                (___kont128163128164_))))
                        (___kont128163128164_))))
                (___kont128163128164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128163128164_))))
                                            (___kont128163128164_))
                                        (___kont128163128164_))
                                    (___kont128163128164_))))
                            (___kont128163128164_))))
                    (___kont128163128164_))
                (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128163128164_))
                                            (___kont128163128164_))
                                        (___kont128163128164_))))
                                (___kont128163128164_))))
                        (___kont128163128164_))
                    (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128163128164_))
                                                (___kont128163128164_))
                                            (___kont128163128164_))))
                                    (___kont128163128164_))))
                            (___kont128163128164_))
                        (___kont128163128164_))
                    (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128163128164_))))
                                            (___kont128163128164_))))
                                    (___kont128163128164_))
                                (___kont128163128164_))
                            (___kont128163128164_))))
                    (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128163128164_))
                                                (___kont128163128164_))
                                            (___kont128163128164_))
                                        (___kont128163128164_))
                                    (___kont128163128164_))
                                (___kont128163128164_))))
                        (___kont128163128164_))
                    (___kont128163128164_))
                (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128163128164_))))
                                        (___kont128163128164_))
                                    (___kont128163128164_))))
                            (___kont128163128164_))
                        (___kont128163128164_))
                    (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128163128164_))))
                                            (___kont128163128164_))
                                        (___kont128163128164_))))
                                (___kont128163128164_))
                            (___kont128163128164_))
                        (___kont128163128164_))))
                (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128163128164_))
                                            (___kont128163128164_))
                                        (___kont128163128164_))))
                                (___kont128163128164_))))
                        (___kont128163128164_))))
                (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128163128164_))
                                            (___kont128163128164_))
                                        (___kont128163128164_))))
                                (___kont128163128164_))))
                        (___kont128163128164_))
                    (___kont128163128164_))
                (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128163128164_))
                                            (___kont128163128164_))))
                                    (___kont128163128164_))))
                            (___kont128163128164_))))
                    (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128163128164_))
                                                (___kont128163128164_))
                                            (___kont128163128164_))))
                                    (___kont128163128164_))))
                            (___kont128163128164_))
                        (___kont128163128164_))))
                (___kont128163128164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128163128164_))))
                                        (___kont128163128164_))))
                                (___kont128163128164_))
                            (___kont128163128164_))
                        (___kont128163128164_))))
                (___kont128163128164_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121524_ _id121525_ _clauses121526_ _gensym?121527_)
        (let _lp121529_ ((_rest121531_ _clauses121526_)
                         (_ids121532_ '())
                         (_impls121533_ '())
                         (_clauses121534_ '()))
          (let* ((_rest121535121543_ _rest121531_)
                 (_else121537121551_
                  (lambda ()
                    (values (reverse _ids121532_)
                            (reverse _impls121533_)
                            (reverse _clauses121534_))))
                 (_K121539121756_
                  (lambda (_rest121554_ _clause121555_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121555_))
                        (let ((__tmp129238
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121555_ _clauses121534_))))
                          (declare (not safe))
                          (_lp121529_
                           _rest121554_
                           _ids121532_
                           _impls121533_
                           __tmp129238))
                        (let* ((_g121557121568_
                                (lambda (_g121558121565_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121558121565_))))
                               (_g121556121753_
                                (lambda (_g121558121571_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121558121571_))
                                      (let ((_e121563121573_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121558121571_))))
                                        (let ((_hd121562121576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121563121573_)))
                                              (_tl121561121578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121563121573_))))
                                          ((lambda (_L121581_ _L121582_)
                                             (let* ((_id121599_
                                                     (let ((__tmp129185
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121525_)))
                                                           (__tmp129184
                                                            (length _clauses121534_))
                                                           (__tmp129183
                                                            (if _gensym?121527_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp129185
                                                        '"__"
                                                        __tmp129184
                                                        __tmp129183)))
                                                    (_id121601_
                                                     (let ((__tmp129186
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121524_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121599_
                                                        __tmp129186)))
                                                    (_impl121603_
                                                     (let ((__tmp129187
                                                            (let ((__tmp129189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp129188
                           (let ()
                             (declare (not safe))
                             (cons _L121582_ _L121581_))))
                      (declare (not safe))
                      (cons __tmp129189 __tmp129188))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp129187 _stx121524_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121750_
                                                     (let* ((___stx128543128544_
                                                             _L121582_)
                                                            (_g121607121635_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128543128544_)))))
               (let ((___kont128545128546_
                      (lambda (_L121729_)
                        (let ((__tmp129190
                               (let ((__tmp129191
                                      (let ((__tmp129192
                                             (let ((__tmp129193
                                                    (let ((__tmp129199
                                                           (let ((__tmp129200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121601_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129200)))
                  (__tmp129194
                   (let ((__tmp129195
                          (lambda (_g121739121742_ _g121740121744_)
                            (let ((__tmp129196
                                   (let ((__tmp129198
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp129197
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121739121742_ '()))))
                                     (declare (not safe))
                                     (cons __tmp129198 __tmp129197))))
                              (declare (not safe))
                              (cons __tmp129196 _g121740121744_)))))
                     (declare (not safe))
                     (foldr1 __tmp129195 '() _L121729_))))
              (declare (not safe))
              (cons __tmp129199 __tmp129194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129193))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129192
                                         _stx121524_))))
                                 (declare (not safe))
                                 (cons __tmp129191 '()))))
                          (declare (not safe))
                          (cons _L121582_ __tmp129190))))
                     (___kont128549128550_
                      (lambda (_L121680_ _L121681_)
                        (let ((__tmp129201
                               (let ((__tmp129202
                                      (let ((__tmp129203
                                             (let ((__tmp129204
                                                    (let ((__tmp129218
                                                           (let ((__tmp129219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129219)))
                  (__tmp129205
                   (let ((__tmp129216
                          (let ((__tmp129217
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121601_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129217)))
                         (__tmp129206
                          (let ((__tmp129212
                                 (let ((__tmp129213
                                        (let ((__tmp129215
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp129214
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L121680_ '()))))
                                          (declare (not safe))
                                          (cons __tmp129215 __tmp129214))))
                                   (declare (not safe))
                                   (cons __tmp129213 '())))
                                (__tmp129207
                                 (let ((__tmp129208
                                        (lambda (_g121692121695_
                                                 _g121693121697_)
                                          (let ((__tmp129209
                                                 (let ((__tmp129211
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp129210
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121692121695_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp129211
                                                         __tmp129210))))
                                            (declare (not safe))
                                            (cons __tmp129209
                                                  _g121693121697_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp129208 '() _L121681_))))
                            (declare (not safe))
                            (foldr1 cons __tmp129212 __tmp129207))))
                     (declare (not safe))
                     (cons __tmp129216 __tmp129206))))
              (declare (not safe))
              (cons __tmp129218 __tmp129205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129204))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129203
                                         _stx121524_))))
                                 (declare (not safe))
                                 (cons __tmp129202 '()))))
                          (declare (not safe))
                          (cons _L121582_ __tmp129201))))
                     (___kont128553128554_
                      (lambda (_L121640_)
                        (let ((__tmp129220
                               (let ((__tmp129221
                                      (let ((__tmp129222
                                             (let ((__tmp129223
                                                    (let ((__tmp129231
                                                           (let ((__tmp129232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129232)))
                  (__tmp129224
                   (let ((__tmp129229
                          (let ((__tmp129230
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121601_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129230)))
                         (__tmp129225
                          (let ((__tmp129226
                                 (let ((__tmp129228
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp129227
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121640_ '()))))
                                   (declare (not safe))
                                   (cons __tmp129228 __tmp129227))))
                            (declare (not safe))
                            (cons __tmp129226 '()))))
                     (declare (not safe))
                     (cons __tmp129229 __tmp129225))))
              (declare (not safe))
              (cons __tmp129231 __tmp129224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129223))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129222
                                         _stx121524_))))
                                 (declare (not safe))
                                 (cons __tmp129221 '()))))
                          (declare (not safe))
                          (cons _L121582_ __tmp129220)))))
                 (let* ((___match128568128569_
                         (lambda (___splice128551128552_
                                  _target121621121656_
                                  _tl121623121658_)
                           (letrec ((_loop121624121661_
                                     (lambda (_hd121622121664_
                                              _arg121628121666_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121622121664_))
                                           (let ((_e121625121669_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121622121664_))))
                                             (let ((_lp-tl121627121674_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121625121669_)))
                                                   (_lp-hd121626121672_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121625121669_))))
                                               (let ((__tmp129233
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121626121672_
                                                              _arg121628121666_))))
                                                 (declare (not safe))
                                                 (_loop121624121661_
                                                  _lp-tl121627121674_
                                                  __tmp129233))))
                                           (let ((_arg121629121677_
                                                  (reverse _arg121628121666_)))
                                             (___kont128549128550_
                                              _tl121623121658_
                                              _arg121629121677_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121624121661_
                                _target121621121656_
                                '())))))
                        (___match128562128563_
                         (lambda (___splice128547128548_
                                  _target121610121705_
                                  _tl121612121707_)
                           (letrec ((_loop121613121710_
                                     (lambda (_hd121611121713_
                                              _arg121617121715_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121611121713_))
                                           (let ((_e121614121718_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121611121713_))))
                                             (let ((_lp-tl121616121723_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121614121718_)))
                                                   (_lp-hd121615121721_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121614121718_))))
                                               (let ((__tmp129234
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121615121721_
                                                              _arg121617121715_))))
                                                 (declare (not safe))
                                                 (_loop121613121710_
                                                  _lp-tl121616121723_
                                                  __tmp129234))))
                                           (let ((_arg121618121726_
                                                  (reverse _arg121617121715_)))
                                             (___kont128545128546_
                                              _arg121618121726_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121613121710_
                                _target121610121705_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128543128544_))
                       (let ((___splice128547128548_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128543128544_
                                 '0))))
                         (let ((_tl121612121707_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128547128548_ '1)))
                               (_target121610121705_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128547128548_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121612121707_))
                               (___match128562128563_
                                ___splice128547128548_
                                _target121610121705_
                                _tl121612121707_)
                               (___match128568128569_
                                ___splice128547128548_
                                _target121610121705_
                                _tl121612121707_))))
                       (___kont128553128554_ ___stx128543128544_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp129237
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121601_
                                                              _ids121532_)))
                                                     (__tmp129236
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121603_
                                                              _impls121533_)))
                                                     (__tmp129235
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121750_
                                                              _clauses121534_))))
                                                 (declare (not safe))
                                                 (_lp121529_
                                                  _rest121554_
                                                  __tmp129237
                                                  __tmp129236
                                                  __tmp129235))))
                                           _tl121561121578_
                                           _hd121562121576_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121557121568_ _g121558121571_))))))
                          (declare (not safe))
                          (_g121556121753_ _clause121555_))))))
            (if (let () (declare (not safe)) (##pair? _rest121535121543_))
                (let ((_hd121540121759_
                       (let ()
                         (declare (not safe))
                         (##car _rest121535121543_)))
                      (_tl121541121761_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121535121543_))))
                  (let* ((_clause121764_ _hd121540121759_)
                         (_rest121766_ _tl121541121761_))
                    (declare (not safe))
                    (_K121539121756_ _rest121766_ _clause121764_)))
                (let () (declare (not safe)) (_else121537121551_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121771_ _id121772_ _clauses121773_)
        (let ((_gensym?121775_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121771_
           _id121772_
           _clauses121773_
           _gensym?121775_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g129240_
        (let ((_g129239_ (let () (declare (not safe)) (##length _g129240_))))
          (cond ((let () (declare (not safe)) (##fx= _g129239_ 3))
                 (apply (lambda (_stx121771_ _id121772_ _clauses121773_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121771_
                             _id121772_
                             _clauses121773_)))
                        _g129240_))
                ((let () (declare (not safe)) (##fx= _g129239_ 4))
                 (apply (lambda (_stx121777_
                                 _id121778_
                                 _clauses121779_
                                 _gensym?121780_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121777_
                             _id121778_
                             _clauses121779_
                             _gensym?121780_)))
                        _g129240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g129240_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx120801_)
        (letrec ((_case-lambda-clause-def120803_
                  (lambda (_id121520_ _impl121521_)
                    (let ((__tmp129241
                           (let ((__tmp129242
                                  (let ((__tmp129245
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121520_ '())))
                                        (__tmp129243
                                         (let ((__tmp129244
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl121521_))))
                                           (declare (not safe))
                                           (cons __tmp129244 '()))))
                                    (declare (not safe))
                                    (cons __tmp129245 __tmp129243))))
                             (declare (not safe))
                             (cons '%#define-values __tmp129242))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129241 _stx120801_))))
                 (_opt-lambda-dispatch-name120804_
                  (lambda (_id121516_)
                    (if (uninterned-symbol? _id121516_)
                        (let ((_str121518_ (symbol->string _id121516_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121518_))
                              '"%"
                              _id121516_))
                        _id121516_)))
                 (_kw-lambda-dispatch-name120805_
                  (lambda (_id121511_ _name121512_)
                    (if (uninterned-symbol? _id121511_)
                        (let ((_str121514_ (symbol->string _id121511_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121514_))
                              _name121512_
                              _id121511_))
                        _id121511_))))
          (let* ((___stx128591128592_ _stx120801_)
                 (_g120810120869_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128591128592_)))))
            (let ((___kont128593128594_
                   (lambda (_L121420_ _L121421_)
                     (let* ((___stx128571128572_ _L121420_)
                            (_g121438121452_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128571128572_)))))
                       (let ((___kont128573128574_
                              (lambda (_L121496_) _stx120801_))
                             (___kont128575128576_
                              (lambda (_L121465_)
                                (let ((_g129246_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120801_
                                          _L121421_
                                          _L121465_))))
                                  (begin
                                    (let ((_g129247_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129246_)
                                                 (##vector-length _g129246_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129247_ 3)))
                                          (error "Context expects 3 values"
                                                 _g129247_)))
                                    (let ((_ids121475_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129246_ 0)))
                                          (_impls121476_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129246_ 1)))
                                          (_clauses121477_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129246_ 2))))
                                      (let* ((_g129248_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121475_))
                                             (_defs121480_
                                              (map _case-lambda-clause-def120803_
                                                   _ids121475_
                                                   _impls121476_)))
                                        (let ((__tmp129250
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121421_)))
                                              (__tmp129249
                                               (map gxc#identifier-symbol
                                                    _ids121475_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp129250
                                           '" => "
                                           __tmp129249))
                                        (let ((__tmp129251
                                               (let ((__tmp129252
                                                      (let ((__tmp129253
                                                             (let ((__tmp129254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129255
                                   (let ((__tmp129256
                                          (let ((__tmp129261
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121421_ '())))
                                                (__tmp129257
                                                 (let ((__tmp129258
                                                        (let ((__tmp129260
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121477_)))
                      (__tmp129259
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp129260 __tmp129259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129258 '()))))
                                            (declare (not safe))
                                            (cons __tmp129261 __tmp129257))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp129256))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129255
                               _stx120801_))))
                       (declare (not safe))
                       (cons __tmp129254 '()))))
                (declare (not safe))
                (foldr1 cons __tmp129253 _defs121480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp129252))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp129251
                                           _stx120801_)))))))))
                         (let ((___match128582128583_
                                (lambda (_e121443121488_
                                         _hd121442121491_
                                         _tl121441121493_)
                                  (let ((_L121496_ _tl121441121493_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121496_))
                                        (___kont128573128574_ _L121496_)
                                        (___kont128575128576_
                                         _tl121441121493_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128571128572_))
                               (let ((_e121443121488_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128571128572_))))
                                 (let ((_tl121441121493_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121443121488_)))
                                       (_hd121442121491_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121443121488_))))
                                   (___match128582128583_
                                    _e121443121488_
                                    _hd121442121491_
                                    _tl121441121493_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121438121452_))))))))
                  (___kont128595128596_
                   (lambda (_L121238_ _L121239_)
                     (let* ((_g121255121285_
                             (lambda (_g121256121282_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121256121282_))))
                            (_g121254121380_
                             (lambda (_g121256121288_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121256121288_))
                                   (let ((_e121262121290_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121256121288_))))
                                     (let ((_hd121261121293_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121262121290_)))
                                           (_tl121260121295_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121262121290_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121260121295_))
                                           (let ((_e121265121298_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121260121295_))))
                                             (let ((_hd121264121301_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121265121298_)))
                                                   (_tl121263121303_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121265121298_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121264121301_))
                                                   (let ((_e121268121306_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121264121301_))))
                                                     (let ((_hd121267121309_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121268121306_)))
                                                           (_tl121266121311_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121268121306_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121267121309_))
                                                           (let ((_e121271121314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121267121309_))))
                     (let ((_hd121270121317_
                            (let ()
                              (declare (not safe))
                              (##car _e121271121314_)))
                           (_tl121269121319_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121271121314_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121270121317_))
                           (let ((_e121274121322_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121270121317_))))
                             (let ((_hd121273121325_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121274121322_)))
                                   (_tl121272121327_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121274121322_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121272121327_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121269121319_))
                                       (let ((_e121277121330_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121269121319_))))
                                         (let ((_hd121276121333_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121277121330_)))
                                               (_tl121275121335_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121277121330_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121275121335_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl121266121311_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121263121303_))
                                                       (let ((_e121280121338_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121263121303_))))
                 (let ((_hd121279121341_
                        (let () (declare (not safe)) (##car _e121280121338_)))
                       (_tl121278121343_
                        (let () (declare (not safe)) (##cdr _e121280121338_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121278121343_))
                       ((lambda (_L121346_ _L121347_ _L121348_)
                          (let* ((_lambda-id121372_
                                  (let ((__tmp129264
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L121239_)))
                                        (__tmp129262
                                         (let ((__tmp129263
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121348_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120804_
                                            __tmp129263))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp129264
                                     '"__"
                                     __tmp129262)))
                                 (_lambda-id121374_
                                  (let ((__tmp129265
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120801_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121372_
                                     __tmp129265)))
                                 (_g129266_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121374_)))
                                 (_new-case-lambda-expr121377_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121346_
                                     _L121348_
                                     _lambda-id121374_))))
                            (let ((__tmp129268
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L121239_)))
                                  (__tmp129267
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121374_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129268
                               '" => "
                               __tmp129267))
                            (let ((__tmp129269
                                   (let ((__tmp129270
                                          (let ((__tmp129278
                                                 (let ((__tmp129279
                                                        (let ((__tmp129280
                                                               (let ((__tmp129283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121374_ '())))
                             (__tmp129281
                              (let ((__tmp129282
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L121347_))))
                                (declare (not safe))
                                (cons __tmp129282 '()))))
                         (declare (not safe))
                         (cons __tmp129283 __tmp129281))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129279
                                                    _stx120801_)))
                                                (__tmp129271
                                                 (let ((__tmp129272
                                                        (let ((__tmp129273
                                                               (let ((__tmp129274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129275
                                     (let ((__tmp129277
                                            (let ()
                                              (declare (not safe))
                                              (cons _L121239_ '())))
                                           (__tmp129276
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121377_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129277 __tmp129276))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129275))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129274 _stx120801_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp129273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129272 '()))))
                                            (declare (not safe))
                                            (cons __tmp129278 __tmp129271))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129270))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129269
                               _stx120801_))))
                        _hd121279121341_
                        _hd121276121333_
                        _hd121273121325_)
                       (let ()
                         (declare (not safe))
                         (_g121255121285_ _g121256121288_)))))
               (let () (declare (not safe)) (_g121255121285_ _g121256121288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121255121285_
                                                      _g121256121288_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121255121285_
                                                  _g121256121288_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121255121285_ _g121256121288_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121255121285_ _g121256121288_)))))
                           (let ()
                             (declare (not safe))
                             (_g121255121285_ _g121256121288_)))))
                   (let ()
                     (declare (not safe))
                     (_g121255121285_ _g121256121288_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121255121285_
                                                      _g121256121288_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121255121285_
                                              _g121256121288_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121255121285_ _g121256121288_))))))
                       (declare (not safe))
                       (_g121254121380_ _L121238_))))
                  (___kont128597128598_
                   (lambda (_L120952_ _L120953_)
                     (let* ((_g120969121022_
                             (lambda (_g120970121019_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120970121019_))))
                            (_g120968121198_
                             (lambda (_g120970121025_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120970121025_))
                                   (let ((_e120978121027_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120970121025_))))
                                     (let ((_hd120977121030_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120978121027_)))
                                           (_tl120976121032_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120978121027_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120976121032_))
                                           (let ((_e120981121035_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120976121032_))))
                                             (let ((_hd120980121038_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120981121035_)))
                                                   (_tl120979121040_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120981121035_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120980121038_))
                                                   (let ((_e120984121043_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120980121038_))))
                                                     (let ((_hd120983121046_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120984121043_)))
                                                           (_tl120982121048_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120984121043_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120983121046_))
                                                           (let ((_e120987121051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120983121046_))))
                     (let ((_hd120986121054_
                            (let ()
                              (declare (not safe))
                              (##car _e120987121051_)))
                           (_tl120985121056_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120987121051_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120986121054_))
                           (let ((_e120990121059_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120986121054_))))
                             (let ((_hd120989121062_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120990121059_)))
                                   (_tl120988121064_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120990121059_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120988121064_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120985121056_))
                                       (let ((_e120993121067_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120985121056_))))
                                         (let ((_hd120992121070_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120993121067_)))
                                               (_tl120991121072_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120993121067_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120992121070_))
                                               (let ((_e120996121075_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120992121070_))))
                                                 (let ((_hd120995121078_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120996121075_)))
                                                       (_tl120994121080_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120996121075_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120994121080_))
                                                       (let ((_e120999121083_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120994121080_))))
                 (let ((_hd120998121086_
                        (let () (declare (not safe)) (##car _e120999121083_)))
                       (_tl120997121088_
                        (let () (declare (not safe)) (##cdr _e120999121083_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120998121086_))
                       (let ((_e121002121091_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120998121086_))))
                         (let ((_hd121001121094_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121002121091_)))
                               (_tl121000121096_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121002121091_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121001121094_))
                               (let ((_e121005121099_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121001121094_))))
                                 (let ((_hd121004121102_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121005121099_)))
                                       (_tl121003121104_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121005121099_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121004121102_))
                                       (let ((_e121008121107_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121004121102_))))
                                         (let ((_hd121007121110_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121008121107_)))
                                               (_tl121006121112_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121008121107_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121006121112_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl121003121104_))
                                                   (let ((_e121011121115_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl121003121104_))))
                                                     (let ((_hd121010121118_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121011121115_)))
                                                           (_tl121009121120_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121011121115_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121009121120_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl121000121096_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120997121088_))
                           (let ((_e121014121123_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120997121088_))))
                             (let ((_hd121013121126_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121014121123_)))
                                   (_tl121012121128_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121014121123_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121012121128_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120991121072_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120982121048_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120979121040_))
                                               (let ((_e121017121131_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120979121040_))))
                                                 (let ((_hd121016121134_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e121017121131_)))
                                                       (_tl121015121136_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e121017121131_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl121015121136_))
                                                       ((lambda (_L121139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L121140_
                         _L121141_
                         _L121142_
                         _L121143_)
                  (let* ((_get-kws-id121183_
                          (let ((__tmp129286
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120953_)))
                                (__tmp129284
                                 (let ((__tmp129285
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121143_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120805_
                                    __tmp129285
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129286 '"__" __tmp129284)))
                         (_get-kws-id121185_
                          (let ((__tmp129287
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120801_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id121183_
                             __tmp129287)))
                         (_main-id121187_
                          (let ((__tmp129290
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120953_)))
                                (__tmp129288
                                 (let ((__tmp129289
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121142_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120805_
                                    __tmp129289
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129290 '"__" __tmp129288)))
                         (_main-id121189_
                          (let ((__tmp129291
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120801_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id121187_
                             __tmp129291)))
                         (_g129292_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id121185_)))
                         (_g129293_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id121189_)))
                         (_new-kw-dispatch121193_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121139_
                             _L121143_
                             _get-kws-id121185_)))
                         (_new-get-kws121195_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121140_
                             _L121142_
                             _main-id121189_))))
                    (let ((__tmp129296
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120953_)))
                          (__tmp129295
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id121185_)))
                          (__tmp129294
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id121189_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129296
                       '" => "
                       __tmp129295
                       '" => "
                       __tmp129294))
                    (let ((__tmp129297
                           (let ((__tmp129298
                                  (let ((__tmp129311
                                         (let ((__tmp129312
                                                (let ((__tmp129313
                                                       (let ((__tmp129314
                                                              (let ((__tmp129316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id121189_ '())))
                            (__tmp129315
                             (let ()
                               (declare (not safe))
                               (cons _L121141_ '()))))
                        (declare (not safe))
                        (cons __tmp129316 __tmp129315))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129313
                                                   _stx120801_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp129312)))
                                        (__tmp129299
                                         (let ((__tmp129306
                                                (let ((__tmp129307
                                                       (let ((__tmp129308
                                                              (let ((__tmp129310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id121185_ '())))
                            (__tmp129309
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws121195_ '()))))
                        (declare (not safe))
                        (cons __tmp129310 __tmp129309))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129307
                                                   _stx120801_)))
                                               (__tmp129300
                                                (let ((__tmp129301
                                                       (let ((__tmp129302
                                                              (let ((__tmp129303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129305
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120953_ '())))
                                   (__tmp129304
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch121193_ '()))))
                               (declare (not safe))
                               (cons __tmp129305 __tmp129304))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129303))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129302 _stx120801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129301 '()))))
                                           (declare (not safe))
                                           (cons __tmp129306 __tmp129300))))
                                    (declare (not safe))
                                    (cons __tmp129311 __tmp129299))))
                             (declare (not safe))
                             (cons '%#begin __tmp129298))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129297 _stx120801_))))
                _hd121016121134_
                _hd121013121126_
                _hd121010121118_
                _hd121007121110_
                _hd120989121062_)
               (let ()
                 (declare (not safe))
                 (_g120969121022_ _g120970121025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120969121022_
                                                  _g120970121025_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120969121022_
                                              _g120970121025_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120969121022_ _g120970121025_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120969121022_ _g120970121025_)))))
                           (let ()
                             (declare (not safe))
                             (_g120969121022_ _g120970121025_)))
                       (let ()
                         (declare (not safe))
                         (_g120969121022_ _g120970121025_)))
                   (let ()
                     (declare (not safe))
                     (_g120969121022_ _g120970121025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120969121022_
                                                      _g120970121025_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120969121022_
                                                  _g120970121025_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120969121022_ _g120970121025_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120969121022_ _g120970121025_)))))
                       (let ()
                         (declare (not safe))
                         (_g120969121022_ _g120970121025_)))))
               (let ()
                 (declare (not safe))
                 (_g120969121022_ _g120970121025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120969121022_
                                                  _g120970121025_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120969121022_ _g120970121025_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120969121022_ _g120970121025_)))))
                           (let ()
                             (declare (not safe))
                             (_g120969121022_ _g120970121025_)))))
                   (let ()
                     (declare (not safe))
                     (_g120969121022_ _g120970121025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120969121022_
                                                      _g120970121025_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120969121022_
                                              _g120970121025_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120969121022_ _g120970121025_))))))
                       (declare (not safe))
                       (_g120968121198_ _L120952_))))
                  (___kont128599128600_
                   (lambda (_L120898_ _L120899_)
                     (let ((__tmp129317
                            (let ((__tmp129318
                                   (let ((__tmp129319
                                          (let ((__tmp129320
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L120898_))))
                                            (declare (not safe))
                                            (cons __tmp129320 '()))))
                                     (declare (not safe))
                                     (cons _L120899_ __tmp129319))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129318))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129317 _stx120801_)))))
              (let* ((___match128684128685_
                      (lambda (_e120844120920_
                               _hd120843120923_
                               _tl120842120925_
                               _e120847120928_
                               _hd120846120931_
                               _tl120845120933_
                               _e120850120936_
                               _hd120849120939_
                               _tl120848120941_
                               _e120853120944_
                               _hd120852120947_
                               _tl120851120949_)
                        (let ((_L120952_ _hd120852120947_)
                              (_L120953_ _hd120849120939_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120953_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120952_)))
                              (___kont128597128598_ _L120952_ _L120953_)
                              (___kont128599128600_
                               _hd120852120947_
                               _hd120846120931_)))))
                     (___match128656128657_
                      (lambda (_e120830121206_
                               _hd120829121209_
                               _tl120828121211_
                               _e120833121214_
                               _hd120832121217_
                               _tl120831121219_
                               _e120836121222_
                               _hd120835121225_
                               _tl120834121227_
                               _e120839121230_
                               _hd120838121233_
                               _tl120837121235_)
                        (let ((_L121238_ _hd120838121233_)
                              (_L121239_ _hd120835121225_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121239_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L121238_)))
                              (___kont128595128596_ _L121238_ _L121239_)
                              (___match128684128685_
                               _e120830121206_
                               _hd120829121209_
                               _tl120828121211_
                               _e120833121214_
                               _hd120832121217_
                               _tl120831121219_
                               _e120836121222_
                               _hd120835121225_
                               _tl120834121227_
                               _e120839121230_
                               _hd120838121233_
                               _tl120837121235_)))))
                     (___match128628128629_
                      (lambda (_e120816121388_
                               _hd120815121391_
                               _tl120814121393_
                               _e120819121396_
                               _hd120818121399_
                               _tl120817121401_
                               _e120822121404_
                               _hd120821121407_
                               _tl120820121409_
                               _e120825121412_
                               _hd120824121415_
                               _tl120823121417_)
                        (let ((_L121420_ _hd120824121415_)
                              (_L121421_ _hd120821121407_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121421_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121420_)))
                              (___kont128593128594_ _L121420_ _L121421_)
                              (___match128656128657_
                               _e120816121388_
                               _hd120815121391_
                               _tl120814121393_
                               _e120819121396_
                               _hd120818121399_
                               _tl120817121401_
                               _e120822121404_
                               _hd120821121407_
                               _tl120820121409_
                               _e120825121412_
                               _hd120824121415_
                               _tl120823121417_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128591128592_))
                    (let ((_e120816121388_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128591128592_))))
                      (let ((_tl120814121393_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120816121388_)))
                            (_hd120815121391_
                             (let ()
                               (declare (not safe))
                               (##car _e120816121388_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120814121393_))
                            (let ((_e120819121396_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120814121393_))))
                              (let ((_tl120817121401_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120819121396_)))
                                    (_hd120818121399_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120819121396_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120818121399_))
                                    (let ((_e120822121404_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120818121399_))))
                                      (let ((_tl120820121409_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120822121404_)))
                                            (_hd120821121407_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120822121404_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120820121409_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120817121401_))
                                                (let ((_e120825121412_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120817121401_))))
                                                  (let ((_tl120823121417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120825121412_)))
                                                        (_hd120824121415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120825121412_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120823121417_))
                                                        (___match128628128629_
                                                         _e120816121388_
                                                         _hd120815121391_
                                                         _tl120814121393_
                                                         _e120819121396_
                                                         _hd120818121399_
                                                         _tl120817121401_
                                                         _e120822121404_
                                                         _hd120821121407_
                                                         _tl120820121409_
                                                         _e120825121412_
                                                         _hd120824121415_
                                                         _tl120823121417_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120810120869_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120810120869_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120817121401_))
                                                (let ((_e120864120890_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120817121401_))))
                                                  (let ((_tl120862120895_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120864120890_)))
                                                        (_hd120863120893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120864120890_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120862120895_))
                                                        (___kont128599128600_
                                                         _hd120863120893_
                                                         _hd120818121399_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120810120869_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120810120869_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120817121401_))
                                        (let ((_e120864120890_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120817121401_))))
                                          (let ((_tl120862120895_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120864120890_)))
                                                (_hd120863120893_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120864120890_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120862120895_))
                                                (___kont128599128600_
                                                 _hd120863120893_
                                                 _hd120818121399_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120810120869_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120810120869_))))))
                            (let () (declare (not safe)) (_g120810120869_)))))
                    (let () (declare (not safe)) (_g120810120869_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx119733_)
        (letrec* ((_bind-e__126987126988_
                   (lambda (_id120785_ _expr120786_ _compile?120787_)
                     (let ((__tmp129323
                            (let ()
                              (declare (not safe))
                              (cons _id120785_ '())))
                           (__tmp129321
                            (let ((__tmp129322
                                   (if _compile?120787_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr120786_))
                                       _expr120786_)))
                              (declare (not safe))
                              (cons __tmp129322 '()))))
                       (declare (not safe))
                       (cons __tmp129323 __tmp129321))))
                  (_bind-e__0__126989126990_
                   (lambda (_id120792_ _expr120793_)
                     (let ((_compile?120795_ '#t))
                       (declare (not safe))
                       (_bind-e__126987126988_
                        _id120792_
                        _expr120793_
                        _compile?120795_))))
                  (_bind-e119735_
                   (lambda _g129325_
                     (let ((_g129324_
                            (let ()
                              (declare (not safe))
                              (##length _g129325_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129324_ 2))
                              (apply (lambda (_id120792_ _expr120793_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126989126990_
                                          _id120792_
                                          _expr120793_)))
                                     _g129325_))
                             ((let () (declare (not safe)) (##fx= _g129324_ 3))
                              (apply (lambda (_id120797_
                                              _expr120798_
                                              _compile?120799_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126987126988_
                                          _id120797_
                                          _expr120798_
                                          _compile?120799_)))
                                     _g129325_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129325_))))))
                  (_compile-bindings119736_
                   (lambda (_bindings120369_)
                     (let _lp120371_ ((_rest120373_ _bindings120369_)
                                      (_lift1120374_ '())
                                      (_lift2120375_ '())
                                      (_bind120376_ '()))
                       (let* ((_rest120377120385_ _rest120373_)
                              (_else120379120393_
                               (lambda ()
                                 (values (reverse _lift1120374_)
                                         (reverse _lift2120375_)
                                         (reverse _bind120376_))))
                              (_K120381120772_
                               (lambda (_rest120396_ _hd120397_)
                                 (let* ((___stx128727128728_ _hd120397_)
                                        (_g120401120437_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128727128728_)))))
                                   (let ((___kont128729128730_
                                          (lambda (_L120679_ _L120680_)
                                            (let* ((___stx128707128708_
                                                    _L120679_)
                                                   (_g120695120709_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128707128708_)))))
                                              (let ((___kont128709128710_
                                                     (lambda (_L120757_)
                                                       (let ((__tmp129326
                                                              (let ((__tmp129327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126987126988_
                                _L120680_
                                _L120679_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129327 _bind120376_))))
                 (declare (not safe))
                 (_lp120371_
                  _rest120396_
                  _lift1120374_
                  _lift2120375_
                  __tmp129326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128711128712_
                                                     (lambda (_L120722_)
                                                       (let ((_g129328_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119733_
                         _L120680_
                         _L120722_
                         '#t))))
                 (begin
                   (let ((_g129329_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129328_)
                                (##vector-length _g129328_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129329_ 3)))
                         (error "Context expects 3 values" _g129329_)))
                   (let ((_ids120732_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129328_ 0)))
                         (_impls120733_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129328_ 1)))
                         (_clauses120734_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129328_ 2))))
                     (let* ((_g129330_
                             (for-each gx#core-bind-runtime! _ids120732_))
                            (_xbind120737_
                             (map _bind-e119735_ _ids120732_ _impls120733_))
                            (_expr*120739_
                             (let ((__tmp129332
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120734_)))
                                   (__tmp129331
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129332
                                __tmp129331)))
                            (_bind*120741_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126987126988_
                                _L120680_
                                _expr*120739_
                                '#f))))
                       (let ((__tmp129334
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120680_)))
                             (__tmp129333
                              (map gxc#identifier-symbol _ids120732_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129334
                          '" => "
                          __tmp129333))
                       (let ((__tmp129336
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120375_ _xbind120737_)))
                             (__tmp129335
                              (let ()
                                (declare (not safe))
                                (cons _bind*120741_ _bind120376_))))
                         (declare (not safe))
                         (_lp120371_
                          _rest120396_
                          _lift1120374_
                          __tmp129336
                          __tmp129335)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128718128719_
                                                       (lambda (_e120700120749_
                                                                _hd120699120752_
                                                                _tl120698120754_)
                                                         (let ((_L120757_
                                                                _tl120698120754_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120757_))
                       (___kont128709128710_ _L120757_)
                       (___kont128711128712_ _tl120698120754_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128707128708_))
                                                      (let ((_e120700120749_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128707128708_))))
                (let ((_tl120698120754_
                       (let () (declare (not safe)) (##cdr _e120700120749_)))
                      (_hd120699120752_
                       (let () (declare (not safe)) (##car _e120700120749_))))
                  (___match128718128719_
                   _e120700120749_
                   _hd120699120752_
                   _tl120698120754_)))
              (let () (declare (not safe)) (_g120695120709_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128731128732_
                                          (lambda (_L120507_ _L120508_)
                                            (let* ((_g120522120552_
                                                    (lambda (_g120523120549_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120523120549_))))
                                                   (_g120521120647_
                                                    (lambda (_g120523120555_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120523120555_))
                                                          (let ((_e120529120557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120523120555_))))
                    (let ((_hd120528120560_
                           (let ()
                             (declare (not safe))
                             (##car _e120529120557_)))
                          (_tl120527120562_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120529120557_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120527120562_))
                          (let ((_e120532120565_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120527120562_))))
                            (let ((_hd120531120568_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120532120565_)))
                                  (_tl120530120570_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120532120565_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120531120568_))
                                  (let ((_e120535120573_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120531120568_))))
                                    (let ((_hd120534120576_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120535120573_)))
                                          (_tl120533120578_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120535120573_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120534120576_))
                                          (let ((_e120538120581_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120534120576_))))
                                            (let ((_hd120537120584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120538120581_)))
                                                  (_tl120536120586_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120538120581_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120537120584_))
                                                  (let ((_e120541120589_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120537120584_))))
                                                    (let ((_hd120540120592_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120541120589_)))
                                                          (_tl120539120594_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120541120589_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120539120594_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120536120586_))
                      (let ((_e120544120597_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120536120586_))))
                        (let ((_hd120543120600_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120544120597_)))
                              (_tl120542120602_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120544120597_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120542120602_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120533120578_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120530120570_))
                                      (let ((_e120547120605_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120530120570_))))
                                        (let ((_hd120546120608_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120547120605_)))
                                              (_tl120545120610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120547120605_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120545120610_))
                                              ((lambda (_L120613_
                                                        _L120614_
                                                        _L120615_)
                                                 (let* ((_lambda-id120639_
                                                         (let ((__tmp129338
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120508_)))
                       (__tmp129337 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129338 __tmp129337)))
                (_lambda-id120641_
                 (let ((__tmp129339
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119733_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120639_ __tmp129339)))
                (_g129340_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120641_)))
                (_new-case-lambda-expr120644_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120613_
                    _L120615_
                    _lambda-id120641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129342
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120508_)))
                                                         (__tmp129341
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120641_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129342
                                                      '" => "
                                                      __tmp129341))
                                                   (let ((__tmp129345
                                                          (let ((__tmp129346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126987126988_
                            _L120508_
                            _new-case-lambda-expr120644_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129346 _rest120396_)))
                 (__tmp129343
                  (let ((__tmp129344
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126989126990_
                            _lambda-id120641_
                            _L120614_))))
                    (declare (not safe))
                    (cons __tmp129344 _lift1120374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120371_
                                                      __tmp129345
                                                      __tmp129343
                                                      _lift2120375_
                                                      _bind120376_))))
                                               _hd120546120608_
                                               _hd120543120600_
                                               _hd120540120592_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120522120552_
                                                 _g120523120555_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120522120552_ _g120523120555_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120522120552_ _g120523120555_)))
                              (let ()
                                (declare (not safe))
                                (_g120522120552_ _g120523120555_)))))
                      (let ()
                        (declare (not safe))
                        (_g120522120552_ _g120523120555_)))
                  (let ()
                    (declare (not safe))
                    (_g120522120552_ _g120523120555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120522120552_
                                                     _g120523120555_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120522120552_
                                             _g120523120555_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120522120552_ _g120523120555_)))))
                          (let ()
                            (declare (not safe))
                            (_g120522120552_ _g120523120555_)))))
                  (let ()
                    (declare (not safe))
                    (_g120522120552_ _g120523120555_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120521120647_ _L120507_))))
                                         (___kont128733128734_
                                          (lambda (_L120458_ _L120459_)
                                            (let ((__tmp129347
                                                   (let ((__tmp129348
                                                          (let ((__tmp129349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129350
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L120458_))))
                           (declare (not safe))
                           (cons __tmp129350 '()))))
                    (declare (not safe))
                    (cons _L120459_ __tmp129349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129348
                                                           _bind120376_))))
                                              (declare (not safe))
                                              (_lp120371_
                                               _rest120396_
                                               _lift1120374_
                                               _lift2120375_
                                               __tmp129347)))))
                                     (let* ((___match128778128779_
                                             (lambda (_e120418120483_
                                                      _hd120417120486_
                                                      _tl120416120488_
                                                      _e120421120491_
                                                      _hd120420120494_
                                                      _tl120419120496_
                                                      _e120424120499_
                                                      _hd120423120502_
                                                      _tl120422120504_)
                                               (let ((_L120507_
                                                      _hd120423120502_)
                                                     (_L120508_
                                                      _hd120420120494_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120508_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120507_)))
                                                     (___kont128731128732_
                                                      _L120507_
                                                      _L120508_)
                                                     (___kont128733128734_
                                                      _hd120423120502_
                                                      _hd120417120486_)))))
                                            (___match128756128757_
                                             (lambda (_e120407120655_
                                                      _hd120406120658_
                                                      _tl120405120660_
                                                      _e120410120663_
                                                      _hd120409120666_
                                                      _tl120408120668_
                                                      _e120413120671_
                                                      _hd120412120674_
                                                      _tl120411120676_)
                                               (let ((_L120679_
                                                      _hd120412120674_)
                                                     (_L120680_
                                                      _hd120409120666_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120680_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120679_)))
                                                     (___kont128729128730_
                                                      _L120679_
                                                      _L120680_)
                                                     (___match128778128779_
                                                      _e120407120655_
                                                      _hd120406120658_
                                                      _tl120405120660_
                                                      _e120410120663_
                                                      _hd120409120666_
                                                      _tl120408120668_
                                                      _e120413120671_
                                                      _hd120412120674_
                                                      _tl120411120676_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128727128728_))
                                           (let ((_e120407120655_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128727128728_))))
                                             (let ((_tl120405120660_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120407120655_)))
                                                   (_hd120406120658_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120407120655_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120406120658_))
                                                   (let ((_e120410120663_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120406120658_))))
                                                     (let ((_tl120408120668_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120410120663_)))
                                                           (_hd120409120666_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120410120663_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120408120668_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120405120660_))
                       (let ((_e120413120671_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120405120660_))))
                         (let ((_tl120411120676_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120413120671_)))
                               (_hd120412120674_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120413120671_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120411120676_))
                               (___match128756128757_
                                _e120407120655_
                                _hd120406120658_
                                _tl120405120660_
                                _e120410120663_
                                _hd120409120666_
                                _tl120408120668_
                                _e120413120671_
                                _hd120412120674_
                                _tl120411120676_)
                               (let ()
                                 (declare (not safe))
                                 (_g120401120437_)))))
                       (let () (declare (not safe)) (_g120401120437_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120405120660_))
                       (let ((_e120432120450_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120405120660_))))
                         (let ((_tl120430120455_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120432120450_)))
                               (_hd120431120453_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120432120450_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120430120455_))
                               (___kont128733128734_
                                _hd120431120453_
                                _hd120406120658_)
                               (let ()
                                 (declare (not safe))
                                 (_g120401120437_)))))
                       (let () (declare (not safe)) (_g120401120437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120405120660_))
                                                       (let ((_e120432120450_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120405120660_))))
                 (let ((_tl120430120455_
                        (let () (declare (not safe)) (##cdr _e120432120450_)))
                       (_hd120431120453_
                        (let () (declare (not safe)) (##car _e120432120450_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120430120455_))
                       (___kont128733128734_ _hd120431120453_ _hd120406120658_)
                       (let () (declare (not safe)) (_g120401120437_)))))
               (let () (declare (not safe)) (_g120401120437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120401120437_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120377120385_))
                             (let ((_hd120382120775_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120377120385_)))
                                   (_tl120383120777_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120377120385_))))
                               (let* ((_hd120780_ _hd120382120775_)
                                      (_rest120782_ _tl120383120777_))
                                 (declare (not safe))
                                 (_K120381120772_ _rest120782_ _hd120780_)))
                             (let ()
                               (declare (not safe))
                               (_else120379120393_)))))))
                  (_lift-kw-lambda?119737_
                   (lambda (_bind120293_)
                     (let* ((___stx128795128796_ _bind120293_)
                            (_g120296120313_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128795128796_)))))
                       (let ((___kont128797128798_
                              (lambda (_L120349_ _L120350_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120350_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120349_))
                                    '#f)))
                             (___kont128799128800_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128795128796_))
                             (let ((_e120302120325_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128795128796_))))
                               (let ((_tl120300120330_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120302120325_)))
                                     (_hd120301120328_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120302120325_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120301120328_))
                                     (let ((_e120305120333_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120301120328_))))
                                       (let ((_tl120303120338_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120305120333_)))
                                             (_hd120304120336_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120305120333_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120303120338_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120300120330_))
                                                 (let ((_e120308120341_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120300120330_))))
                                                   (let ((_tl120306120346_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120308120341_)))
                                                         (_hd120307120344_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120308120341_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120306120346_))
                                                         (___kont128797128798_
                                                          _hd120307120344_
                                                          _hd120304120336_)
                                                         (___kont128799128800_))))
                                                 (___kont128799128800_))
                                             (___kont128799128800_))))
                                     (___kont128799128800_))))
                             (___kont128799128800_))))))
                  (_lift-kw-lambda-bindings119738_
                   (lambda (_bindings119905_)
                     (let _lp119907_ ((_rest119909_ _bindings119905_)
                                      (_lift1119910_ '())
                                      (_lift2119911_ '())
                                      (_bind119912_ '()))
                       (let* ((_rest119913119921_ _rest119909_)
                              (_else119915119929_
                               (lambda ()
                                 (values (reverse _lift1119910_)
                                         (reverse _lift2119911_)
                                         (reverse _bind119912_))))
                              (_K119917120281_
                               (lambda (_rest119932_ _hd119933_)
                                 (let* ((___stx128825128826_ _hd119933_)
                                        (_g119936119961_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128825128826_)))))
                                   (let ((___kont128827128828_
                                          (lambda (_L120031_ _L120032_)
                                            (let* ((_g120046120099_
                                                    (lambda (_g120047120096_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120047120096_))))
                                                   (_g120045120275_
                                                    (lambda (_g120047120102_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120047120102_))
                                                          (let ((_e120055120104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120047120102_))))
                    (let ((_hd120054120107_
                           (let ()
                             (declare (not safe))
                             (##car _e120055120104_)))
                          (_tl120053120109_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120055120104_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120053120109_))
                          (let ((_e120058120112_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120053120109_))))
                            (let ((_hd120057120115_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120058120112_)))
                                  (_tl120056120117_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120058120112_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120057120115_))
                                  (let ((_e120061120120_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120057120115_))))
                                    (let ((_hd120060120123_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120061120120_)))
                                          (_tl120059120125_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120061120120_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120060120123_))
                                          (let ((_e120064120128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120060120123_))))
                                            (let ((_hd120063120131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120064120128_)))
                                                  (_tl120062120133_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120064120128_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120063120131_))
                                                  (let ((_e120067120136_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120063120131_))))
                                                    (let ((_hd120066120139_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120067120136_)))
                                                          (_tl120065120141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120067120136_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120065120141_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120062120133_))
                      (let ((_e120070120144_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120062120133_))))
                        (let ((_hd120069120147_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120070120144_)))
                              (_tl120068120149_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120070120144_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120069120147_))
                              (let ((_e120073120152_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120069120147_))))
                                (let ((_hd120072120155_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120073120152_)))
                                      (_tl120071120157_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120073120152_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120071120157_))
                                      (let ((_e120076120160_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120071120157_))))
                                        (let ((_hd120075120163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120076120160_)))
                                              (_tl120074120165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120076120160_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120075120163_))
                                              (let ((_e120079120168_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120075120163_))))
                                                (let ((_hd120078120171_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120079120168_)))
                                                      (_tl120077120173_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120079120168_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120078120171_))
                                                      (let ((_e120082120176_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120078120171_))))
                (let ((_hd120081120179_
                       (let () (declare (not safe)) (##car _e120082120176_)))
                      (_tl120080120181_
                       (let () (declare (not safe)) (##cdr _e120082120176_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120081120179_))
                      (let ((_e120085120184_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120081120179_))))
                        (let ((_hd120084120187_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120085120184_)))
                              (_tl120083120189_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120085120184_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120083120189_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120080120181_))
                                  (let ((_e120088120192_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120080120181_))))
                                    (let ((_hd120087120195_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120088120192_)))
                                          (_tl120086120197_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120088120192_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120086120197_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120077120173_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120074120165_))
                                                  (let ((_e120091120200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120074120165_))))
                                                    (let ((_hd120090120203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120091120200_)))
                                                          (_tl120089120205_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120091120200_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120089120205_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120068120149_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120059120125_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120056120117_))
                              (let ((_e120094120208_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120056120117_))))
                                (let ((_hd120093120211_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120094120208_)))
                                      (_tl120092120213_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120094120208_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120092120213_))
                                      ((lambda (_L120216_
                                                _L120217_
                                                _L120218_
                                                _L120219_
                                                _L120220_)
                                         (let* ((_get-kws-id120260_
                                                 (let ((__tmp129352
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120032_)))
                                                       (__tmp129351
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129352
                                                    __tmp129351)))
                                                (_get-kws-id120262_
                                                 (let ((__tmp129353
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119733_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120260_
                                                    __tmp129353)))
                                                (_main-id120264_
                                                 (let ((__tmp129355
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120032_)))
                                                       (__tmp129354
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129355
                                                    __tmp129354)))
                                                (_main-id120266_
                                                 (let ((__tmp129356
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119733_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120264_
                                                    __tmp129356)))
                                                (_g129357_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120262_)))
                                                (_g129358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120266_)))
                                                (_new-kw-dispatch120270_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120216_
                                                    _L120220_
                                                    _get-kws-id120262_)))
                                                (_new-get-kws120272_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120217_
                                                    _L120219_
                                                    _main-id120266_))))
                                           (let ((__tmp129361
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120032_)))
                                                 (__tmp129360
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120262_)))
                                                 (__tmp129359
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120266_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129361
                                              '" => "
                                              __tmp129360
                                              '" => "
                                              __tmp129359))
                                           (let ((__tmp129366
                                                  (let ((__tmp129367
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126987126988_
                                                            _main-id120266_
                                                            _L120218_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129367
                                                          _lift1119910_)))
                                                 (__tmp129364
                                                  (let ((__tmp129365
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126987126988_
                                                            _get-kws-id120262_
                                                            _new-get-kws120272_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129365
                                                          _lift2119911_)))
                                                 (__tmp129362
                                                  (let ((__tmp129363
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126987126988_
                                                            _L120032_
                                                            _new-kw-dispatch120270_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129363
                                                          _bind119912_))))
                                             (declare (not safe))
                                             (_lp119907_
                                              _rest119932_
                                              __tmp129366
                                              __tmp129364
                                              __tmp129362))))
                                       _hd120093120211_
                                       _hd120090120203_
                                       _hd120087120195_
                                       _hd120084120187_
                                       _hd120066120139_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120046120099_ _g120047120102_)))))
                              (let ()
                                (declare (not safe))
                                (_g120046120099_ _g120047120102_)))
                          (let ()
                            (declare (not safe))
                            (_g120046120099_ _g120047120102_)))
                      (let ()
                        (declare (not safe))
                        (_g120046120099_ _g120047120102_)))
                  (let ()
                    (declare (not safe))
                    (_g120046120099_ _g120047120102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120046120099_
                                                     _g120047120102_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120046120099_
                                                 _g120047120102_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120046120099_
                                             _g120047120102_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120046120099_ _g120047120102_)))
                              (let ()
                                (declare (not safe))
                                (_g120046120099_ _g120047120102_)))))
                      (let ()
                        (declare (not safe))
                        (_g120046120099_ _g120047120102_)))))
              (let ()
                (declare (not safe))
                (_g120046120099_ _g120047120102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120046120099_
                                                 _g120047120102_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120046120099_ _g120047120102_)))))
                              (let ()
                                (declare (not safe))
                                (_g120046120099_ _g120047120102_)))))
                      (let ()
                        (declare (not safe))
                        (_g120046120099_ _g120047120102_)))
                  (let ()
                    (declare (not safe))
                    (_g120046120099_ _g120047120102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120046120099_
                                                     _g120047120102_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120046120099_
                                             _g120047120102_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120046120099_ _g120047120102_)))))
                          (let ()
                            (declare (not safe))
                            (_g120046120099_ _g120047120102_)))))
                  (let ()
                    (declare (not safe))
                    (_g120046120099_ _g120047120102_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120045120275_ _L120031_))))
                                         (___kont128829128830_
                                          (lambda (_L119982_ _L119983_)
                                            (let ((__tmp129368
                                                   (let ((__tmp129369
                                                          (let ((__tmp129370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119982_ '()))))
                    (declare (not safe))
                    (cons _L119983_ __tmp129370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129369
                                                           _bind119912_))))
                                              (declare (not safe))
                                              (_lp119907_
                                               _rest119932_
                                               _lift1119910_
                                               _lift2119911_
                                               __tmp129368)))))
                                     (let ((___match128852128853_
                                            (lambda (_e119942120007_
                                                     _hd119941120010_
                                                     _tl119940120012_
                                                     _e119945120015_
                                                     _hd119944120018_
                                                     _tl119943120020_
                                                     _e119948120023_
                                                     _hd119947120026_
                                                     _tl119946120028_)
                                              (let ((_L120031_
                                                     _hd119947120026_)
                                                    (_L120032_
                                                     _hd119944120018_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L120032_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L120031_)))
                                                    (___kont128827128828_
                                                     _L120031_
                                                     _L120032_)
                                                    (___kont128829128830_
                                                     _hd119947120026_
                                                     _hd119941120010_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128825128826_))
                                           (let ((_e119942120007_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128825128826_))))
                                             (let ((_tl119940120012_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119942120007_)))
                                                   (_hd119941120010_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119942120007_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119941120010_))
                                                   (let ((_e119945120015_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119941120010_))))
                                                     (let ((_tl119943120020_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119945120015_)))
                                                           (_hd119944120018_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119945120015_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119943120020_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119940120012_))
                       (let ((_e119948120023_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119940120012_))))
                         (let ((_tl119946120028_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119948120023_)))
                               (_hd119947120026_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119948120023_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119946120028_))
                               (___match128852128853_
                                _e119942120007_
                                _hd119941120010_
                                _tl119940120012_
                                _e119945120015_
                                _hd119944120018_
                                _tl119943120020_
                                _e119948120023_
                                _hd119947120026_
                                _tl119946120028_)
                               (let ()
                                 (declare (not safe))
                                 (_g119936119961_)))))
                       (let () (declare (not safe)) (_g119936119961_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119940120012_))
                       (let ((_e119956119974_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119940120012_))))
                         (let ((_tl119954119979_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119956119974_)))
                               (_hd119955119977_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119956119974_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119954119979_))
                               (___kont128829128830_
                                _hd119955119977_
                                _hd119941120010_)
                               (let ()
                                 (declare (not safe))
                                 (_g119936119961_)))))
                       (let () (declare (not safe)) (_g119936119961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119940120012_))
                                                       (let ((_e119956119974_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119940120012_))))
                 (let ((_tl119954119979_
                        (let () (declare (not safe)) (##cdr _e119956119974_)))
                       (_hd119955119977_
                        (let () (declare (not safe)) (##car _e119956119974_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119954119979_))
                       (___kont128829128830_ _hd119955119977_ _hd119941120010_)
                       (let () (declare (not safe)) (_g119936119961_)))))
               (let () (declare (not safe)) (_g119936119961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119936119961_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119913119921_))
                             (let ((_hd119918120284_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119913119921_)))
                                   (_tl119919120286_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119913119921_))))
                               (let* ((_hd120289_ _hd119918120284_)
                                      (_rest120291_ _tl119919120286_))
                                 (declare (not safe))
                                 (_K119917120281_ _rest120291_ _hd120289_)))
                             (let ()
                               (declare (not safe))
                               (_else119915119929_))))))))
          (let* ((___stx128869128870_ _stx119733_)
                 (_g119741119767_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128869128870_)))))
            (let ((___kont128871128872_
                   (lambda (_L119827_ _L119828_)
                     (let ((__tmp129372
                            (lambda ()
                              (if (let ((__tmp129399
                                         (let ((__tmp129400
                                                (lambda (_g119856119859_
                                                         _g119857119861_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119856119859_
                                                          _g119857119861_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129400
                                                   '()
                                                   _L119828_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119737_
                                            __tmp129399))
                                  (let ((_g129386_
                                         (let ((__tmp129388
                                                (let ((__tmp129389
                                                       (lambda (_g119863119866_
                                                                _g119864119868_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119863119866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119864119868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129389
                                                          '()
                                                          _L119828_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119738_
                                            __tmp129388))))
                                    (begin
                                      (let ((_g129387_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129386_)
                                                   (##vector-length _g129386_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129387_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129387_)))
                                      (let ((_lift1119871_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129386_ 0)))
                                            (_lift2119872_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129386_ 1)))
                                            (_hd119873_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129386_ 2))))
                                        (let* ((_expr119875_
                                                (let ((__tmp129390
                                                       (let ((__tmp129391
                                                              (let ((__tmp129392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119827_ '()))))
                        (declare (not safe))
                        (cons _hd119873_ __tmp129392))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129390
                                                   _stx119733_)))
                                               (_expr119877_
                                                (let ((__tmp129393
                                                       (let ((__tmp129394
                                                              (let ((__tmp129395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119875_ '()))))
                        (declare (not safe))
                        (cons _lift2119872_ __tmp129395))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129393
                                                   _stx119733_)))
                                               (_expr119879_
                                                (let ((__tmp129396
                                                       (let ((__tmp129397
                                                              (let ((__tmp129398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119877_ '()))))
                        (declare (not safe))
                        (cons _lift1119871_ __tmp129398))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129396
                                                   _stx119733_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr119879_))))))
                                  (let ((_g129373_
                                         (let ((__tmp129375
                                                (let ((__tmp129376
                                                       (lambda (_g119881119884_
                                                                _g119882119886_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119881119884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119882119886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129376
                                                          '()
                                                          _L119828_))))
                                           (declare (not safe))
                                           (_compile-bindings119736_
                                            __tmp129375))))
                                    (begin
                                      (let ((_g129374_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129373_)
                                                   (##vector-length _g129373_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129374_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129374_)))
                                      (let ((_lift1119889_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129373_ 0)))
                                            (_lift2119890_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129373_ 1)))
                                            (_hd119891_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129373_ 2))))
                                        (let* ((_body119893_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L119827_)))
                                               (_expr119895_
                                                (let ((__tmp129377
                                                       (let ((__tmp129378
                                                              (let ((__tmp129379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119893_ '()))))
                        (declare (not safe))
                        (cons _hd119891_ __tmp129379))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129377
                                                   _stx119733_)))
                                               (_expr119897_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119890_))
                                                    _expr119895_
                                                    (let ((__tmp129380
                                                           (let ((__tmp129381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129382
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119895_ '()))))
                            (declare (not safe))
                            (cons _lift2119890_ __tmp129382))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129381))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129380 _stx119733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119899_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119889_))
                                                    _expr119897_
                                                    (let ((__tmp129383
                                                           (let ((__tmp129384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129385
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119897_ '()))))
                            (declare (not safe))
                            (cons _lift1119889_ __tmp129385))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129384))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129383 _stx119733_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119899_)))))))
                           (__tmp129371
                            (let ((__obj129075
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj129075)
                              __obj129075)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129372
                        gx#current-expander-context
                        __tmp129371))))
                  (___kont128875128876_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx119733_)))))
              (let ((___match128896128897_
                     (lambda (_e119747119779_
                              _hd119746119782_
                              _tl119745119784_
                              _e119750119787_
                              _hd119749119790_
                              _tl119748119792_
                              ___splice128873128874_
                              _target119751119795_
                              _tl119753119797_)
                       (letrec ((_loop119754119800_
                                 (lambda (_hd119752119803_ _bind119758119805_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119752119803_))
                                       (let ((_e119755119808_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119752119803_))))
                                         (let ((_lp-tl119757119813_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119755119808_)))
                                               (_lp-hd119756119811_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119755119808_))))
                                           (let ((__tmp129403
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119756119811_
                                                          _bind119758119805_))))
                                             (declare (not safe))
                                             (_loop119754119800_
                                              _lp-tl119757119813_
                                              __tmp129403))))
                                       (let ((_bind119759119816_
                                              (reverse _bind119758119805_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119748119792_))
                                             (let ((_e119762119819_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119748119792_))))
                                               (let ((_tl119760119824_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119762119819_)))
                                                     (_hd119761119822_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119762119819_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119760119824_))
                                                     (let ((_L119827_
                                                            _hd119761119822_)
                                                           (_L119828_
                                                            _bind119759119816_))
                                                       (if (let ((__tmp129401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129402
                                 (lambda (_g119848119851_ _g119849119853_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119848119851_ _g119849119853_)))))
                            (declare (not safe))
                            (foldr1 __tmp129402 '() _L119828_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129401))
                   (___kont128871128872_ _L119827_ _L119828_)
                   (___kont128875128876_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128875128876_))))
                                             (___kont128875128876_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119754119800_ _target119751119795_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128869128870_))
                    (let ((_e119747119779_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128869128870_))))
                      (let ((_tl119745119784_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119747119779_)))
                            (_hd119746119782_
                             (let ()
                               (declare (not safe))
                               (##car _e119747119779_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119745119784_))
                            (let ((_e119750119787_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119745119784_))))
                              (let ((_tl119748119792_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119750119787_)))
                                    (_hd119749119790_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119750119787_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119749119790_))
                                    (let ((___splice128873128874_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119749119790_
                                              '0))))
                                      (let ((_tl119753119797_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128873128874_
                                                '1)))
                                            (_target119751119795_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128873128874_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119753119797_))
                                            (___match128896128897_
                                             _e119747119779_
                                             _hd119746119782_
                                             _tl119745119784_
                                             _e119750119787_
                                             _hd119749119790_
                                             _tl119748119792_
                                             ___splice128873128874_
                                             _target119751119795_
                                             _tl119753119797_)
                                            (___kont128875128876_))))
                                    (___kont128875128876_))))
                            (___kont128875128876_))))
                    (___kont128875128876_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx118877_)
        (letrec* ((_bind-e__126992126993_
                   (lambda (_id119717_ _expr119718_ _compile?119719_)
                     (let ((__tmp129406
                            (let ()
                              (declare (not safe))
                              (cons _id119717_ '())))
                           (__tmp129404
                            (let ((__tmp129405
                                   (if _compile?119719_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119718_))
                                       _expr119718_)))
                              (declare (not safe))
                              (cons __tmp129405 '()))))
                       (declare (not safe))
                       (cons __tmp129406 __tmp129404))))
                  (_bind-e__0__126994126995_
                   (lambda (_id119724_ _expr119725_)
                     (let ((_compile?119727_ '#t))
                       (declare (not safe))
                       (_bind-e__126992126993_
                        _id119724_
                        _expr119725_
                        _compile?119727_))))
                  (_bind-e118879_
                   (lambda _g129408_
                     (let ((_g129407_
                            (let ()
                              (declare (not safe))
                              (##length _g129408_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129407_ 2))
                              (apply (lambda (_id119724_ _expr119725_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126994126995_
                                          _id119724_
                                          _expr119725_)))
                                     _g129408_))
                             ((let () (declare (not safe)) (##fx= _g129407_ 3))
                              (apply (lambda (_id119729_
                                              _expr119730_
                                              _compile?119731_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126992126993_
                                          _id119729_
                                          _expr119730_
                                          _compile?119731_)))
                                     _g129408_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129408_))))))
                  (_compile-bindings118880_
                   (lambda (_rest119015_)
                     (let _lp119017_ ((_rest119019_ _rest119015_)
                                      (_bind119020_ '()))
                       (let* ((_rest119021119029_ _rest119019_)
                              (_else119023119037_
                               (lambda () (reverse _bind119020_)))
                              (_K119025119704_
                               (lambda (_rest119040_ _hd119041_)
                                 (let* ((___stx128919128920_ _hd119041_)
                                        (_g119046119093_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128919128920_)))))
                                   (let ((___kont128921128922_
                                          (lambda (_L119611_ _L119612_)
                                            (let* ((___stx128899128900_
                                                    _L119611_)
                                                   (_g119627119641_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128899128900_)))))
                                              (let ((___kont128901128902_
                                                     (lambda (_L119689_)
                                                       (let ((__tmp129409
                                                              (let ((__tmp129410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126992126993_
                                _L119612_
                                _L119611_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129410 _bind119020_))))
                 (declare (not safe))
                 (_lp119017_ _rest119040_ __tmp129409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128903128904_
                                                     (lambda (_L119654_)
                                                       (let ((_g129411_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118877_
                         _L119612_
                         _L119654_
                         '#t))))
                 (begin
                   (let ((_g129412_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129411_)
                                (##vector-length _g129411_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129412_ 3)))
                         (error "Context expects 3 values" _g129412_)))
                   (let ((_ids119664_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129411_ 0)))
                         (_impls119665_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129411_ 1)))
                         (_clauses119666_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129411_ 2))))
                     (let* ((_g129413_
                             (for-each gx#core-bind-runtime! _ids119664_))
                            (_xbind119669_
                             (map _bind-e118879_ _ids119664_ _impls119665_))
                            (_expr*119671_
                             (let ((__tmp129415
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119666_)))
                                   (__tmp129414
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129415
                                __tmp129414)))
                            (_bind*119673_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126992126993_
                                _L119612_
                                _expr*119671_
                                '#f))))
                       (let ((__tmp129417
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119612_)))
                             (__tmp129416
                              (map gxc#identifier-symbol _ids119664_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129417
                          '" => "
                          __tmp129416))
                       (let ((__tmp129418
                              (let ((__tmp129419
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind119020_
                                               _xbind119669_))))
                                (declare (not safe))
                                (cons _bind*119673_ __tmp129419))))
                         (declare (not safe))
                         (_lp119017_ _rest119040_ __tmp129418)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128910128911_
                                                       (lambda (_e119632119681_
                                                                _hd119631119684_
                                                                _tl119630119686_)
                                                         (let ((_L119689_
                                                                _tl119630119686_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119689_))
                       (___kont128901128902_ _L119689_)
                       (___kont128903128904_ _tl119630119686_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128899128900_))
                                                      (let ((_e119632119681_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128899128900_))))
                (let ((_tl119630119686_
                       (let () (declare (not safe)) (##cdr _e119632119681_)))
                      (_hd119631119684_
                       (let () (declare (not safe)) (##car _e119632119681_))))
                  (___match128910128911_
                   _e119632119681_
                   _hd119631119684_
                   _tl119630119686_)))
              (let () (declare (not safe)) (_g119627119641_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128923128924_
                                          (lambda (_L119439_ _L119440_)
                                            (let* ((_g119454119484_
                                                    (lambda (_g119455119481_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119455119481_))))
                                                   (_g119453119579_
                                                    (lambda (_g119455119487_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119455119487_))
                                                          (let ((_e119461119489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119455119487_))))
                    (let ((_hd119460119492_
                           (let ()
                             (declare (not safe))
                             (##car _e119461119489_)))
                          (_tl119459119494_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119461119489_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119459119494_))
                          (let ((_e119464119497_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119459119494_))))
                            (let ((_hd119463119500_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119464119497_)))
                                  (_tl119462119502_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119464119497_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119463119500_))
                                  (let ((_e119467119505_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119463119500_))))
                                    (let ((_hd119466119508_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119467119505_)))
                                          (_tl119465119510_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119467119505_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119466119508_))
                                          (let ((_e119470119513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119466119508_))))
                                            (let ((_hd119469119516_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119470119513_)))
                                                  (_tl119468119518_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119470119513_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119469119516_))
                                                  (let ((_e119473119521_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119469119516_))))
                                                    (let ((_hd119472119524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119473119521_)))
                                                          (_tl119471119526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119473119521_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119471119526_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119468119518_))
                      (let ((_e119476119529_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119468119518_))))
                        (let ((_hd119475119532_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119476119529_)))
                              (_tl119474119534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119476119529_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119474119534_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119465119510_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119462119502_))
                                      (let ((_e119479119537_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119462119502_))))
                                        (let ((_hd119478119540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119479119537_)))
                                              (_tl119477119542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119479119537_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119477119542_))
                                              ((lambda (_L119545_
                                                        _L119546_
                                                        _L119547_)
                                                 (let* ((_lambda-id119571_
                                                         (let ((__tmp129421
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119440_)))
                       (__tmp129420 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129421 __tmp129420)))
                (_lambda-id119573_
                 (let ((__tmp129422
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118877_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119571_ __tmp129422)))
                (_g129423_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119573_)))
                (_new-case-lambda-expr119576_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119545_
                    _L119547_
                    _lambda-id119573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129425
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119440_)))
                                                         (__tmp129424
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119573_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129425
                                                      '" => "
                                                      __tmp129424))
                                                   (let ((__tmp129428
                                                          (let ((__tmp129429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126992126993_
                            _L119440_
                            _new-case-lambda-expr119576_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129429 _rest119040_)))
                 (__tmp129426
                  (let ((__tmp129427
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126994126995_
                            _lambda-id119573_
                            _L119546_))))
                    (declare (not safe))
                    (cons __tmp129427 _bind119020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119017_
                                                      __tmp129428
                                                      __tmp129426))))
                                               _hd119478119540_
                                               _hd119475119532_
                                               _hd119472119524_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119454119484_
                                                 _g119455119487_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119454119484_ _g119455119487_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119454119484_ _g119455119487_)))
                              (let ()
                                (declare (not safe))
                                (_g119454119484_ _g119455119487_)))))
                      (let ()
                        (declare (not safe))
                        (_g119454119484_ _g119455119487_)))
                  (let ()
                    (declare (not safe))
                    (_g119454119484_ _g119455119487_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119454119484_
                                                     _g119455119487_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119454119484_
                                             _g119455119487_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119454119484_ _g119455119487_)))))
                          (let ()
                            (declare (not safe))
                            (_g119454119484_ _g119455119487_)))))
                  (let ()
                    (declare (not safe))
                    (_g119454119484_ _g119455119487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119453119579_ _L119439_))))
                                         (___kont128925128926_
                                          (lambda (_L119163_ _L119164_)
                                            (let* ((_g119178119231_
                                                    (lambda (_g119179119228_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119179119228_))))
                                                   (_g119177119407_
                                                    (lambda (_g119179119234_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119179119234_))
                                                          (let ((_e119187119236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119179119234_))))
                    (let ((_hd119186119239_
                           (let ()
                             (declare (not safe))
                             (##car _e119187119236_)))
                          (_tl119185119241_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119187119236_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119185119241_))
                          (let ((_e119190119244_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119185119241_))))
                            (let ((_hd119189119247_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119190119244_)))
                                  (_tl119188119249_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119190119244_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119189119247_))
                                  (let ((_e119193119252_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119189119247_))))
                                    (let ((_hd119192119255_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119193119252_)))
                                          (_tl119191119257_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119193119252_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119192119255_))
                                          (let ((_e119196119260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119192119255_))))
                                            (let ((_hd119195119263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119196119260_)))
                                                  (_tl119194119265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119196119260_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119195119263_))
                                                  (let ((_e119199119268_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119195119263_))))
                                                    (let ((_hd119198119271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119199119268_)))
                                                          (_tl119197119273_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119199119268_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119197119273_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119194119265_))
                      (let ((_e119202119276_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119194119265_))))
                        (let ((_hd119201119279_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119202119276_)))
                              (_tl119200119281_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119202119276_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119201119279_))
                              (let ((_e119205119284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119201119279_))))
                                (let ((_hd119204119287_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119205119284_)))
                                      (_tl119203119289_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119205119284_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119203119289_))
                                      (let ((_e119208119292_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119203119289_))))
                                        (let ((_hd119207119295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119208119292_)))
                                              (_tl119206119297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119208119292_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119207119295_))
                                              (let ((_e119211119300_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119207119295_))))
                                                (let ((_hd119210119303_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119211119300_)))
                                                      (_tl119209119305_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119211119300_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119210119303_))
                                                      (let ((_e119214119308_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119210119303_))))
                (let ((_hd119213119311_
                       (let () (declare (not safe)) (##car _e119214119308_)))
                      (_tl119212119313_
                       (let () (declare (not safe)) (##cdr _e119214119308_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119213119311_))
                      (let ((_e119217119316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119213119311_))))
                        (let ((_hd119216119319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119217119316_)))
                              (_tl119215119321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119217119316_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119215119321_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119212119313_))
                                  (let ((_e119220119324_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119212119313_))))
                                    (let ((_hd119219119327_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119220119324_)))
                                          (_tl119218119329_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119220119324_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119218119329_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119209119305_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119206119297_))
                                                  (let ((_e119223119332_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119206119297_))))
                                                    (let ((_hd119222119335_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119223119332_)))
                                                          (_tl119221119337_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119223119332_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119221119337_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119200119281_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119191119257_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119188119249_))
                              (let ((_e119226119340_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119188119249_))))
                                (let ((_hd119225119343_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119226119340_)))
                                      (_tl119224119345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119226119340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119224119345_))
                                      ((lambda (_L119348_
                                                _L119349_
                                                _L119350_
                                                _L119351_
                                                _L119352_)
                                         (let* ((_get-kws-id119392_
                                                 (let ((__tmp129431
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119164_)))
                                                       (__tmp129430
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129431
                                                    __tmp129430)))
                                                (_get-kws-id119394_
                                                 (let ((__tmp129432
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118877_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119392_
                                                    __tmp129432)))
                                                (_main-id119396_
                                                 (let ((__tmp129434
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119164_)))
                                                       (__tmp129433
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129434
                                                    __tmp129433)))
                                                (_main-id119398_
                                                 (let ((__tmp129435
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118877_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119396_
                                                    __tmp129435)))
                                                (_g129436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119394_)))
                                                (_g129437_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119398_)))
                                                (_new-kw-dispatch119402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119348_
                                                    _L119352_
                                                    _get-kws-id119394_)))
                                                (_new-get-kws119404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119349_
                                                    _L119351_
                                                    _main-id119398_))))
                                           (let ((__tmp129440
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119164_)))
                                                 (__tmp129439
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119394_)))
                                                 (__tmp129438
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119398_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129440
                                              '" => "
                                              __tmp129439
                                              '" => "
                                              __tmp129438))
                                           (let ((__tmp129441
                                                  (let ((__tmp129446
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126992126993_
                                                            _main-id119398_
                                                            _L119350_
                                                            '#f)))
                                                        (__tmp129442
                                                         (let ((__tmp129445
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126992126993_
                           _get-kws-id119394_
                           _new-get-kws119404_
                           '#f)))
                       (__tmp129443
                        (let ((__tmp129444
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126992126993_
                                  _L119164_
                                  _new-kw-dispatch119402_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129444 _rest119040_))))
                   (declare (not safe))
                   (cons __tmp129445 __tmp129443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129446
                                                          __tmp129442))))
                                             (declare (not safe))
                                             (_lp119017_
                                              __tmp129441
                                              _bind119020_))))
                                       _hd119225119343_
                                       _hd119222119335_
                                       _hd119219119327_
                                       _hd119216119319_
                                       _hd119198119271_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119178119231_ _g119179119234_)))))
                              (let ()
                                (declare (not safe))
                                (_g119178119231_ _g119179119234_)))
                          (let ()
                            (declare (not safe))
                            (_g119178119231_ _g119179119234_)))
                      (let ()
                        (declare (not safe))
                        (_g119178119231_ _g119179119234_)))
                  (let ()
                    (declare (not safe))
                    (_g119178119231_ _g119179119234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119178119231_
                                                     _g119179119234_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119178119231_
                                                 _g119179119234_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119178119231_
                                             _g119179119234_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119178119231_ _g119179119234_)))
                              (let ()
                                (declare (not safe))
                                (_g119178119231_ _g119179119234_)))))
                      (let ()
                        (declare (not safe))
                        (_g119178119231_ _g119179119234_)))))
              (let ()
                (declare (not safe))
                (_g119178119231_ _g119179119234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119178119231_
                                                 _g119179119234_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119178119231_ _g119179119234_)))))
                              (let ()
                                (declare (not safe))
                                (_g119178119231_ _g119179119234_)))))
                      (let ()
                        (declare (not safe))
                        (_g119178119231_ _g119179119234_)))
                  (let ()
                    (declare (not safe))
                    (_g119178119231_ _g119179119234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119178119231_
                                                     _g119179119234_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119178119231_
                                             _g119179119234_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119178119231_ _g119179119234_)))))
                          (let ()
                            (declare (not safe))
                            (_g119178119231_ _g119179119234_)))))
                  (let ()
                    (declare (not safe))
                    (_g119178119231_ _g119179119234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119177119407_ _L119163_))))
                                         (___kont128927128928_
                                          (lambda (_L119114_ _L119115_)
                                            (let ((__tmp129447
                                                   (let ((__tmp129448
                                                          (let ((__tmp129449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129450
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L119114_))))
                           (declare (not safe))
                           (cons __tmp129450 '()))))
                    (declare (not safe))
                    (cons _L119115_ __tmp129449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129448
                                                           _bind119020_))))
                                              (declare (not safe))
                                              (_lp119017_
                                               _rest119040_
                                               __tmp129447)))))
                                     (let* ((___match128994128995_
                                             (lambda (_e119074119139_
                                                      _hd119073119142_
                                                      _tl119072119144_
                                                      _e119077119147_
                                                      _hd119076119150_
                                                      _tl119075119152_
                                                      _e119080119155_
                                                      _hd119079119158_
                                                      _tl119078119160_)
                                               (let ((_L119163_
                                                      _hd119079119158_)
                                                     (_L119164_
                                                      _hd119076119150_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119164_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L119163_)))
                                                     (___kont128925128926_
                                                      _L119163_
                                                      _L119164_)
                                                     (___kont128927128928_
                                                      _hd119079119158_
                                                      _hd119073119142_)))))
                                            (___match128972128973_
                                             (lambda (_e119063119415_
                                                      _hd119062119418_
                                                      _tl119061119420_
                                                      _e119066119423_
                                                      _hd119065119426_
                                                      _tl119064119428_
                                                      _e119069119431_
                                                      _hd119068119434_
                                                      _tl119067119436_)
                                               (let ((_L119439_
                                                      _hd119068119434_)
                                                     (_L119440_
                                                      _hd119065119426_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119440_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119439_)))
                                                     (___kont128923128924_
                                                      _L119439_
                                                      _L119440_)
                                                     (___match128994128995_
                                                      _e119063119415_
                                                      _hd119062119418_
                                                      _tl119061119420_
                                                      _e119066119423_
                                                      _hd119065119426_
                                                      _tl119064119428_
                                                      _e119069119431_
                                                      _hd119068119434_
                                                      _tl119067119436_)))))
                                            (___match128950128951_
                                             (lambda (_e119052119587_
                                                      _hd119051119590_
                                                      _tl119050119592_
                                                      _e119055119595_
                                                      _hd119054119598_
                                                      _tl119053119600_
                                                      _e119058119603_
                                                      _hd119057119606_
                                                      _tl119056119608_)
                                               (let ((_L119611_
                                                      _hd119057119606_)
                                                     (_L119612_
                                                      _hd119054119598_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119612_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119611_)))
                                                     (___kont128921128922_
                                                      _L119611_
                                                      _L119612_)
                                                     (___match128972128973_
                                                      _e119052119587_
                                                      _hd119051119590_
                                                      _tl119050119592_
                                                      _e119055119595_
                                                      _hd119054119598_
                                                      _tl119053119600_
                                                      _e119058119603_
                                                      _hd119057119606_
                                                      _tl119056119608_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128919128920_))
                                           (let ((_e119052119587_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128919128920_))))
                                             (let ((_tl119050119592_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119052119587_)))
                                                   (_hd119051119590_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119052119587_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119051119590_))
                                                   (let ((_e119055119595_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119051119590_))))
                                                     (let ((_tl119053119600_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119055119595_)))
                                                           (_hd119054119598_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119055119595_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119053119600_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119050119592_))
                       (let ((_e119058119603_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119050119592_))))
                         (let ((_tl119056119608_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119058119603_)))
                               (_hd119057119606_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119058119603_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119056119608_))
                               (___match128950128951_
                                _e119052119587_
                                _hd119051119590_
                                _tl119050119592_
                                _e119055119595_
                                _hd119054119598_
                                _tl119053119600_
                                _e119058119603_
                                _hd119057119606_
                                _tl119056119608_)
                               (let ()
                                 (declare (not safe))
                                 (_g119046119093_)))))
                       (let () (declare (not safe)) (_g119046119093_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119050119592_))
                       (let ((_e119088119106_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119050119592_))))
                         (let ((_tl119086119111_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119088119106_)))
                               (_hd119087119109_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119088119106_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119086119111_))
                               (___kont128927128928_
                                _hd119087119109_
                                _hd119051119590_)
                               (let ()
                                 (declare (not safe))
                                 (_g119046119093_)))))
                       (let () (declare (not safe)) (_g119046119093_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119050119592_))
                                                       (let ((_e119088119106_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119050119592_))))
                 (let ((_tl119086119111_
                        (let () (declare (not safe)) (##cdr _e119088119106_)))
                       (_hd119087119109_
                        (let () (declare (not safe)) (##car _e119088119106_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119086119111_))
                       (___kont128927128928_ _hd119087119109_ _hd119051119590_)
                       (let () (declare (not safe)) (_g119046119093_)))))
               (let () (declare (not safe)) (_g119046119093_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119046119093_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119021119029_))
                             (let ((_hd119026119707_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119021119029_)))
                                   (_tl119027119709_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119021119029_))))
                               (let* ((_hd119712_ _hd119026119707_)
                                      (_rest119714_ _tl119027119709_))
                                 (declare (not safe))
                                 (_K119025119704_ _rest119714_ _hd119712_)))
                             (let ()
                               (declare (not safe))
                               (_else119023119037_))))))))
          (let* ((___stx129011129012_ _stx118877_)
                 (_g118883118910_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129011129012_)))))
            (let ((___kont129013129014_
                   (lambda (_L118970_ _L118971_ _L118972_)
                     (let ((__tmp129452
                            (lambda ()
                              (let ((_hd119009_
                                     (let ((__tmp129453
                                            (let ((__tmp129454
                                                   (lambda (_g119001119004_
                                                            _g119002119006_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g119001119004_
                                                             _g119002119006_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129454
                                                      '()
                                                      _L118971_))))
                                       (declare (not safe))
                                       (_compile-bindings118880_ __tmp129453)))
                                    (_body119010_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L118970_))))
                                (let ((__tmp129455
                                       (let ((__tmp129456
                                              (let ((__tmp129457
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body119010_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd119009_
                                                      __tmp129457))))
                                         (declare (not safe))
                                         (cons _L118972_ __tmp129456))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129455
                                   _stx118877_)))))
                           (__tmp129451
                            (let ((__obj129076
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj129076)
                              __obj129076)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129452
                        gx#current-expander-context
                        __tmp129451))))
                  (___kont129017129018_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118877_)))))
              (let ((___match129038129039_
                     (lambda (_e118890118922_
                              _hd118889118925_
                              _tl118888118927_
                              _e118893118930_
                              _hd118892118933_
                              _tl118891118935_
                              ___splice129015129016_
                              _target118894118938_
                              _tl118896118940_)
                       (letrec ((_loop118897118943_
                                 (lambda (_hd118895118946_ _bind118901118948_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118895118946_))
                                       (let ((_e118898118951_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118895118946_))))
                                         (let ((_lp-tl118900118956_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118898118951_)))
                                               (_lp-hd118899118954_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118898118951_))))
                                           (let ((__tmp129460
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118899118954_
                                                          _bind118901118948_))))
                                             (declare (not safe))
                                             (_loop118897118943_
                                              _lp-tl118900118956_
                                              __tmp129460))))
                                       (let ((_bind118902118959_
                                              (reverse _bind118901118948_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118891118935_))
                                             (let ((_e118905118962_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118891118935_))))
                                               (let ((_tl118903118967_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118905118962_)))
                                                     (_hd118904118965_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118905118962_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118903118967_))
                                                     (let ((_L118970_
                                                            _hd118904118965_)
                                                           (_L118971_
                                                            _bind118902118959_)
                                                           (_L118972_
                                                            _hd118889118925_))
                                                       (if (let ((__tmp129458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129459
                                 (lambda (_g118993118996_ _g118994118998_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118993118996_ _g118994118998_)))))
                            (declare (not safe))
                            (foldr1 __tmp129459 '() _L118971_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129458))
                   (___kont129013129014_ _L118970_ _L118971_ _L118972_)
                   (___kont129017129018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129017129018_))))
                                             (___kont129017129018_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118897118943_ _target118894118938_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129011129012_))
                    (let ((_e118890118922_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129011129012_))))
                      (let ((_tl118888118927_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118890118922_)))
                            (_hd118889118925_
                             (let ()
                               (declare (not safe))
                               (##car _e118890118922_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118888118927_))
                            (let ((_e118893118930_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118888118927_))))
                              (let ((_tl118891118935_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118893118930_)))
                                    (_hd118892118933_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118893118930_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118892118933_))
                                    (let ((___splice129015129016_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118892118933_
                                              '0))))
                                      (let ((_tl118896118940_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129015129016_
                                                '1)))
                                            (_target118894118938_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129015129016_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118896118940_))
                                            (___match129038129039_
                                             _e118890118922_
                                             _hd118889118925_
                                             _tl118888118927_
                                             _e118893118930_
                                             _hd118892118933_
                                             _tl118891118935_
                                             ___splice129015129016_
                                             _target118894118938_
                                             _tl118896118940_)
                                            (___kont129017129018_))))
                                    (___kont129017129018_))))
                            (___kont129017129018_))))
                    (___kont129017129018_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118795_)
        (let* ((___stx129041129042_ _bind118795_)
               (_g118798118815_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129041129042_)))))
          (let ((___kont129043129044_
                 (lambda (_L118851_ _L118852_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118852_))
                       (let ((_$e118868_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118851_))))
                         (if _$e118868_
                             _$e118868_
                             (let ((_$e118871_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118851_))))
                               (if _$e118871_
                                   _$e118871_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118851_))))))
                       '#f)))
                (___kont129045129046_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129041129042_))
                (let ((_e118804118827_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129041129042_))))
                  (let ((_tl118802118832_
                         (let () (declare (not safe)) (##cdr _e118804118827_)))
                        (_hd118803118830_
                         (let ()
                           (declare (not safe))
                           (##car _e118804118827_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118803118830_))
                        (let ((_e118807118835_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118803118830_))))
                          (let ((_tl118805118840_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118807118835_)))
                                (_hd118806118838_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118807118835_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118805118840_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118802118832_))
                                    (let ((_e118810118843_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118802118832_))))
                                      (let ((_tl118808118848_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118810118843_)))
                                            (_hd118809118846_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118810118843_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118808118848_))
                                            (___kont129043129044_
                                             _hd118809118846_
                                             _hd118806118838_)
                                            (___kont129045129046_))))
                                    (___kont129045129046_))
                                (___kont129045129046_))))
                        (___kont129045129046_))))
                (___kont129045129046_))))))))
